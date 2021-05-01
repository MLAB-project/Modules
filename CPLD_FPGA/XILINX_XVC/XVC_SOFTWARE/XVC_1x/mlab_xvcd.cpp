// MLAB Xilinx Virtual Cable Network Server
// ----------------------------------------
//
// (c) miho 2012, 2013 http://www.mlab.cz/PermaLink/XVC_SOFTWARE
//
// This program if free.
//
//
// History:
//
// 1.00 2012_09 Proof of concept (no configuration, not for public release)
// 1.01 2012_09 Added parameter for device selection
// 1.02 2012_12 Error handling and debugged
// 1.03 2012_12 Release version ready to publish
// 1.04 2013_04 Socket Bind Error with explanation (multiple instance of XVC Server)
// 1.05 2013_04 Test FTDI cable during wait for Accept (to stop the server immediately when cable is disconnected)
// 1.06 2013_04 Added support for Linux (thanks to Martin Poviser)
// 1.07 2013_04 Rewritten Host Address function for Linux (function gethostbyname returns 127.0.1.1 on Debian systems)
//              Solved compatibility problems on Linux (FT_SetLatncyTimer requires delay, udev problem with ftdi_sio driver)
// 1.08 2013_06 Added linux x86_64 variant
//
//
// Purpose:
//
//   XILINX development software (ISE, WebPack) supports several types of JTAG programming 
//   cables. Among them there is one particularly interesting. It is Xilinx Virtual Cable
//   which uses (documented) XVC network protocol to send JTAG commands across TCP/IP network.
//   So it is possible to realize own hardware/software and have it directly supported by
//   XILINX development software (both IMPACT and ChipScope).
//
//   This program listens TCP data send by XILINX ISE IMAPACT (or ChipScope) and sends it
//   to the JTAG device (typically FPGA) connected to FTDI USB Chip. You can use ordinary
//   USB/RS232 translator based on FT232R chip or you can use our own module from
//   http://www.mlab.cz/PermaLink/XVC_FT220X
//
//   Target device JTAG port is connected to pins on FTDI USB chip. Program writes to standard
//   output Which pins are used. Program writes what to set in ISE to enable XVC plugin.
//
//
// Environment:
//
//   This is Win32 Console Application and run in WinXP / Win7 / Win8 both 32 and 64 bit.
//
//   Program needs to listen to the network so it is necessary to allow doing so. In Windows
//   firewall configuration enable networking for the exe file.
//       WinXP: run as Administrator c:\WINDOWS\System32\firewall.cpl and add the exe file
//       Win7:  the system asks directly to do so
//
//
// Technology:
//
//   The program uses Windows WINSOCK2 library for network communication
//   and FTDI ftd2xx library for communication with FTDI USB chip.
//   It can be staticly linked to minimize dependencies on libraries.
//   Program requires FTDI drivers installed.
//   Because of the usage of standard libraries you don't need to solve how to sign drivers.
//
//   The program was debug with FT232R and FT220X device.
//   It should work with any similar FTDI USB chip.
//
//   XVC protocol is documented (you have to ask XILINX support to gain access).
//   The program is inspired by the work http://debugmo.de/2012/02/xvcd-the-xilinx-virtual-cable-daemon/
//   Ask Google about Xilinx Virtual Cable.
//
//
// Compilation for Windows:
//
//   MS Visual C++ 2010 Express (free, registration required)
//   Create new empty project for Win32 Console Application and name project mlab_xvcd (to build mlab_xvcd.exe)
//   Header Files   / Add / Existing Items - all .h   files
//   Source Files   / Add / Existing Items - all .cpp files
//   Library Files  / Add / Existing Items - all .lib .h files from lib_win32 directory
//   Select Release version (no debug info)
//   Set static linkage Project Properties / Configuration Release / Configuration Properties 
//      / Code Generation / Runtime Library = Multithreaded (/MT)
//
// Compilation for Linux:
//
//   On Ubuntu 12.04LTS just run the .sh file
//
// Problems:
//
//   Programming of SPI FLASH configuration memory connected to FPGA does not work. No idea why.
//   It does not work for internal FLASH of Spartan XC3SxxAN either.
//
//
// Possible improvements:
//
//   External definition of JTAG pins.
//   Enable Socket Number (to be able to run multiple XVC Servers), now it is constant XVC_TCP_PORT (should be only a default)


// Library Definitions
// -------------------

#undef UNICODE
#define WIN32_LEAN_AND_MEAN

#include "mlab_xvcd.h"													// Program Configuration
#include <stdlib.h>														//	Standard Library (exit, atoi, ...)
#include <stdio.h>														//	Standard IO (printf, ...)
#include <signal.h>														// CTRL+C handling

#ifdef WIN32

#include <windows.h>														// Windows Console Application
#include <winsock2.h>													// Windows WinSock2
#include <ws2tcpip.h>													// Windows WinSock2

// Link with library
#pragma comment (lib, "Ws2_32.lib")
//#pragma comment (lib, "../lib_win32/ftd2xx.lib")				// Add this file to Resources

#else // not WIN32

#include "lib_linux/WinTypes.h"
#include <sys/types.h>
#include <sys/socket.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <netdb.h>
#include <net/if.h>
#include <sys/ioctl.h>
#include <arpa/inet.h>

#endif

#define XVC_RX_BUFLEN				(XVC_JTAG_LEN/8*2+20)		// Length of receive buffer in bytes (command+length+TMSbuffer+TDIbuffer)
#define XVC_TX_BUFLEN				(XVC_JTAG_LEN/8)				// Length of transmit buffer in bytes (TDObuffer)

#ifdef WIN32

typedef int socklen_t;

#else //not WIN32

typedef int SOCKET;

#define SOCKET_ERROR	-1
#define INVALID_SOCKET	-1

void closesocket(int socket)
{
	close(socket);
}

void WSACleanup()
{
}

int WSAGetLastError()
{
	return errno;
}

#endif

// JTAG state machine
// ------------------

// JTAG States
enum
{
	test_logic_reset, run_test_idle,									// Starts from 0

	select_dr_scan, capture_dr, shift_dr,
	exit1_dr, pause_dr, exit2_dr, update_dr,

	select_ir_scan, capture_ir, shift_ir,
	exit1_ir, pause_ir, exit2_ir, update_ir,

	num_states
};


// JTAG State Machine transfer Function
static int jtagStep(int state, int tms)
{
	static const int next_state[num_states][2] =
	{
		/* JTAG State         -->>          New State                   */
		/* -------------------------------------------------------------*/
		/*                          | TMS=0          | TMS=1            */
		/* -------------------------------------------------------------*/
		/* [test_logic_reset] -> */ { run_test_idle,   test_logic_reset },
		/* [run_test_idle]    -> */ { run_test_idle,   select_dr_scan   },
		/* [select_dr_scan]   -> */ { capture_dr,      select_ir_scan   },
		/* [capture_dr]       -> */ { shift_dr,        exit1_dr         },
		/* [shift_dr]         -> */ { shift_dr,        exit1_dr         },
		/* [exit1_dr]         -> */ { pause_dr,        update_dr        },
		/* [pause_dr]         -> */ { pause_dr,        exit2_dr         },
		/* [exit2_dr]         -> */ { shift_dr,        update_dr        },
		/* [update_dr]        -> */ { run_test_idle,   select_dr_scan   },
		/* [select_ir_scan]   -> */ { capture_ir,      test_logic_reset },
		/* [capture_ir]       -> */ { shift_ir,        exit1_ir         },
		/* [shift_ir]         -> */ { shift_ir,        exit1_ir         },
		/* [exit1_ir]         -> */ { pause_ir,        update_ir        },
		/* [pause_ir]         -> */ { pause_ir,        exit2_ir         },
		/* [exit2_ir]         -> */ { shift_ir,        update_ir        },
		/* [update_ir]        -> */ { run_test_idle,   select_dr_scan   }
	};

	return next_state[state][tms];
}


int handleData(SOCKET ClientSocket)
{

	bool seen_tlr = false;
	bool jtagError = false;

	static int jtag_state;

	do
	{
		int iResult;

		// Read Command
		char command[16];
		unsigned int commandLen = 0;

		// Read String terminated by ':'
		do
		{
			iResult = recv(ClientSocket, command+commandLen, 1, 0);
			if (iResult==0)
			{
				printf("\n  Connection Closed\n\n");
				return -1;
			}
			else if (iResult==1)
			{
				commandLen++;
			}
			else
			{
				fprintf(stderr, "Error Reading Command\n");
				return -2;
			}
		}
		while (command[commandLen-1]!=':' && commandLen<sizeof(command)-1 );
		command[commandLen] = char(0);

		if (0==strncmp(command, "shift:", sizeof(command)))
		{
				
		}
		else
		{
			fprintf(stderr, "Invalid Command '%s'\n", command);
			return -2;
		}

		// Read Length (in bits, 32bit integer)
		int len;

		iResult = recv(ClientSocket, (char *)&len, 4, 0);		// TODO: rewrite for multiplatform use 
		if (iResult==0)
		{
			printf("\n  Connection Closed\n\n");
			return -1;
		}
		if (iResult != 4)
		{
			fprintf(stderr, "Reading Length Failed\n");
			return -2;
		}

		char buffer[2048];

		// Read Data (data string for TMS and TDI)
		unsigned int nr_bytes = (len + 7) / 8;
		if (nr_bytes * 2 > sizeof(buffer))
		{
			fprintf(stderr, "Buffer Size Exceeded\n");
			return -2;
		}

		unsigned int iReceivedBytes=0;
		while (iReceivedBytes<nr_bytes * 2)
		{
			iResult = recv(ClientSocket, buffer+iReceivedBytes, nr_bytes * 2 - iReceivedBytes, 0);
			if (iResult==0)
			{
				printf("\n  Connection Closed\n\n");
				return -1;
			}
			if (iResult<=0)
			{
				fprintf(stderr, "Reading Data Failed %d %d\n", iResult, nr_bytes * 2);
				return -2;
			}
			iReceivedBytes += iResult;
		}

		char result[1024];
		memset(result, 0, nr_bytes);

		// Deal with JTAG

		// Only allow exiting if the state is rti and the IR
		// has the default value (IDCODE) by going through test_logic_reset.
		// As soon as going through capture_dr or capture_ir no exit is
		// allowed as this will change DR/IR.
		seen_tlr = (seen_tlr || jtag_state == test_logic_reset) && (jtag_state != capture_dr) && (jtag_state != capture_ir);
		
		// Due to a weird bug(??) xilinx impacts goes through another "capture_ir"/"capture_dr" cycle after
		// reading IR/DR which unfortunately sets IR to the read-out IR value.
		// Just ignore these transactions.
		if ((jtag_state == exit1_ir && len == 5 && buffer[0] == 0x17) || (jtag_state == exit1_dr && len == 4 && buffer[0] == 0x0b))
		{
				// printf("Ignoring Bogus jtag State movement at jtag_state %d\n", jtag_state);
		}
		else
		{
			for (int i = 0; i < len; ++i)
			{
				//
				// Do the actual cycle.
				//
				int tms = !!(buffer[i/8] & (1<<(i&7)));
				//
				// Track the state.
				//
				jtag_state = jtagStep(jtag_state, tms);
			}
			if (jtagScan((unsigned char *) buffer,  (unsigned char *) buffer + nr_bytes, (unsigned char *) result, len) < 0)
			{
				//fprintf(stderr, "jtagScan failed\n");
				// Can't stop now, have to sent (any) answer not to hung the IMPACT
				jtagError = true;
			}
		}

		// Send the Ansver
		iResult = send(ClientSocket, result, nr_bytes, 0 );
		if (iResult == SOCKET_ERROR)
		{
			printf("Send Failed with Error: %d\n", WSAGetLastError());
			closesocket(ClientSocket);
			WSACleanup();
			return -2;
		}
		// printf("Bytes Sent: %d\n", iSendResult);
		// printf("jtag state %d\n", jtag_state);
	}
	while (!(seen_tlr && jtag_state == run_test_idle));

	return jtagError ? -2 : 0;
}


// Stop Handler - switch JTAG port off and stop program
void stopHandler(int)
{
	jtagClosePort();
	exit(1);
}


// Print help and stop program with error
void Help(char *progName)
{
	fprintf(stderr, "Bad Parameters\n");
	fprintf(stderr, "\n");
	fprintf(stderr, "Usage: %s [arg]\n", progName);
	fprintf(stderr, "\n");
	fprintf(stderr, "  Where [arg] is one of: \n");
	fprintf(stderr, "    -d Description      Fing FTDI device by Description\n");
	fprintf(stderr, "    -l Location         Fing FTDI device by Loaction\n");
	fprintf(stderr, "    -s Serial_number    Fing FTDI device by it's SN\n");
	fprintf(stderr, "    -n Number           Use N-th FTDI device\n");
	fprintf(stderr, "  The first FTDI device is used if no argument\n");
	exit(2);
}


int main(int argc, char *argv[])
{
	// Variables
	bool verbose = true;

	// Program Info
	printf("\n");
	printf("Xilinx Virtual Cable Network Server\n");
	printf("===================================\n");
	printf("(c) miho " YEAR " v " VERSION "\n\n");

	// Get program name
	char *cp;
	char *progName;
	cp = argv[0];
	progName=cp;
	while (cp[0]!='\0')
	{
		if (cp[0]=='/' || cp[0]=='\\')
			progName=cp+1;
		cp++;
	}

	// Process command line params
	char *findDeviceByStr = 0;			// String parameter
	int findDeviceBy = 0;				// What does the string means

	if (argc>1)
	{
		if (argc==3)
		{
			findDeviceByStr = argv[2];
			if (strcmp(argv[1], "-d")==0)
			{
				findDeviceBy = OPEN_BY_DESCRIPTION;
			}
			else if (strcmp(argv[1], "-l")==0)
			{
				findDeviceBy = OPEN_BY_LOCATION;
			}
			else if (strcmp(argv[1], "-s")==0)
			{
				findDeviceBy = OPEN_BY_SERIAL_NUMBER;
			}
			else if (strcmp(argv[1], "-n")==0)
			{
				findDeviceBy = 0;
			}
			else
			{
				Help(progName);
			}
		}
		else
		{
			Help(progName);
		}
	}
	else
	{
		// Empty String - find device by number and number is empty
		findDeviceBy = 0;
		findDeviceByStr = (char *)"";
	}

	// Find, Init and Open FTDI USB Chip
	if (jtagOpenPort(findDeviceBy, findDeviceByStr)<0) {
		// No Device Found
		fprintf(stderr, "ERROR: No Device Found\n");
		return -1;
	}

	// Signal Handler (for CRTL+C)
	signal(SIGINT,  &stopHandler);

	printf("Starting Network Server\n");
	int iResult;

	SOCKET ListenSocket = INVALID_SOCKET;
	SOCKET ClientSocket = INVALID_SOCKET;

#ifdef WIN32
	// Initialize Winsock
	WSADATA wsaData;
	iResult = WSAStartup(MAKEWORD(2,2), &wsaData);
	if (iResult != 0)
	{
		fprintf(stderr, "WSAStartup failed with error: %d\n", iResult);
		jtagClosePort();
		return -2;
	}
#endif

	// Display HostName
	char sMyName[255];
	gethostname(sMyName, sizeof(sMyName));
	printf("  Host Name         %s\n", sMyName);

	// Display Address
#ifdef WIN32
	hostent * pHostInfo;
	pHostInfo = gethostbyname(sMyName);
	printf("  Network Name      %s\n", pHostInfo->h_name);
	if (pHostInfo->h_length>0 && pHostInfo->h_length<=16)
	{
		printf("  Host Address      ");
		for (int i=0; i<pHostInfo->h_length-1; i++)
		{
			printf("%d.", (unsigned char)pHostInfo->h_addr_list[0][i]);
		}
		printf("%d\n", (unsigned char)pHostInfo->h_addr_list[0][pHostInfo->h_length-1]);
	}
#else
	int TempSocket;
	struct ifreq ifreqs[20];
	struct ifconf ic;

	ic.ifc_len = sizeof ifreqs;
	ic.ifc_req = ifreqs;

	TempSocket = socket(AF_INET, SOCK_DGRAM, 0);
	if (TempSocket < 0) {
		perror("socket");
		return -2;
	}

	if (ioctl(TempSocket, SIOCGIFCONF, &ic) < 0) {
		perror("SIOCGIFCONF");
		return -2;
	}

	for (int i = 0; i < ic.ifc_len/sizeof(struct ifreq); ++i)
	{
		if (ifreqs[i].ifr_name[0]!='l')// remove lo
			printf("  Host Address      %s: %s\n",
			ifreqs[i].ifr_name,
			inet_ntoa(((struct sockaddr_in*)&ifreqs[i].ifr_addr)->sin_addr));
	}
#endif

	// Create Protocol Structure
	struct addrinfo hints;
	memset(&hints, 0, sizeof(hints));
	hints.ai_family   = AF_INET;			// IP6
	hints.ai_socktype = SOCK_STREAM;		// Reliable two-way connection
	hints.ai_protocol = IPPROTO_TCP;		// Protocol TCP
	hints.ai_flags    = AI_PASSIVE;

	// Resolve the server address and port (allocate structure "result")
	struct addrinfo *result = NULL;
	iResult = getaddrinfo(NULL, XVC_TCP_PORT, &hints, &result);
	if ( iResult != 0 )
	{
		fprintf(stderr, "getaddrinfo failed with error: %d\n", iResult);
		WSACleanup();
		jtagClosePort();
		return -2;
	}

	// Create a SOCKET
	ListenSocket = socket(result->ai_family, result->ai_socktype, result->ai_protocol);
	if (ListenSocket == INVALID_SOCKET)
	{
		fprintf(stderr, "socket failed with error: %d\n", WSAGetLastError());
		freeaddrinfo(result);
		WSACleanup();
		jtagClosePort();
		return -2;
	}

	// Bind the SOCKED (assign the address)
	iResult = bind(ListenSocket, result->ai_addr, (int)result->ai_addrlen);
	if (iResult == SOCKET_ERROR)
	{
		int LastError=WSAGetLastError();
		fprintf(stderr, "Bind failed with error: %d\n", LastError);
#ifdef WIN32
		if (LastError==WSAEADDRINUSE) 
#else
		if (LastError==EADDRINUSE)
#endif
			fprintf(stderr, "Trying to start second instance of XVC Server?\n");
		freeaddrinfo(result);
		closesocket(ListenSocket);
		WSACleanup();
		jtagClosePort();
		return -2;
	}

	if (verbose)
	{
		printf("  Bound Socket      %s\n", XVC_TCP_PORT);
	}

	// Help for user
	printf("  Set in IMPACT     xilinx_xvc host=%s:%s disableversioncheck=true\n", sMyName, XVC_TCP_PORT);

	freeaddrinfo(result);

	// Listen SOCKET
	iResult = listen(ListenSocket, SOMAXCONN);
	if (iResult == SOCKET_ERROR)
	{
		fprintf(stderr, "listen failed with error: %d\n", WSAGetLastError());
		closesocket(ListenSocket);
		WSACleanup();
		jtagClosePort();
		return -2;
	}

	printf("\n");

	do
	{
		printf("  Listen\n");
		jtagSetLED(true);

		// Set ListenSocket to non-blocking mode
		// We need during waiting for Accept to detect FTDI disconnect

#ifdef WIN32
		u_long iMode = 1;
		iResult = ioctlsocket(ListenSocket, FIONBIO, &iMode);
		if (iResult != NO_ERROR)
		{
			fprintf(stderr, "ioctlsocket failed with error: %ld\n", iResult);
			WSACleanup();
			jtagClosePort();
			return -2;
		}
#else
		iResult = fcntl(ListenSocket, F_GETFL, 0);
		if (iResult < 0 || fcntl(ListenSocket, F_SETFL, iResult | O_NONBLOCK) < 0)
		{
			fprintf(stderr, "fcntl failed with error: %d\n", errno);
			jtagClosePort();
			return -2;
		}
#endif

		// Accept a client SOCKET (wait for Accept)
		sockaddr ClientSocetAddr;
		socklen_t ClientSocetAddrLen = sizeof(sockaddr);
		do 
		{
			// Try Accept (non-blocking)
			ClientSocket = accept(ListenSocket, &ClientSocetAddr, &ClientSocetAddrLen);
			if (ClientSocket == INVALID_SOCKET)
			{
				// Accept Error
#ifdef WIN32
				if (WSAGetLastError() != WSAEWOULDBLOCK)
#else
				if (WSAGetLastError() != EAGAIN && WSAGetLastError() != EWOULDBLOCK)
#endif
				{
					fprintf(stderr, "accept failed with error: %d\n", WSAGetLastError());
					closesocket(ListenSocket);
					WSACleanup();
					jtagClosePort();
					return -2;
				}
				// Not yet Accepted
				{
					// Check FTDI
					if (!CheckCable())
					{
						fprintf(stderr, "XVC Cable unexpectedly disconnected\n");
						closesocket(ListenSocket);
						WSACleanup();
						jtagClosePort();
						return -2;
					}
					// Sleep some time (do not eat CPU time for nothong)
#ifdef WIN32
					Sleep(100);	//ms
#else
					usleep(100000); //us
#endif
				}
			}
		}
		while (ClientSocket == INVALID_SOCKET);

		// Set (Accepted) Socket to blocking mode

#ifdef WIN32
		iMode = 0;
		iResult = ioctlsocket(ClientSocket, FIONBIO, &iMode);
		if (iResult != NO_ERROR)
		{
			fprintf(stderr, "ioctlsocket failed with error: %ld\n", iResult);
			WSACleanup();
			jtagClosePort();
			return -2;
		}
#else
		iResult = fcntl(ListenSocket, F_GETFL, 0);
		if (iResult < 0 || fcntl(ListenSocket, F_SETFL, iResult & ~O_NONBLOCK) < 0)
		{
			fprintf(stderr, "fcntl failed with error: %d\n", errno);
			jtagClosePort();
			return -2;
		}
#endif

		// Print Accepted + Address
		printf("  Accepted          ");
		jtagSetLED(false);
		for (int i=2; i<2+4-1; i++)
		{
			printf("%d.", (unsigned char)ClientSocetAddr.sa_data[i]);
		}
		printf("%d:%d\n", (unsigned char)ClientSocetAddr.sa_data[2+4-1], (unsigned char)ClientSocetAddr.sa_data[0]*256+(unsigned char)ClientSocetAddr.sa_data[1]);

		// Process Data until the peer shuts down the connection
		int Cnt = 0;
		printf("  Handle Data       ");
		do
		{
			iResult = handleData(ClientSocket);
			if (iResult>=0)
			{
				printf(".");
				fflush(stdout);
				Cnt++;
				if (Cnt>40)
				{
					Cnt = 0;
					printf("\n                    ");
				}
			}
		}
		while (iResult >= 0);

		// Connection Closed by peer
		if (iResult==-1)
		{
			// JTAG port
			jtagSetIdle();
		}

		// Error - shutdown the connection
		if (iResult==-2)
		{
			fprintf(stderr, "  Disconnect\n");
#ifdef WIN32
			iResult = shutdown(ClientSocket, SD_SEND);
#else
			iResult = shutdown(ClientSocket, SHUT_WR);
#endif
			if (iResult == SOCKET_ERROR)
			{
				fprintf(stderr, "shutdown failed with error: %d\n", WSAGetLastError());
			}
			iResult=-2;	// Error
		}

		// cleanup
		closesocket(ClientSocket);

	}
	// If not Error Listen Again
	while (iResult!=-2);

	// cleanup
	closesocket(ListenSocket);
	WSACleanup();
	jtagClosePort();

	return 1;
}

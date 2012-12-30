// MLAB Xilinx Virtual Cable Network Server
// ----------------------------------------
//
// (c) miho 2012 http://www.mlab.cz/PermaLink/XVC_SOFTWARE
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
// Translation:
//
//   MS Visual C++ 2010 Express (free, registration required)
//   Create new empty project for Win32 Console Application and name project mlab_xvcd (to build mlab_xvcd.exe)
//   Header Files   / Add / Existing Items - all .h   files
//   Resource Files / Add / Existing Items - all .lib files
//   Source Files   / Add / Existing Items - all .cpp files
//   Select Release version (no debug info)
//   Set static linkage Project Properties / Configuration Release / Configuration Properties 
//      / Code Generation / Runtime Library = Multithreaded (/MT)
//
//
// Problems:
//
//   Programming of SPI FLASH configuration memory connected to FPGA does not work. No idea why.
//   It does not work for internal FLASH of Spartan XC3SxxAN either.
//
//
// Possible improvements:
//
//   Linux version (Winsock library differs).
//   External definition of JTAG pins.


// Library Definitions
// -------------------

#undef UNICODE
#define WIN32_LEAN_AND_MEAN

#include "mlab_xvcd.h"													// Program Configuration
#include <windows.h>														// Windows Console Application
#include <winsock2.h>													// Windows WinSock2
#include <ws2tcpip.h>													// Windows WinSock2
#include <stdlib.h>														//	Standard Library (exit, atoi, ...)
#include <stdio.h>														//	Standard IO (printf, ...)
#include <signal.h>														// CTRL+C handling

// Link with library
#pragma comment (lib, "Ws2_32.lib")

#define XVC_RX_BUFLEN				(XVC_JTAG_LEN/8*2+20)		// Length of receive buffer in bytes (command+length+TMSbuffer+TDIbuffer)
#define XVC_TX_BUFLEN				(XVC_JTAG_LEN/8)				// Length of transmit buffer in bytes (TDObuffer)


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
		int commandLen = 0;

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

		iResult = recv(ClientSocket, (char *)&len, 4, 0);		// pøepsat pøenositelnì
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
		int nr_bytes = (len + 7) / 8;
		if (nr_bytes * 2 > sizeof(buffer))
		{
			fprintf(stderr, "Buffer Size Exceeded\n");
			return -2;
		}

		int iReceivedBytes=0;
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
void stopHandler(int sig)
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


int __cdecl main(int argc, char *argv[])
{
	// Variables
	bool verbose = true;

	// Program Info
	printf("\n");
	printf("Xilinx Virtual Cable Network Server\n");
	printf("===================================\n");
	printf("(c) miho 2012 v " VERSION "\n\n");

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
		findDeviceByStr = "";
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
	WSADATA wsaData;
	int iResult;

	SOCKET ListenSocket = INVALID_SOCKET;
	SOCKET ClientSocket = INVALID_SOCKET;

	// Initialize Winsock
	iResult = WSAStartup(MAKEWORD(2,2), &wsaData);
	if (iResult != 0)
	{
		fprintf(stderr, "WSAStartup failed with error: %d\n", iResult);
		jtagClosePort();
		return -2;
	}

	// Display HostName and Address
	char sMyName[255];
	gethostname(sMyName, sizeof(sMyName));
	printf("  Host Name         %s\n", sMyName);
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

	// Create Protocol Structure
	struct addrinfo hints;
	ZeroMemory(&hints, sizeof(hints));
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
		fprintf(stderr, "socket failed with error: %ld\n", WSAGetLastError());
		freeaddrinfo(result);
		WSACleanup();
		jtagClosePort();
		return -2;
	}

	// Bind the SOCKED (assign the address)
	iResult = bind(ListenSocket, result->ai_addr, (int)result->ai_addrlen);
	if (iResult == SOCKET_ERROR)
	{
		fprintf(stderr, "Bind failed with error: %d\n", WSAGetLastError());
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
		printf("listen failed with error: %d\n", WSAGetLastError());
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

		// Accept a client SOCKET
		sockaddr ClientSocetAddr;
		int ClientSocetAddrLen = sizeof(sockaddr);
		ClientSocket = accept(ListenSocket, &ClientSocetAddr, &ClientSocetAddrLen);
		if (ClientSocket == INVALID_SOCKET)
		{
			printf("accept failed with error: %d\n", WSAGetLastError());
			closesocket(ListenSocket);
			WSACleanup();
			jtagClosePort();
			return -2;
		}

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
			iResult = shutdown(ClientSocket, SD_SEND);
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

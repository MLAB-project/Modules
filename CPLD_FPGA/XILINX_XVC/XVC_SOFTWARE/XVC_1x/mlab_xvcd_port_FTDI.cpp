// Include FTDI library
#include "mlab_xvcd_port_FTDI.h"

#ifdef WIN32

#include <windows.h>														// Windows Console Application (Sleep)

#else

#include <unistd.h>				// sleep

#endif

// JTAG Output Pin Mask
#define IO_OUTPUT_MASK				(PORT_TCK|PORT_TDI|PORT_TMS|PORT_LED)		// Mask for all Output Pins


// Global Variables
FT_HANDLE		ftHandle;											// Handle for FTDI device
bool				ftHandleValid	=	false;						// Valid Handle
unsigned char	PinStatus		=	0;								//	Status of DBUS pins
unsigned char	LedMask			=	0;								//	LED Mask for DBUS data transfer


// Convert string to int (both decimal and hex string)
int atoiEx(char *s)
{
	if (s[0]=='0' && (s[1]=='x' || s[1]=='X'))
	{
		// Hex Value
		int i;
		#pragma warning(disable: 4996) // Disable MS warning about scanf
		sscanf(s, "%x", &i);
		return i;
	}
	else
	{
		// Decimal Value
		return atoi(s);
	}
}


// Print FTDI Pin Names (from mask value)
void jtagPrintPinNames(int pinMask)
{
	// 16bit (MSB is CBUS, LSB is DBUS)
	int bit=15;
	bool useDelimiter=false;

	do
	{ 
		int mask = 1 << bit;
		if (pinMask & mask)
		{
			if (useDelimiter)
			{
				printf("+");
			}
			if (bit > 7)
			{
				printf("CBUS%c", '0' + bit - 8);
			}
			else
			{
				printf("DBUS%c", '0' + bit);
				switch (mask)
				{
					case FTDI_TXD: printf("(TXD)"); break;
					case FTDI_RXD: printf("(RXD)"); break;
					case FTDI_RTS: printf("(RTS)"); break;
					case FTDI_CTS: printf("(CTS)"); break;
					case FTDI_DTR: printf("(DTR)"); break;
					case FTDI_DSR: printf("(DSR)"); break;
					case FTDI_DCD: printf("(DCD)"); break;
					case FTDI_RI:  printf("(RI) "); break;
				}
			}
			useDelimiter = true;
		}
	}
	while (bit-- > 0);
}


// Verify pin usage
void jtagCheckPinConfig()
{
	// Check CBUS usage
	if ( PORT_TCK > 0x00FF )
		fprintf(stderr, "\nFTDI: INTERNAL ERROR: TCK can't use CBUS signal"), exit(2);
	if ( PORT_TCK == 0 )
		fprintf(stderr, "\nFTDI: INTERNAL ERROR: TCK not defined"), exit(2);
	
	if ( PORT_TDI > 0x00FF )
		fprintf(stderr, "\nFTDI: INTERNAL ERROR: TDI can't use CBUS signal"), exit(2);
	if ( PORT_TDI == 0 )
		fprintf(stderr, "\nFTDI: INTERNAL ERROR: TDI not defined"), exit(2);

	if ( PORT_TDO > 0x00FF )
		fprintf(stderr, "\nFTDI: INTERNAL ERROR: TDO can't use CBUS signal"), exit(2);
	if ( PORT_TDO == 0 )
		fprintf(stderr, "\nFTDI: INTERNAL ERROR: TDO not defined"), exit(2);

	if ( PORT_TMS > 0x00FF)
		fprintf(stderr, "\nFTDI: INTERNAL ERROR: TMS can't use CBUS signal"), exit(2);
	if ( PORT_TMS == 0 )
		fprintf(stderr, "\nFTDI: INTERNAL ERROR: TMS not defined"), exit(2);

	if ( PORT_LED > 0x0FFF)
		fprintf(stderr, "\nFTDI: INTERNAL ERROR: LED can't use CBUS signal > 3"), exit(2);
}


// Print JTAG Pin Assignment
void jtagPrintPinConfig()
{
	// Print pin masks human readable
	printf("  JTAG Port Pins    "); printf("TCK->"); jtagPrintPinNames(PORT_TCK); printf("\n");
	printf("                    "); printf("TDI->"); jtagPrintPinNames(PORT_TDI); printf("\n");
	printf("                    "); printf("TDO->"); jtagPrintPinNames(PORT_TDO); printf("\n");
	printf("                    "); printf("TMS->"); jtagPrintPinNames(PORT_TMS); printf("\n");
	printf("                    "); printf("LED->"); jtagPrintPinNames(PORT_LED); printf("\n");
}


// Connect to FTDI driver
int jtagOpenPort(int findDeviceBy, char *findDeviceByStr)
{
	// Enumerate FTDI Devices
	// ----------------------

	FT_STATUS ftStatus;

	// Print Library Version
	printf("FTDI Connect\n");
	DWORD dwLibraryVer;
	ftStatus = FT_GetLibraryVersion(&dwLibraryVer);
	if (ftStatus == FT_OK)
		printf("  Library Version   0x%x\n", dwLibraryVer);
	else
		fprintf(stderr, "\nFTDI: Error Reading Library Version\n");

	// Create Device Information List
	DWORD numDevs = 0;
	ftStatus = FT_CreateDeviceInfoList(&numDevs);
	if (ftStatus == FT_OK)
		printf("  Devices Found     %d\n", numDevs);
	else
		printf("  No FTDI Device Found\n");

	if (numDevs==0)
		return -1;

	// Print Config Info
	jtagPrintPinConfig();
	jtagCheckPinConfig();
	printf("\n");

	// List All FTDI Devices
	FT_HANDLE ftHandleTemp;
	DWORD Flags;
	DWORD ID;
	DWORD Type;
	DWORD LocId;
	char SerialNumber[16];
	char Description[64];
	for (DWORD i=0; i<numDevs; i++)
	{
		ftStatus = FT_GetDeviceInfoDetail(i, &Flags, &Type, &ID, &LocId, SerialNumber, Description, &ftHandleTemp);
		if (ftStatus == FT_OK)
		{
			printf("Device %d\n", i);
			if (Flags & FT_FLAGS_OPENED)
			{
				printf("  Description       Device is used by another process\n");
			}
			else
			{
				printf("  Description       \"%s\"\n", Description);
				printf("  SerialNumber      \"%s\"\n", SerialNumber);
				//printf("  Flags             0x%x\n",   Flags);
				//printf("  Type              0x%x\n",   Type);
				//printf("  ID                0x%x\n",   ID);
				printf("  Location          0x%x\n", LocId);
			}
			printf("\n");
		}
	}

	// Select one Device and Open It
	unsigned int selectedDeviceIndex = 0;
	if (findDeviceBy==0)
	{
		// Select by Device Number
		selectedDeviceIndex = atoiEx(findDeviceByStr);
		if (numDevs<=selectedDeviceIndex)
		{
			fprintf(stderr, "  There is no Device Number %d\n\n", selectedDeviceIndex);
			return -1;
		}		
		// Open device
		ftStatus = FT_Open(selectedDeviceIndex, &ftHandle);
	}
	else
	{
		// Select by Description / Serial Number / Location
		if (findDeviceBy==FT_OPEN_BY_LOCATION)
		{
			// Open device (location is number, not string)
			long int findDeviceByInt = atoiEx(findDeviceByStr);
			ftStatus = FT_OpenEx((void*)findDeviceByInt, findDeviceBy, &ftHandle);
		}
		else
		{
			ftStatus = FT_OpenEx(findDeviceByStr, findDeviceBy, &ftHandle);
		}
	}

	// Check Status
	if (ftStatus == FT_OK)
	{
		ftHandleValid = true;
		//printf("  FTDI Device Opened\n");
	}
	else
	{
		fprintf(stderr, "  Can't Open FTDI Device (error code %d)\n\n", ftStatus);
		return -1;
	}

	// Selected Device
	ftStatus = FT_GetDeviceInfo(ftHandle, &Type, &ID, SerialNumber, Description, 0);
	if (ftStatus == FT_OK)
	{
		printf("Selected Device\n");
		printf("  Description       \"%s\"\n", Description);
		printf("  SerialNumber      \"%s\"\n", SerialNumber);
		//printf("  Type              0x%x\n",   Type);
		//printf("  ID                0x%x\n",   ID);
	}

	// Get Driver Version
	DWORD dwDriverVer;
	ftStatus = FT_GetDriverVersion(ftHandle, &dwDriverVer);
	if (ftStatus == FT_OK)
	{
		printf("  Device Driver Ver 0x%x\n", dwDriverVer);
	}
	else
	{
		fprintf(stderr, "FTDI: Error Reading Driver Version\n");
	}

	// Set BitBang Mode
	ftStatus = FT_SetBitMode(ftHandle, (UCHAR)(0xFF & IO_OUTPUT_MASK), FT_BITMODE_SYNC_BITBANG);		//FT_BITMODE_SYNC_BITBANG / FT_BITMODE_ASYNC_BITBANG
	if (ftStatus == FT_OK)
	{
		// printf("Set BitBang Mode\n");
	}
	else
	{
		fprintf(stderr, "FTDI: Set BitBang Mode Failed %d\n", ftStatus);
	}

	// Set Baud Rate
	ftStatus = FT_SetBaudRate(ftHandle, BAUD_RATE);
	if (ftStatus == FT_OK)
	{
		printf("  Baud Rate         %d\n", BAUD_RATE);
	}
	else
	{
		fprintf(stderr, "FTDI: Set Baud Rate Failed %d\n", ftStatus);
	}

	ftStatus = FT_Purge(ftHandle, FT_PURGE_RX | FT_PURGE_TX); // Purge both Rx and Tx buffers
	if (ftStatus == FT_OK)
	{
		// printf("Purge \n");
	}
	else
	{
		fprintf(stderr, "FTDI: FT_Purge failed %d\n", ftStatus);
	}

	ftStatus = FT_SetLatencyTimer(ftHandle, USB_LATENCY);	// Latency in ms
	if (ftStatus == FT_OK)
	{
		printf("  USB Latency       %d\n", USB_LATENCY);
	}
	else
	{
		fprintf(stderr, "FTDI: Set USB Latency Timer Failed %d\n", ftStatus);
	}

	// Fix (without this delay the next FT_Read hang for ever)
	// My Linux i5 notebook requires at least 2500us
#ifdef WIN32
	Sleep(10);	//ms
#else
	usleep(10000); //us
#endif

	printf("\n");
	return 0;
}


// Enable or Disable Activity LED
void jtagSetLED(bool LedEnable)
{
	// DBUS Connected LED (BitBang Mode)
	LedMask = LedEnable ? (0xFF & PORT_LED) : 0;	// Set mask for jtagScan function
	if (PORT_LED & 0xFF)
	{
		// Set / Reset LED Pin
		DWORD BytesWritten;
		DWORD BytesReceived;
		unsigned char DataOut = LedMask | (PinStatus & ~PORT_LED);	//	Preserve PinStatus
		unsigned char Dummy;
		FT_Write(ftHandle, &DataOut, 1, &BytesWritten );	// Send 1 byte
		FT_Read (ftHandle, &Dummy,   1, &BytesReceived);	// Read 1 byte
	}

	// CBUS Connected LED (BitBang Mode) 1 and 0 state of the port
	const unsigned char On  = ( ((PORT_LED & 0x0F00) >> 4) | ((PORT_LED & 0x0F00) >> 8) );
	const unsigned char Off = ( ((PORT_LED & 0x0F00) >> 4)                                );

	if (On)
	{
		// Set / Reset LED Pin
		FT_SetBitMode(ftHandle, LedEnable ? On : Off, FT_BITMODE_CBUS_BITBANG);

		// Return to used Mode
		FT_SetBitMode(ftHandle, (UCHAR)(0xFF & IO_OUTPUT_MASK), FT_BITMODE_SYNC_BITBANG);		//FT_BITMODE_SYNC_BITBANG / FT_BITMODE_ASYNC_BITBANG
	}
}


// Set port to Idle state
void jtagSetIdle()
{
	char b = 0;		// Idle State for JTAG pins
	DWORD BytesWritten;
	DWORD BytesReceived;

	// Write (idle state of pins)
	FT_Write(ftHandle, &b, 1, &BytesWritten);
	// Read (not to left data in input fifo)
	FT_Read(ftHandle, &b, 1, &BytesReceived);
}


// Close FTDI connection
int jtagClosePort()
{
	if (ftHandleValid)
	{
		jtagSetLED(false);
		// Switch Off the Outputs
		FT_Purge(ftHandle, FT_PURGE_RX | FT_PURGE_TX); // Purge both Rx and Tx buffers
		FT_SetBitMode(ftHandle, 0, FT_BITMODE_SYNC_BITBANG);
		// Close FTDI Lib
		FT_Close(ftHandle);
		ftHandleValid = false;
	}
	return 0;
}


// Send data to JTAG port and bring returned data
int jtagScan(const unsigned char *TMS, const unsigned char *TDI, unsigned char *TDO, unsigned int bits)
{
	FT_STATUS ftStatus;
	DWORD BytesWritten;
	DWORD BytesReceived;
	unsigned int r, t;

	// Decompose TDI and TMS byte array to raw bitstream
	//(1 TDI bit + 1 TMS bit --> 1 byte + 1 byte with TCK)
	unsigned char buffer[16384];
	if (bits > sizeof(buffer)/2)
	{
		fprintf(stderr, "\n  FTDI: Out of Buffer Space for %d bits\n", bits);
		return -1;
	}

	// Switch LED On
	jtagSetLED(true);

	// Prepare transmit data to buffer
	for (unsigned int i = 0; i < bits; ++i)
	{
		unsigned char v = 0 | LedMask;	// LED On / Off (on DBUS)
		if (TMS[i/8] & (1<<(i&7)))
		{
			v |= PORT_TMS;
			// printf("T");
		}	
		else
		{
			// printf("t");
		}
		if (TDI[i/8] & (1<<(i&7)))
		{
			v |= PORT_TDI;
			// printf("|");
		}
		else
		{
			// printf(".");
		}
		buffer[i * 2 + 0] = v;
		buffer[i * 2 + 1] = v | PORT_TCK;
	}
	PinStatus = buffer[bits*2-1];
	// printf("\n");

	// Send data to FTDI
	r = 0;
	while (r < bits * 2)
	{
		t = bits * 2 - r;
		if (t > FTDI_MAX_WRITESIZE)
		{
			t = FTDI_MAX_WRITESIZE;
		}
		
		// printf("writing %d bytes to FTDI\n", t);
		ftStatus = FT_Write(ftHandle, buffer+r, t, &BytesWritten);
		if (ftStatus != FT_OK)
		{
				fprintf(stderr, "\n  FTDI: Error Writing\n");
				return -2;
		}

		unsigned int i = 0;
		
		while (i < t)
		{
			FT_SetTimeouts(ftHandle, 5000, 0);	// timeout 5 sec
			ftStatus = FT_Read(ftHandle, buffer+r+i, t-i, &BytesReceived);
			if (ftStatus == FT_OK)
			{
				if (BytesReceived == t-i)
				{
					// FT_Read OK
					// printf("Read from FTDI %d bytes", BytesReceived);
				}
				else
				{
					// FT_Read Timeout
					fprintf(stderr, "\n  FTDI: Read Timeout\n");
					return -2;
				}
			}
			else
			{
				fprintf(stderr, "\n  FTDI: Error Reading\n");// Error
				return -2;
			}

			i += BytesReceived;
		}
		
		r += t;
	}

	// Pack TDO bitstream from receive buffer to byte array
	memset(TDO, 0, (bits + 7) / 8);
	
	for (unsigned int i = 0; i < bits; ++i)
	{
		if (buffer[i * 2 + 1] & PORT_TDO)
		{
			TDO[i/8] |= 1 << (i&7);
			// printf("H");
		}
		else
		{
			// printf("L");
		}
	}
	// printf("\n");
	// printf(" Bits %d ", bit_counter);

	// Switch LED Off
	jtagSetLED(false);

	return 0;
}

// Check if Cable is still connected and accesible
// True is o.k.
bool CheckCable()
{
	FT_STATUS ftStatus;

	DWORD lpdwAmountInRxQueue, lpdwAmountInTxQueue, lpdwEventStatus;

	ftStatus = FT_GetStatus(ftHandle, &lpdwAmountInRxQueue, &lpdwAmountInTxQueue, &lpdwEventStatus);
	return (ftStatus==FT_OK);
}

#ifndef MLAB_XVCD_PORT_FTDI_H
#define MLAB_XVCD_PORT_FTDI_H


// Pin Defs
// --------

// FTDI Pin Mask Definitions (valid for FT232R)
#define DBUS0							0x0001							// Bit 0 Data Bus
#define DBUS1							0x0002							// Bit 1
#define DBUS2							0x0004							// Bit 2
#define DBUS3							0x0008							// Bit 3
#define DBUS4							0x0010							// Bit 4
#define DBUS5							0x0020							// Bit 5
#define DBUS6							0x0040							// Bit 6
#define DBUS7							0x0080							// Bit 7

#define CBUS0							0x0100							// Bit 0 Control Bus
#define CBUS1							0x0200							// Bit 1
#define CBUS2							0x0400							// Bit 2
#define CBUS3							0x0800							// Bit 3

#define FTDI_TXD						DBUS0								// Bit 0 RS232 Signal Alias
#define FTDI_RXD						DBUS1								// Bit 1
#define FTDI_RTS						DBUS2								// Bit 2
#define FTDI_CTS						DBUS3								// Bit 3
#define FTDI_DTR						DBUS4								// Bit 4
#define FTDI_DSR						DBUS5								// Bit 5
#define FTDI_DCD						DBUS6								// Bit 6
#define FTDI_RI						DBUS7								// Bit 7


// Includes
// --------
#undef UNICODE
#define WIN32_LEAN_AND_MEAN

#include <stdlib.h>														//	Standard Library (exit, atoi, ...)
#include <stdio.h>														//	Standard IO (printf, ...)
#include "mlab_xvcd.h"															//	Program Config (pin defs, settings, ...)

#ifdef WIN32
#include <windows.h>														// Windows Console Application
#else
#include <string.h>
#endif

// Link with library
#ifdef WIN32
#include "lib_win32\ftd2xx.h"														// FTDI Library
#else
#include "lib_linux/ftd2xx.h"
#endif


// Public Definitions
// ------------------


// Find Mode (for port open)
#define OPEN_BY_DESCRIPTION		FT_OPEN_BY_DESCRIPTION		//	Find device by Description String
#define OPEN_BY_LOCATION			FT_OPEN_BY_LOCATION			//	Find device by Bus Location
#define OPEN_BY_SERIAL_NUMBER		FT_OPEN_BY_SERIAL_NUMBER	//	Find device by it's Serial Number

// Max Data lengt to send to FTDI as one block
#define FTDI_MAX_WRITESIZE			1024


// Function Prototypes (public functions only)
// -------------------------------------------

// Connect to FTDI driver
// Find the device and open driver
int jtagOpenPort(int findDeviceBy, char *findDeviceByStr);

// Enable or Disable Activity LED
void jtagSetLED(bool LedEnable);

// Set port to Idle state (all zeroes)
void jtagSetIdle();

// Close FTDI connection
int jtagClosePort();

// Send data to JTAG port and bring returned data
// Turn LED On during processing
int jtagScan(const unsigned char *TMS, const unsigned char *TDI, unsigned char *TDO, unsigned int bits);

// Check if Cable is still connected and accesible
// True is o.k.
bool CheckCable();

#endif

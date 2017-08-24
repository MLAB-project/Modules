// Program Version
// ---------------

#define VERSION						"1.08"							// Program version
#define YEAR                     "2013"							// Year of the program

// JTAG Port Definitions
// ---------------------

// Use FTDI as Port Interface
#include "mlab_xvcd_port_FTDI.h"

// JTAG Port Pin Masks (look at mlab_xvcd_port_FTDI.h for pin names)
#define PORT_TCK						( FTDI_TXD )					//	JTAG TCK (output)
#define PORT_TDI						( FTDI_RXD )					//	JTAG TDI (output)
#define PORT_TDO						( FTDI_RTS )					// JTAG TDO (input)
#define PORT_TMS						( FTDI_CTS )					//	JTAG TMS (output)
#define PORT_LED						( FTDI_RI | CBUS3 )			// Activituy LED (output)

// FTDI Settings
#define BAUD_RATE						1000000							// Baoud Rate (mult it by 16)
#define USB_LATENCY					1									// FTDI USB Latency Timer in ms (FT232R 0, FT2232 1)

// Performance Data (configuring XC3S50AN)
// ----------------
// BAUD_RATE	USB_LATENCY		-->	FT220X	FT232R
//  1000000		1							3s			2s
// 10000000		1							3s			
//  1000000		0							2.8s		


// Network Definitions
// -------------------

// TCP/IP
#define XVC_TCP_PORT					"2542"							// TCP Port Number to Listen to (string!)
#define XVC_JTAG_LEN					(1024*8)							// JTAG String Length in bits

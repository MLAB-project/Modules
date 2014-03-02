#ifndef __CONFIG_H_ 
#define __CONFIG_H_

// Define USB pin names
// --------------------

#if! defined (__AVR_ATtiny45__)
#define CONFIG_USB_PORT		D
#define CONFIG_USB_DPLUS	2
#define CONFIG_USB_DMINUS	4
#else
#define CONFIG_USB_PORT		B
#define CONFIG_USB_DPLUS	2
#define CONFIG_USB_DMINUS	0
#endif


// SPI Config
// ----------

#define ENABLE_SCL_EXPAND	// wait for slow target device (SCL L state hold in L state)

// CPU Compatibility
// -----------------

// ATmega88 --> ATmega8 (USART0 Registers to USART Registers)
#ifdef UDR0
	#define UDR UDR0
#endif

#ifdef UDRE0
	#define UDRE UDRE0
#endif

#ifdef UCSR0A
	#define UCSRA UCSR0A
#endif

// Macros for Port (enables to easily define IO signals)
// ---------------
#define GLUE(A,B) A##B
#define DDR(PORT_LETTER)  GLUE(DDR, PORT_LETTER)		// Makes DDRC  from DDR(C) etc.
#define PORT(PORT_LETTER) GLUE(PORT,PORT_LETTER)		// Makes PORTC from PORT(C)
#define PIN(PORT_LETTER)  GLUE(PIN, PORT_LETTER)		// Makes PINC  from PIN(C)

#endif
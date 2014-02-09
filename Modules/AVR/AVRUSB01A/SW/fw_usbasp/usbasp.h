/*
 * usbasp.c - part of USBasp
 *
 * Autor..........: Thomas Fischl <tfischl@gmx.de>
 * Description....: Definitions and macros for usbasp
 * Licence........: GNU GPL v2 (see Readme.txt)
 * Creation Date..: 2009-02-28
 * Last change....: 2009-02-28
 */

#ifndef USBASP_H_
#define USBASP_H_

/* PORTS Definitions */
#define LED_RED_PORT       C
#define LED_RED_BIT        0
#define LED_GREEN_PORT     C
#define LED_GREEN_BIT      1
#define CLKSW_PORT         D
#define CLKSW_BIT          0
#define PORTB_UNUSED_MASK  (1<<PB1 | 1<<PB0)
#define PORTC_UNUSED_MASK  (1<<PC5 | 1<<PC4 | 1<<PC3 | 1<<PC2)
#define PORTD_UNUSED_MASK  (1<<PD7 | 1<<PD6 | 1<<PD5 | 1<<PD3 | 1<<PD1)

/* USB function call identifiers */
#define USBASP_FUNC_CONNECT     1
#define USBASP_FUNC_DISCONNECT  2
#define USBASP_FUNC_TRANSMIT    3
#define USBASP_FUNC_READFLASH   4
#define USBASP_FUNC_ENABLEPROG  5
#define USBASP_FUNC_WRITEFLASH  6
#define USBASP_FUNC_READEEPROM  7
#define USBASP_FUNC_WRITEEEPROM 8
#define USBASP_FUNC_SETLONGADDRESS 9
#define USBASP_FUNC_SETISPSCK 10
#define USBASP_FUNC_TPI_CONNECT      11
#define USBASP_FUNC_TPI_DISCONNECT   12
#define USBASP_FUNC_TPI_RAWREAD      13
#define USBASP_FUNC_TPI_RAWWRITE     14
#define USBASP_FUNC_TPI_READBLOCK    15
#define USBASP_FUNC_TPI_WRITEBLOCK   16
#define USBASP_FUNC_GETCAPABILITIES 127

/* USBASP capabilities */
#define USBASP_CAP_0_TPI    0x01

/* programming state */
#define PROG_STATE_IDLE         0
#define PROG_STATE_WRITEFLASH   1
#define PROG_STATE_READFLASH    2
#define PROG_STATE_READEEPROM   3
#define PROG_STATE_WRITEEEPROM  4
#define PROG_STATE_TPI_READ     5
#define PROG_STATE_TPI_WRITE    6

/* Block mode flags */
#define PROG_BLOCKFLAG_FIRST    1
#define PROG_BLOCKFLAG_LAST     2

/* ISP SCK speed identifiers */
#define USBASP_ISP_SCK_AUTO   0
#define USBASP_ISP_SCK_0_5    1   /* 500 Hz */
#define USBASP_ISP_SCK_1      2   /*   1 kHz */
#define USBASP_ISP_SCK_2      3   /*   2 kHz */
#define USBASP_ISP_SCK_4      4   /*   4 kHz */
#define USBASP_ISP_SCK_8      5   /*   8 kHz */
#define USBASP_ISP_SCK_16     6   /*  16 kHz */
#define USBASP_ISP_SCK_32     7   /*  32 kHz */
#define USBASP_ISP_SCK_93_75  8   /*  93.75 kHz */
#define USBASP_ISP_SCK_187_5  9   /* 187.5  kHz */
#define USBASP_ISP_SCK_375    10  /* 375 kHz   */
#define USBASP_ISP_SCK_750    11  /* 750 kHz   */
#define USBASP_ISP_SCK_1500   12  /* 1.5 MHz   */

/* Macros for Port (enables to easily define IO signals) */
#define GLUE(A,B) A##B
#define DDR(PORT_LETTER)  GLUE(DDR, PORT_LETTER)		// Makes DDRC  from DDR(C) etc.
#define PORT(PORT_LETTER) GLUE(PORT,PORT_LETTER)		// Makes PORTC from PORT(C)
#define PIN(PORT_LETTER)  GLUE(PIN, PORT_LETTER)		// Makes PINC  from PIN(C)

/* macros for gpio functions */
#define ledRedOn()    PORT(LED_RED_PORT)   &= ~(1 << LED_RED_BIT)	// Active L
#define ledRedOff()   PORT(LED_RED_PORT)   |=  (1 << LED_RED_BIT)
#define ledGreenOn()  PORT(LED_GREEN_PORT) &= ~(1 << LED_GREEN_BIT)	// Active L
#define ledGreenOff() PORT(LED_GREEN_PORT) |=  (1 << LED_GREEN_BIT)
#define ledInit()     DDR(LED_RED_PORT)    |=  (1 << LED_RED_BIT),\
                      DDR(LED_GREEN_PORT)  |=  (1 << LED_GREEN_BIT)	// Outputs
#define clkswInit()   DDR(CLKSW_PORT)      &= ~(1 << CLKSW_BIT),\
                      PORT(CLKSW_PORT)     |=  (1 << CLKSW_BIT)		// Input with PullUp

#endif /* USBASP_H_ */

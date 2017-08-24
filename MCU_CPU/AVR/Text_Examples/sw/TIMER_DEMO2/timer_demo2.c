// timer_demo2.c
// -------------
//
// Example file for ATmega88 (and similar AVR chips) demonstrating how to use
// timer interrupt to realize Clocks with LED display.
//
// The program uses TIMER1 to generate interrupts and the interrupt routine counts
// fragments of second, seconds, tens of seconds etc. In the same interrupt routine
// the display multiplex is done. We use 4 digit 7 segment display.
// Common anodas are connected to LED_DIGITS_PORT and segments are connected
// to LED_SEGMENTS_PORT (use serial rezistors here, cca 100 OHM).
//
// (c) miho 2014 http://www.mlab.cz
//
// History
//   2014 01 31 - First demo
//   2014 02 07 - Added support for Comon Anoda / Comon Catoda


// System Configuration
#define F_CPU 4000000					// Do not forget to set FUSEs to external XTAL osc with DIV/8 off and connect xtal

// LED Display - Configuration
#define LED_COMON_ANODA		0			// 0=Comon Catoda / 1=Comon Anoda
#define LED_DIGITS_PORT		C			// Digits Port (common anodas or comon catodas)
#define LED_DIGITS			6			// Number of display digits (1..8)
#define LED_SEGMENTS_PORT	D			// Segments Port (catodas or anodas)
#define LED_SEGMENTS		8			// Usualy 7 or 8 (bit 0 is A)
#define TICKS_PER_SEC		500			// Number of interrupts per second ( >250 to look steady)


// -------------- DO NOT EDIT BELOW THIS LINE --------------


// LED Display - Internal Defs
#define LED_DIGITS_MASK		((1<<LED_DIGITS)-1)		// For 4 digits   0x0F=0b00001111
#define LED_SEGMENTS_MASK	((1<<LED_SEGMENTS)-1)	// For 7 segments 0x7F=0b01111111


// LED Display - Verify Configuration
#if (F_CPU / 64 % TICKS_PER_SEC)
#error "TICKS_PER_SEC" should be chosen so that "F_CPU / 64 / TICKS_PER_SEC" is a whole number!
#endif
#if ( (F_CPU / 64 / TICKS_PER_SEC) > 65536)
#error "TICKS_PER_SEC" should be chosen bigger (timer is long 16bit only)!
#endif


// Library Headers
#include <avr/interrupt.h>


// Compatibility ATmega8 / ATmega88
#ifndef TIMSK
#define TIMSK TIMSK1
#endif


// Macro for Port (enables to easily define IO signals)
#define GLUE(A,B) A##B
#define DDR(PORT_LETTER)  GLUE(DDR, PORT_LETTER)		// Makes DDRC  from DDR(C) etc.
#define PORT(PORT_LETTER) GLUE(PORT,PORT_LETTER)		// Makes PORTC from PORT(C)
#define PIN(PORT_LETTER)  GLUE(PIN, PORT_LETTER)		// Makes PINC  from PIN(C)


// 7 Segment Decoder
unsigned char Convert(unsigned char Number)
{
	// 7 Segment Decoder Table
	//    A
	//   ---
	// F|   | B
	//  | G |
	//   ---
	// E|   | C
	//  |   |
	//   --- * H
	//    D
	const unsigned char Decoder[] = 
	{
	//	  HGFEDCBA
		0b00111111,		// 0
		0b00000110,		// 1
		0b01011011,		// 2
		0b01001111,		// 3
		0b01100110,		// 4
		0b01101101,		// 5
		0b01111101,		// 6
		0b00000111,		// 7
		0b01111111,		// 8
		0b01101111,		// 9
		0b01110111,		// A
		0b01111100,		// b
		0b00111001,		// C
		0b01011100,		// d
		0b01111001,		// E
		0b01110000		// F
	};

	// Decoding Function
	if(Number<sizeof(Decoder)) return Decoder[Number]; else return 0;
}


// Global Variable - Time Counters
volatile unsigned int Fractions;			// 1/100s
volatile unsigned char Seconds, Seconds10;	// Seconds and tens of seconds
volatile unsigned char Minutes, Minutes10;	// Minutes and tens of minutes
volatile unsigned char Hours, Hours10;		// Hours and tens of hours


// Global Variable - Display Multiplex
volatile unsigned char DisplayDigit;		// Multiplex state 0 1 2 3 (binary counter)
volatile unsigned char DisplayDigitMask;	// Multiplex state 1 2 4 8 (mask 1 from N)


// Interrupt Routine for TIMER1 Output Compare A
// Activated 500 per second
ISR(TIMER1_COMPA_vect)
{
	// Every 1/500s
	Fractions++;
	if (Fractions>(TICKS_PER_SEC-1))
	{
		// Every 1s
		Fractions=0;
		Seconds++;
		if (Seconds>9)
		{
			// Every 10s
			Seconds = 0;
			Seconds10++;
			if (Seconds10>5)
			{
				// Every 1m
				Seconds10=0;
				Minutes++;
				if (Minutes>9)
				{
					// Every 10m
					Minutes=0;
					Minutes10++;
					if (Minutes10>5)
					{
						// Every 1h
						Minutes10=0;
						Hours++;
						if (Hours10==2 && Hours>3)
						{
							// Every Day
							Hours=0;
							Hours10=0;
						}
						if (Hours>9)
						{
							// At 10 and 20 hours
							Hours=0;
							Hours10++;
						}
					}
				}
			}
		}
	}

	// LED display time multiplex - next digit
	// 500x per second
	DisplayDigit++;
	DisplayDigitMask<<=1;
	if (DisplayDigit == LED_DIGITS)
	{
		DisplayDigit = 0;
		DisplayDigitMask = 1;
	}

	// Get Segment Combination for Current Digit
	unsigned char Segments=0;
	switch(DisplayDigit)
	{
	case 0: Segments = Convert(Seconds);
			break;
	case 1: Segments = Convert(Seconds10);
			break;
	case 2: Segments = Convert(Minutes);
			break;
	case 3: Segments = Convert(Minutes10);
			break;
	case 4: Segments = Convert(Hours);
			break;
	case 5: Segments = Convert(Hours10);
			break;
	}
	#if LED_COMON_ANODA==0
		// LED display update - All digits off
		PORT(LED_DIGITS_PORT) |= LED_DIGITS_MASK;	// common catoda 1=off
		// LED display update - New segments combination
		PORT(LED_SEGMENTS_PORT) = (PORT(LED_SEGMENTS_PORT) & ~LED_SEGMENTS_MASK) | (Segments & LED_SEGMENTS_MASK);
		// LED display update - One digit on
		PORT(LED_DIGITS_PORT) &= ~(LED_DIGITS_MASK & DisplayDigitMask); // (common anoda 0=on)
	#else
		// LED display update - All digits off
		PORT(LED_DIGITS_PORT) &= ~LED_DIGITS_MASK;	// common anoda 0=off
		// LED display update - New segments combination
		PORT(LED_SEGMENTS_PORT) = (PORT(LED_SEGMENTS_PORT) & ~LED_SEGMENTS_MASK) | (~Segments & LED_SEGMENTS_MASK);
		// LED display update - One digit on
		PORT(LED_DIGITS_PORT) |= (LED_DIGITS_MASK & DisplayDigitMask); // (common anoda 1=on)
	#endif
}


// Main
int main()
{
	// Enable LED Display Output
	DDR(LED_SEGMENTS_PORT)	|= LED_SEGMENTS_MASK;	// 8 segments 0b11111111
	DDR(LED_DIGITS_PORT)	|= LED_DIGITS_MASK;		// 4 digits   0b00001111

	// Set MAX value for Timer1
	OCR1A = (F_CPU+64/2)/64/TICKS_PER_SEC-1;	// 1/500s

	// Set Timer1 to CTC with presacaller 1/64
	// CTC  Mmode counts from 0 to value stored in OCR1A
	// and generates interrupt every time it goes back to 0
	TCCR1B |= (1<<CS11) | (1<<CS10) | (1<<WGM12);

	// Enable Interrupt for Timer1 OCRA
	TIMSK |= (1<<OCIE1A);

	// Enable Global (CPU) Interrupt
	sei();

	// Main Loop
	for(;;)
	{
		// Do any job here
	}

	return 0;
}

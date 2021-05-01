// timer_demo1.c
// -------------
//
// Example file for ATmega88 (and similar AVR chips) demonstrating how to use
// timer interrupt just to blink by LED.
//
// The program uses TIMER1 to generate interrupts and the interrupt routine 
// toogles the LED state. Connect LED to ground with apropriate serial resistor
// (value about 330 OHM).
//
// (c) miho 2014 http://www.mlab.cz
//
// History
//   2014 01 29 - First demo


// System Configuration
#define F_CPU 4000000					// Do not forget to set FUSEs to external XTAL osc with DIV/8 off and connect xtal


// LED Ports Configuration
#define LED_S_PORT C
#define LED_S_PIN  4
#define LED_M_PORT C
#define LED_M_PIN  5


// -------------- DO NOT EDIT BELOW THIS LINE --------------


// Library Headers
#include <avr/interrupt.h>


// Comaptibility ATmega8 / ATmega88
#ifndef TIMSK
#define TIMSK TIMSK1
#endif


// Macro for Port (enables to easily define IO signals)
#define GLUE(A,B) A##B
#define DDR(PORT_LETTER)  GLUE(DDR, PORT_LETTER)		// Makes DDRC  from DDR(C)
#define PORT(PORT_LETTER) GLUE(PORT,PORT_LETTER)		// Makes PORTC from PORT(C)
#define PIN(PORT_LETTER)  GLUE(PIN, PORT_LETTER)		// Makes PINC  from PIN(C)


// Global Variable
volatile int Seconds;

// Interrupt Routine for TIMER1 Output Compare A
ISR(TIMER1_COMPA_vect)
{
	// LED on/off
	PORT(LED_S_PORT) ^= (1<<LED_S_PIN);
	if (Seconds<59)
	{
		Seconds++;
	}
	else
	{
		Seconds=0;
		// Toogle Minute LED
		PORT(LED_M_PORT) ^= (1<<LED_M_PIN);
	}
}


// Main
int main()
{
	// Enable LED Output
	DDR(LED_S_PORT) |= (1<<LED_S_PIN);
	DDR(LED_M_PORT) |= (1<<LED_M_PIN);

	// Set MAX value for Timer1
	OCR1A = F_CPU/256/2-1;	// 1/2s

	// Set Timer1 to CTC with presacaller 1/256
	// CTC  Mmode counts from 0 to value stored in OCR1A
	// and generates interrupt every time it goes back to 0
	//		CS12 CS11 CS10   Prescaller
	//		0    0    1      clkI/O/1 (No prescaling)
	//		0    1    0      clkI/O/8 (From prescaler)
	//		0    1    1      clkI/O/64 (From prescaler)
	//		1    0    0      clkI/O/256 (From prescaler)
	//		1    0    1      clkI/O/1024 (From prescaler)
	TCCR1B |= (1<<CS12) | (1<<WGM12);

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

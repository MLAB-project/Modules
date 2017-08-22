/*
	MPL115A1 SPI Digital Barometer Test Code
	Created on: April 20, 2010
	By: Jim Lindblom - jim at sparkfun.com
	
	This is a simple test program for the MPL115A1 Pressure Sensor (SPI version).
	UBRR0 is set to 51 and U2X0 is not set, so the baud rate will be 9600@8MHz and 19200@16MHz.
	Press the spacebar to get the pressure measurement.
	
	Hardware: ATmega328 (I used the Arduino Pro platform)
	Powered at 3.3V, running at 8MHz.
	The sensor is 5V tolerant, and this code should also work on 5V/16MHz Arduinos.
	
	MPL115A1 Breakout -------------	Arduino
	-----------------				-------
			SDN	------------------- D9 (PB1)
			CSN	------------------- D8 (PB0)
			SDO	------------------- D12 (PB4)
			SDI	------------------- D11 (PB3)
			SCK	------------------- D13 (PB5)
			GND	--------------------- GND
			VDD	------------------- VCC (3.3V)
			
	License: CCAv3.0 Attribution-ShareAlike (http://creativecommons.org/licenses/by-sa/3.0/)
	You're free to use this code for any venture, but I'd love to hear about what you do with it,
	and any awesome changes you make to it.	Attribution is greatly appreciated.
*/

//======================//
//		Includes		//
//======================//
#include <avr/io.h>
#include <stdio.h>
#include "MPL115A1.h"

//======================//
// 		 Macros			//
//======================//
#define sbi(var, mask)   ((var) |= (uint8_t)(1 << mask))
#define cbi(var, mask)   ((var) &= (uint8_t)~(1 << mask))

//======================//
// 	 MPL115A1 Defines	//
//======================//
#define CS 0 //pin for chip select
#define SDN 1	// pin for interrupt

//======================//
//	General Functions	//
//======================//
void ioinit(void);
void delay_ms(uint16_t x);
void delay_us(uint16_t x);
static int uart_putchar(char c, FILE *stream);
uint8_t uart_getchar(void);
static FILE mystdout = FDEV_SETUP_STREAM(uart_putchar, NULL, _FDEV_SETUP_WRITE);

//======================//
//	MPL115A1 Functions	//
//======================//
void init_SPI(void);
void txdata(char data);
char rxdata(void);
char read(uint8_t address);
void write(uint8_t address, char data);
float calculatePressure(void);

//======================//
//	 Global Variables	//
//======================//
signed char sia0MSB, sia0LSB;
signed char sib1MSB, sib1LSB;
signed char sib2MSB, sib2LSB;
signed char sic12MSB, sic12LSB;
signed char sic11MSB, sic11LSB;
signed char sic22MSB, sic22LSB;
signed int sia0, sib1, sib2, sic12, sic11, sic22, siPcomp;
float decPcomp;
signed long lt1, lt2, lt3, si_c11x1, si_a11, si_c12x2;
signed long si_a1, si_c22x2, si_a2, si_a1x1, si_y1, si_a2x2;
unsigned int uiPadc, uiTadc;
unsigned char uiPH, uiPL, uiTH, uiTL;


int main(void)
{
	ioinit();
	
	init_SPI();
	sbi(PORTB,CS);	// CS Idle High
	sbi(PORTB,SDN);	// SDN high turns sensor on
	
	printf("\n***************MPR115A1 Test****************\n\n");
	
	// main program loop
	while(1){
		printf("\nPress space to print pressure\n");
		while( !(UCSR0A & (1<<RXC0)) )
			;
		if (UDR0 == ' ')
			printf("Pressure = %f\n", calculatePressure());
	}
}

float calculatePressure()
{
	write(0x24, 0x00);	// Start Both Conversions
	// write(0x20, 0x00);	// Start Pressure Conversion
	// write(0x22, 0x00);	// Start temperature conversion
	delay_ms(10);	// Typical wait time is 3ms
	
	// Read pressure
	uiPH = read(PRESH);
	uiPL = read(PRESL);
	uiTH = read(TEMPH);
	uiTL = read(TEMPL);
	
	uiPadc = (unsigned int) uiPH << 8;
	uiPadc += (unsigned int) uiPL & 0x00FF;
	uiTadc = (unsigned int) uiTH << 8;
	uiTadc += (unsigned int) uiTL & 0x00FF;
	
	// Placing Coefficients into 16-bit Variables
	// a0
	sia0MSB = read(A0MSB);
	sia0LSB = read(A0LSB);
	sia0 = (signed int) sia0MSB << 8;
	sia0 += (signed int) sia0LSB & 0x00FF;
	
	// b1
	sib1MSB = read(B1MSB);
	sib1LSB = read(B1LSB);
	sib1 = (signed int) sib1MSB << 8;
	sib1 += (signed int) sib1LSB & 0x00FF;
	
	// b2
	sib2MSB = read(B2MSB);
	sib2LSB = read(B2LSB);
	sib2 = (signed int) sib2MSB << 8;
	sib2 += (signed int) sib2LSB & 0x00FF;
	
	// c12
	sic12MSB = read(C12MSB);
	sic12LSB = read(C12LSB);
	sic12 = (signed int) sic12MSB << 8;
	sic12 += (signed int) sic12LSB & 0x00FF;
	
	// c11
	sic11MSB = read(C11MSB);
	sic11LSB = read(C11LSB);
	sic11 = (signed int) sic11MSB << 8;
	sic11 += (signed int) sic11LSB & 0x00FF;
	
	// c22
	sic22MSB = read(C22MSB);
	sic22LSB = read(C22LSB);
	sic22 = (signed int) sic22MSB << 8;
	sic22 += (signed int) sic22LSB & 0x00FF;
	
	// Coefficient 9 equation compensation
	uiPadc = uiPadc >> 6;
	uiTadc = uiTadc >> 6;
	
	// Step 1 c11x1 = c11 * Padc
	lt1 = (signed long) sic11;
	lt2 = (signed long) uiPadc;
	lt3 = lt1*lt2;
	si_c11x1 = (signed long) lt3;
	
	// Step 2 a11 = b1 + c11x1
	lt1 = ((signed long)sib1)<<14;
	lt2 = (signed long) si_c11x1;
	lt3 = lt1 + lt2;
	si_a11 = (signed long)(lt3>>14);
	
	// Step 3 c12x2 = c12 * Tadc
	lt1 = (signed long) sic12;
	lt2 = (signed long) uiTadc;
	lt3 = lt1*lt2;
	si_c12x2 = (signed long)lt3;
	
	// Step 4 a1 = a11 + c12x2
	lt1 = ((signed long)si_a11<<11);
	lt2 = (signed long)si_c12x2;
	lt3 = lt1 + lt2;
	si_a1 = (signed long) lt3>>11;
	
	// Step 5 c22x2 = c22*Tadc
	lt1 = (signed long)sic22;
	lt2 = (signed long)uiTadc;
	lt3 = lt1 * lt2;
	si_c22x2 = (signed long)(lt3);
	
	// Step 6 a2 = b2 + c22x2
	lt1 = ((signed long)sib2<<15);
	lt2 = ((signed long)si_c22x2>1);
	lt3 = lt1+lt2;
	si_a2 = ((signed long)lt3>>16);
	
	// Step 7 a1x1 = a1 * Padc
	lt1 = (signed long)si_a1;
	lt2 = (signed long)uiPadc;
	lt3 = lt1*lt2;
	si_a1x1 = (signed long)(lt3);
	
	// Step 8 y1 = a0 + a1x1
	lt1 = ((signed long)sia0<<10);
	lt2 = (signed long)si_a1x1;
	lt3 = lt1+lt2;
	si_y1 = ((signed long)lt3>>10);
	
	// Step 9 a2x2 = a2 * Tadc
	lt1 = (signed long)si_a2;
	lt2 = (signed long)uiTadc;
	lt3 = lt1*lt2;
	si_a2x2 = (signed long)(lt3);
	
	// Step 10 pComp = y1 + a2x2
	lt1 = ((signed long)si_y1<<10);
	lt2 = (signed long)si_a2x2;
	lt3 = lt1+lt2;
	
	// Fixed point result with rounding
	//siPcomp = ((signed int)lt3>>13);
	siPcomp = lt3/8192;
	
	// decPcomp is defined as a floating point number
	// Conversion to decimal value from 1023 ADC count value
	// ADC counts are 0 to 1023, pressure is 50 to 115kPa respectively
	decPcomp = ((65.0/1023.0)*siPcomp)+50;
	
	return decPcomp;
}

void write(uint8_t address, char data)
{
	//write any data byte to any single address
	//adds a 0 to the MSB of the address byte (WRITE mode)

	address &= 0x7F;	

	//printf("\nWriting 0x%x to 0x%x\n", data, address);

	cbi(PORTB,CS);
	delay_ms(1);
	txdata(address);
	delay_ms(1);
	txdata(data);
	delay_ms(1);
	sbi(PORTB,CS);
}

char read(uint8_t address)
{
	//returns the contents of any 1 byte register from any address
	//sets the MSB for every address byte (READ mode)

	char byte;

	address |= 0x80;

	cbi(PORTB,CS);
	txdata(address);
	byte = rxdata();
	sbi(PORTB,CS);

	return byte;
}

char rxdata(void)
{
	SPDR = 0x55;
	
	while((SPSR&0x80) == 0x00)
		;

	return SPDR;
}

void txdata(char data)
{
	SPDR = data;
	while((SPSR&0x80) == 0x00)
		;
}

void init_SPI(void)
{
	sbi(SPCR,MSTR); //make SPI master
	cbi(SPCR,CPOL); cbi(SPCR,CPHA); //SCL idle low, sample data on rising edge
	cbi(SPCR,SPR1); cbi(SPCR,SPR0); sbi(SPSR,SPI2X); //Fosc/4 is SPI frequency
	sbi(SPCR,SPE); //enable SPI
}

static int uart_putchar(char c, FILE *stream)
{
    if (c == '\n') uart_putchar('\r', stream);

    loop_until_bit_is_set(UCSR0A, UDRE0);
    UDR0 = c;

    return 0;
}

uint8_t uart_getchar(void)
{
    while( !(UCSR0A & (1<<RXC0)) )
		;
    return(UDR0);
}


void ioinit (void)
{
	int MYUBRR = 51;	// Results in 9600bps@8MHz or 19200bps@16MHz
	
    //1 = output, 0 = input
    //DDRA = 0b00000000; //ADC inputs
    DDRB = 0b11101111; //MISO input
    DDRC = 0b11111111; //All outputs
    DDRD = 0b11111110; //PORTD (RX on PD0)
	stdout = &mystdout; //Required for printf init

	UBRR0H = (MYUBRR) >> 8;
	UBRR0L = MYUBRR;
	UCSR0B = (1<<RXEN0)|(1<<TXEN0);
	UCSR0C = (3<<UCSZ00);

	TCCR2B = (1<<CS21);
}

//General short delays
void delay_ms(uint16_t x)
{
    for (; x > 0 ; x--)
        delay_us(1000);
}

//General short delays
void delay_us(uint16_t x)
{
    while(x > 256)
    {
        TIFR2 = (1<<TOV2); //Clear any interrupt flags on Timer2
        TCNT2 = 0; //256 - 125 = 131 : Preload timer 2 for x clicks. Should be 1us per click
        while( (TIFR2 & (1<<TOV2)) == 0);

        x -= 256;
    }

    TIFR2 = (1<<TOV2); //Clear any interrupt flags on Timer2
    TCNT2= 256 - x; //256 - 125 = 131 : Preload timer 2 for x clicks. Should be 1us per click
    while( (TIFR2 & (1<<TOV2)) == 0);
}


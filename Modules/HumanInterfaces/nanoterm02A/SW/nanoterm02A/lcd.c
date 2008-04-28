/*		mija 2008		

		source file for lcd HITACHI 16x2,8x2,... 

	!!!	must be set PINs,PORTs,DDR in lcd.h 						
						
		ver.: 0.0	TESTED							
*/


#include <avr/io.h>
#include <util/delay.h>
#include <avr/pgmspace.h>
#include "lcd.h"

#include <stdio.h>

//*************************************************************

#define	H_D0	PORT_D0 |=_BV(PIN_D0)
#define L_D0	PORT_D0 &= ~(_BV(PIN_D0))	

#define	H_D1	PORT_D1 |=_BV(PIN_D1)
#define L_D1	PORT_D1 &= ~(_BV(PIN_D1))

#define	H_D2	PORT_D2 |=_BV(PIN_D2)
#define L_D2	PORT_D2 &= ~(_BV(PIN_D2))

#define	H_D3	PORT_D3 |=_BV(PIN_D3)
#define L_D3	PORT_D3 &= ~(_BV(PIN_D3))

#define	H_E		PORT_E |=_BV(PIN_E)
#define L_E		PORT_E &= ~(_BV(PIN_E))

#define	H_RS	PORT_RS |=_BV(PIN_RS)
#define L_RS	PORT_RS &= ~(_BV(PIN_RS))

//*************************************************************

// Definice konstant pro LCD display
//
#define LCD_CURSOR_ON_  0x0E     // kurzor jako blikajici radka pod znakem
#define LCD_CURSOR_OFF_ 0x0C     // zadny kurzor
#define LCD_LINE_2      0x40     // adresa 1. znaku 2. radky


// Definice rezimu LCD displeje
//

uint8_t PROGMEM LCD_INIT_STRING[4] =
{
   0x28,                         // intrfejs 4 bity, 2 radky, font 5x7
   LCD_CURSOR_OFF_,              // display on, kurzor off,
   0x01,                         // clear displeje
   0x06                          // inkrement pozice kurzoru (posun kurzoru doprava)
};

void LCD_init_IO_PIN(void)
{
	DDR_D0 |= _BV(PIN_D0);
	DDR_D1 |= _BV(PIN_D1);
	DDR_D2 |= _BV(PIN_D2);
	DDR_D3 |= _BV(PIN_D3);
	DDR_E  |= _BV(PIN_E);
	DDR_RS |= _BV(PIN_RS);
}

void LCD_init(void)
{
	uint8_t a;

	LCD_init_IO_PIN();
	_delay_ms(20);
	L_E;
	L_RS;
	for (a=0;a<3;a++)
	{
		_delay_ms(2);
		LCD_send_nibble(0x3);
		
	}
	_delay_us(40);
	LCD_send_nibble(0x2);
	_delay_us(40);
	for (a=0;a<3;a++)                   
   {
      LCD_send_command(pgm_read_byte(&(LCD_INIT_STRING[a])));
      _delay_ms(2);
   }
}

void LCD_putc(uint8_t data)
{
	LCD_send_data(data);
}

void LCD_send_command(uint8_t data)
{
	L_RS;
	LCD_send(data);
	H_RS;	
}

void LCD_send_data(uint8_t data)
{
	H_RS;
	LCD_send(data);
}

void LCD_send(uint8_t data)
{
	LCD_send_nibble(data >> 4);
	LCD_send_nibble(data);
	_delay_us(40);
}

void LCD_send_nibble(uint8_t data)
{
	L_D0;L_D1;L_D2;L_D3;
	if (data & 0x1) H_D0;
	if (data & 0x2) H_D1;
	if (data & 0x4) H_D2;
	if (data & 0x8) H_D3;
	H_E;
	_delay_us(1);
	L_E;
}


void LCD_clear(void)
{
	LCD_send_command(1);
	_delay_ms(2);
}

void LCD_gotoxy( uint8_t x, uint8_t y)
{
   uint8_t Adr;

   Adr=x-1;
   if(y==2)
     Adr+=LCD_LINE_2;

   LCD_send_command(0x80|Adr);
}

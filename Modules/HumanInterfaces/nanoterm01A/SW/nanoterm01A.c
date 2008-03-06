/*		mija 2008	
		
		nanotern01A
		ver.: 0.0 tested
*/

//*************************************************************

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include "rs232.h"
#include "lcd.h"


//*************************************************************

void line_feed(void);
void PWM_init(void);
void COMP_init(void);
ISR(ANA_COMP_vect);
void main(void);

//*************************************************************

#define text "Test 0.0"

//*************************************************************

uint8_t a,pos;
uint8_t buf[8] = text;

//*************************************************************

void line_feed(void)
{
	uint8_t length;
	LCD_clear();
	length=pos;
	while(pos) {LCD_putc(buf[length-(pos)]);buf[length-(pos--)]=0x20;}
	LCD_gotoxy(length+1,2);
	pos=length;	
}

void PWM_init(void)
{
	TCNT1 = 0;
	OCR1B = 0x1;
	DDRB |= _BV(PB4);
	TCCR1A |= _BV(COM1B1) | _BV(WGM10);
	TCCR1B |= _BV(WGM12) | _BV(CS10); 
}

void PWM_set(void)
{
	if (ACSR & _BV(ACO)) OCR1BL = 0x1f;
	else OCR1BL = 0x1;
}

void COMP_init(void)
{
	ACSR |= _BV(ACBG) | _BV(ACIE);
	DIDR |= _BV(AIN1D);
}

ISR(ANA_COMP_vect)
{
	PWM_set();
}

void main(void)
{
	LCD_init();
	rs232_init();
	PWM_init();
	COMP_init();
	PWM_set();

	LCD_clear();
	for (pos=0;pos<8;pos++) LCD_putc(buf[pos]);
	LCD_gotoxy(1,2);

	sei(); 	
		
	pos=0;
	for(;;) 
	{
		a=rs232_get();
		switch (a)
		{
		case ('\n'): line_feed();break;
		case ('\r'): LCD_gotoxy(1,2);pos=0;break;
		case ('\f'): LCD_clear();LCD_gotoxy(1,2);pos=0;break;
		default :if(pos > 7 )  {line_feed();LCD_gotoxy(1,2);pos=0;} LCD_putc(a);buf[pos++]=a; 
		}
	}
}

//Program pro vyzkouseni funkcnosti modulu s LCD a mikropocitacem ATmega8
//MLAB 21.11.2011 (JACHO)

//vytvoreno v programu AVR studio 4

//PropojenÌ pin˘ modulu s LCD a ATmega8 (jejich nastavenÌ se prov·dÌ v lcd.h)
//PIN_D0	PC3
//PIN_D1	PB4
//PIN_D2	PB5
//PIN_D3	PB3
//PIN_E	PB1
//PIN_RS	PB2


//pri spravne funkci se na LCD zobrazi na prvem a druhem radku LCD je OK
//je dulezite spravne propojit modulu, napajet je a mit spravne nastaveny konstrast (pro zacatek potenciometr do prostred drahy)

#include <avr/io.h>
#include <stdio.h>
#include <avr/iom8.h>
#include "lcd.h"
#include "lcd.c"
#include <util/delay.h>


#define MAXDISPLBUFFER	20	//buffer pro lcd display


//----------------------------------------------------------------------------- 

int main(void) 
{ 
    
LCD_init();  //Inicializace LCD 

char zasobnik[19];

			sprintf(zasobnik,"LCD je OK"); //vlozi text do zasobnik
			LCD_gotoxy(0,0);  //definuje kam se zacne zapisovat na LCD
			ProcesDispl(zasobnik);
			LCD_gotoxy(0,2);
			ProcesDispl(zasobnik);
			_delay_ms(1);


return 0;



}

void ProcesDispl(char *data) //zajiöùuje tisk ¯etÏzce na lcd
{
	uint8_t a,b;

	for (a=0;a<MAXDISPLBUFFER;a++)
	{
		switch (*(data+a))
		{
		case 0: *data = 0;return;
		case '\n':	LCD_gotoxy(1,2);break;  //posun na druhej ¯·dek
      	case '\r':	LCD_gotoxy(1,1);break;
		case '\a':	LCD_gotoxy(6,2);break;	//posun na 2.¯·dek 6.polÌËko
		case '\f':	LCD_gotoxy(1,1);
					for (b=0;b<8;b++) LCD_putc(0x20);
					LCD_gotoxy(1,2);
					for (b=0;b<8;b++) LCD_putc(0x20);
					LCD_gotoxy(1,1);
					break;
		default : 	LCD_putc(*(data+a));
    	}
	}
	*data = 0;
}

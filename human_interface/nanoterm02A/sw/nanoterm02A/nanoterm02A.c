/*		mija 2008	
		
		nanotern02A
		f osc 1Mhz
		timer1 PWM

		ver.: 1.0 
		/n .. goto 1,1
		/r .. goto 1,2
		/f .. clear lcd

*/

//*************************************************************

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/eeprom.h>
//#include <avr/sleep.h>
#include "lcd.h"


//*************************************************************

void line_feed(void);
void PWM_init(void);
void COMP_init(void);
ISR(ANA_COMP_vect);
int main(void);

//*************************************************************

#define TEXT1 "setup"

#define MAX_BUF		16

#define FIRST		40		// *16ms time next key
#define REPEAT		10		// *16ms time repeat key

#define	LIGHT		PB5		// tlacitko A
 #define PORT_LIGHT	PORTB	// nutne definovat PORT,DDR,PIN
 #define DDR_LIGHT	DDRB
 
#define	TL_A		PD6		// tlacitko A
 #define PORT_A		PORTD	// nutne definovat PORT,DDR,PIN
 #define DDR_A		DDRD
 #define PIN_A		PIND

#define	TL_B		PB0		// tlacitko B
 #define PORT_B		PORTB	// nutne definovat PORT,DDR,PIN
 #define DDR_B		DDRB
 #define PIN_B		PINB
 

#define	TL_C		PB2		// tlacitko C
 #define PORT_C		PORTB	// nutne definovat PORT,DDR,PIN
 #define DDR_C		DDRB
 #define PIN_C		PINB

#define	TL_D		PD3		// tlacitko D
 #define PORT_D		PORTB	// nutne definovat PORT,DDR,PIN
 #define DDR_D		DDRB
 #define PIN_D		PINB

// eeprom
#define EE_SETUP		0x03
#define EE_VOLTAGE_LO	0x00
#define EE_VOLTAGE_HI	0x01

// key
#define KEY_0	0x8
#define KEY_1	0xC
#define KEY_2	0xE
#define KEY_3	0x4
#define KEY_4	0x6
#define KEY_5	0x7
#define KEY_6	0xA
#define KEY_7	0x2
#define KEY_8	0x3
#define KEY_9	0xB
#define KEY_cr	0x1
#define KEY_esc	0x9

//interni
#define A_INPUT		(!(PIN_A & _BV(TL_A)))
#define A_PULLUP	(PORT_A |= _BV(TL_A))
#define A_INIT		(DDR_A &= ~(_BV(TL_A)))

#define B_INPUT		(!(PIN_B & _BV(TL_B)))
#define B_PULLUP	(PORT_B |= _BV(TL_B))
#define B_INIT		(DDR_B &= ~(_BV(TL_B)))

#define C_INPUT		(!(PIN_C & _BV(TL_C)))
#define C_PULLUP	(PORT_C |= _BV(TL_C))
#define C_INIT		(DDR_C &= ~(_BV(TL_C)))

#define D_INPUT		(!(PIN_D & _BV(TL_D)))
#define D_PULLUP	(PORT_D |= _BV(TL_D))
#define D_INIT		(DDR_D &= ~(_BV(TL_D)))

#define LIGHT_ON	(PORT_LIGHT |= _BV(LIGHT))
#define LIGHT_OFF	(PORT_LIGHT &= ~(_BV(LIGHT)))
#define LIGHT_INIT	(DDR_LIGHT |= _BV(LIGHT))

//flag
volatile uint8_t flag;

#define KEY_A		0
#define KEY_B		1
#define KEY_C		2
#define KEY_D		3
#define VOLTAGE		4
#define LIGHT_SET	5
#define LIGHT_T0	6
#define LIGHT_T1	7

#define FLAG_A_SET	(flag |= _BV(KEY_A))
#define FLAG_A_CLR	(flag &= ~(_BV(KEY_A)))
#define FLAG_A		(flag & _BV(KEY_A))

#define FLAG_B_SET	(flag |= _BV(KEY_B))
#define FLAG_B_CLR	(flag &= ~(_BV(KEY_B)))
#define FLAG_B		(flag & _BV(KEY_B))

#define FLAG_C_SET	(flag |= _BV(KEY_C))
#define FLAG_C_CLR	(flag &= ~(_BV(KEY_C)))
#define FLAG_C		(flag & _BV(KEY_C))

#define FLAG_D_SET	(flag |= _BV(KEY_D))
#define FLAG_D_CLR	(flag &= ~(_BV(KEY_D)))
#define FLAG_D		(flag & _BV(KEY_D))

#define FLAG_VOLTAGE_HI	(flag |= _BV(VOLTAGE))
#define FLAG_VOLTAGE_LO	(flag &= ~(_BV(VOLTAGE)))
#define FLAG_VOLTAGE	(flag & (_BV(VOLTAGE)))

#define FLAG_LIGHT_ON	(flag |= _BV(LIGHT_SET))
#define FLAG_LIGHT_OFF	(flag &= ~(_BV(LIGHT_SET)))
#define FLAG_LIGHT		(flag & _BV(LIGHT_SET))

#define FLAG_T0_SET	(flag |= _BV(LIGHT_T0))
#define FLAG_T0_CLR	(flag &= ~(_BV(LIGHT_T0)))
#define FLAG_T0		(flag & _BV(LIGHT_T0))

#define FLAG_T1_SET	(flag |= _BV(LIGHT_T1))
#define FLAG_T1_CLR	(flag &= ~(_BV(LIGHT_T1)))
#define FLAG_T1		(flag & _BV(LIGHT_T1))

//*************************************************************

uint8_t a,pos;
//uint8_t buf[8] = TEXT1;
uint8_t buf_rx[MAX_BUF];
volatile uint8_t rx_shift;
volatile uint8_t tik16ms;
uint8_t lcd_shift;
enum {LED_OFF,LED_5s,LED_10s,LED_15s,LED_20s,LED_25s,LED_30s,LED_ON};

//*************************************************************

void IO_init(void)
{
	LIGHT_INIT;
	A_PULLUP;
	B_PULLUP;
	C_PULLUP;
	D_PULLUP;
}

void rs232_init(void)
{	
	//set baud rate fixed 9600 8N1 for fosc 1Mhz
	UCSRA = _BV(U2X) ;
	UBRRL = 12;
	UCSRB = _BV(RXEN) | _BV(TXEN) | _BV(RXCIE);
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
	if (ACSR & _BV(ACO))
	{
		//OCR1BL = 0x5f;
		OCR1BL = eeprom_read_byte(EE_VOLTAGE_LO);
		FLAG_VOLTAGE_LO;
	}
	else 
	{
		//OCR1BL = 0x17;
		OCR1BL = eeprom_read_byte(EE_VOLTAGE_HI);
		FLAG_VOLTAGE_HI;
	}
}

void COMP_init(void)
{
	ACSR = _BV(ACBG) | _BV(ACIE);
	DIDR = _BV(AIN1D);
}

void timer0_init(void)
{
	TCCR0B = _BV(CS01) | _BV(CS00);
	TIMSK |= _BV(TOIE0);
}

ISR(TIMER0_OVF_vect)	//cca 16ms tik
{
	if (A_INPUT) FLAG_A_SET;else FLAG_A_CLR;
	if (B_INPUT) FLAG_B_SET;else FLAG_B_CLR;
	if (C_INPUT) FLAG_C_SET;else FLAG_C_CLR;
	if (D_INPUT) FLAG_D_SET;else FLAG_D_CLR;
	
	if (FLAG_LIGHT)	LIGHT_ON;
	else LIGHT_OFF;
	if (tik16ms) tik16ms--;
}

ISR(USART_RX_vect)
{
	//while ( !(UCSRA & (_BV(RXC))) );
	if (++rx_shift >= MAX_BUF) rx_shift = 0;
	buf_rx[rx_shift]=UDR;
}

ISR(ANA_COMP_vect)
{
	//if (ACSR & _BV(ACO)) OCR1BL = 0x5f;
	//else OCR1BL = 0x17;
	PWM_set();
}

void put(char data)
{
	while (!( UCSRA & _BV(UDRE)));
	UDR = data;
}

void send(uint8_t data)
{
	switch (data)
	{
		case (KEY_0): put('0');break;
		case (KEY_1): put('1');break;
		case (KEY_2): put('2');break;
		case (KEY_3): put('3');break;
		case (KEY_4): put('4');break;
		case (KEY_5): put('5');break;
		case (KEY_6): put('6');break;
		case (KEY_7): put('7');break;
		case (KEY_8): put('8');break;
		case (KEY_9): put('9');break;
		case (KEY_cr): put('\n');break;
		case (KEY_esc): put('\f');break;
	}
}

void delay_ms(uint8_t time)
{
	while (time--) _delay_ms(1);
}

void print_lcd(char *data)
{
	while (*data) LCD_putc(*data++);
}

void set(void)
{
	LCD_gotoxy(1,1);
	print_lcd("con. 0/1");
	LCD_gotoxy(1,2);
	print_lcd(" led 2-9");
	while (A_INPUT);
	for(;;)
	{
		switch (flag & 0x0f)
		{
			case KEY_0: OCR1BL--;break;
			case KEY_1: OCR1BL++;break;
			case KEY_2: LIGHT_OFF;FLAG_LIGHT_OFF;break;
			case KEY_3: LIGHT_ON;FLAG_LIGHT_ON;break;
			case KEY_4:	break;
			case KEY_esc: 
				{
					eeprom_write_byte(EE_SETUP,flag & 0xF0);
					if (FLAG_VOLTAGE) eeprom_write_byte(EE_VOLTAGE_HI,OCR1BL);
					else eeprom_write_byte(EE_VOLTAGE_LO,OCR1BL);
					
					return;
				}
		}
		delay_ms(50);
	}
}

int main(void)
{
	uint8_t save_flag;
		
	IO_init();
	LCD_init();
	rs232_init();
	PWM_init();
	COMP_init();
	timer0_init();
	LIGHT_OFF;
	
	print_lcd(TEXT1);
	LCD_gotoxy(1,2);
	print_lcd("cr+reset");
	LCD_gotoxy(1,1);

	flag = 0xfE0 & eeprom_read_byte(EE_SETUP);	

	sei();
	if (A_INPUT) set();		
	pos=0;
	rx_shift=0;
	lcd_shift=0;
	save_flag=0;
	for(;;) 
	{
		if (rx_shift != lcd_shift )
		{
			if (++lcd_shift >= MAX_BUF) lcd_shift = 0;
			a=buf_rx[lcd_shift];
			switch (a)
			{
				case ('\n'): LCD_gotoxy(1,1);pos=0;break;
				case ('\r'): pos=8;break;
				case ('\f'): LCD_clear();pos=0;break;
				default :if(pos == 8) 
						 {
						 	LCD_gotoxy(1,2);
							//delay_ms(10);
						 }
						 LCD_putc(a);
					 	 if (++pos > 15)
						 {
						 	pos = 0;
							LCD_gotoxy(1,1);
							//delay_ms(10);
						 } 
			}
		}
		if (flag & 0x0F) 
		{
			if ((flag & 0x0F) != save_flag) 
			{
				save_flag = flag & 0x0F;
				send(save_flag);
				tik16ms=FIRST;
			}
			else 
			{
				if (!tik16ms)
				{
					send(save_flag);
					tik16ms = REPEAT;
				}
			}
		}
		else save_flag = 0;
	}
	return 0;
}

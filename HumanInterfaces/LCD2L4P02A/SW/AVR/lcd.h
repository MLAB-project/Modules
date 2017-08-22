/*		mija 2008	

		*.h file for defines lcd.c

		data			PIN_D0
						PIN_D1
						PIN_D2
						PIN_D3
		write			PIN_E
		commamnd/data	PIN_RS

	!!!!NOTE must be set PIN with PORT and DDR
*/

//*************************************************************

#define PIN_D0	PC3
#define PORT_D0	PORTC
#define DDR_D0	DDRC

#define PIN_D1	PB4
#define PORT_D1	PORTB
#define DDR_D1	DDRB

#define PIN_D2	PB5
#define PORT_D2	PORTB
#define DDR_D2	DDRB

#define PIN_D3	PB3
#define PORT_D3	PORTB
#define DDR_D3	DDRB

#define PIN_E	PB1
#define PORT_E	PORTB
#define DDR_E	DDRB

#define PIN_RS	PB2
#define PORT_RS	PORTB
#define DDR_RS	DDRB

//*************************************************************

void LCD_init(void);
void LCD_putc(uint8_t data);
void LCD_gotoxy( uint8_t x, uint8_t y);
void LCD_clear(void);

void LCD_send_data(uint8_t data);
void LCD_send_command(uint8_t data);
void LCD_send(uint8_t data);
void LCD_send_nibble(uint8_t data);
void LCD_init_IO_PIN(void);

//*************************************************************


//********************** example printf	***********************
/*
#inlcude <stdio.h>

static int put_lcd(char c, FILE *stream);
static FILE mystdout = FDEV_SETUP_STREAM(put_lcd, NULL,_FDEV_SETUP_WRITE);

static int put_lcd(char c, FILE *stream)
{
	switch (c)
	{
		case '\n':	LCD_gotoxy(1,2);break;
      	case '\r':	LCD_gotoxy(1,1);break;
		default : 	LCD_putc(c);
    }
	return 0;
}*/
//*************************************************************


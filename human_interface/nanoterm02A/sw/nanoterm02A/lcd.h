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

#define PIN_D0	PD2
#define PORT_D0	PORTD
#define DDR_D0	DDRD

#define PIN_D1	PD3
#define PORT_D1	PORTD
#define DDR_D1	DDRD

#define PIN_D2	PD4
#define PORT_D2	PORTD
#define DDR_D2	DDRD

#define PIN_D3	PD5
#define PORT_D3	PORTD
#define DDR_D3	DDRD

#define PIN_E	PA0
#define PORT_E	PORTA
#define DDR_E	DDRA

#define PIN_RS	PA1
#define PORT_RS	PORTA
#define DDR_RS	DDRA

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





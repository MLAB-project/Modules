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

#define PIN_D0	PA1
#define PORT_D0	PORTA
#define DDR_D0	DDRA

#define PIN_D1	PD3
#define PORT_D1	PORTD
#define DDR_D1	DDRD

#define PIN_D2	PA0
#define PORT_D2	PORTA
#define DDR_D2	DDRA

#define PIN_D3	PD2
#define PORT_D3	PORTD
#define DDR_D3	DDRD

#define PIN_E	PD4
#define PORT_E	PORTD
#define DDR_E	DDRD

#define PIN_RS	PD5
#define PORT_RS	PORTD
#define DDR_RS	DDRD

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





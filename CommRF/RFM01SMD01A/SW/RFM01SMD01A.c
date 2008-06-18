/*	mija 2008
      	demo for RFM01 - RX 868MHz
		
	  	CPU ATtiny2313
      	fcpu = 1MHz

	  	!! define PIN,PORT,DDR for IOpin !!

		
*/

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include "RFM01.h"

//************************************************************************

#define LENGTH_MSG	20

#define SDI    		PD3
 #define SDI_PORT	PORTD
 #define SDI_DDR	DDRD

#define SDO    		PA1		// input for mega
 #define SDO_PORT	PORTA
 #define SDO_DDR	DDRA
 #define SDO_PIN	PINA

#define SCK    		PD4
 #define SCK_PORT	PORTD
 #define SCK_DDR	DDRD

#define nIRQ   		PD2      // input for mega
 #define nIRQ_PORT	PORTD
 #define nIRQ_DDR	DDRD
 #define nIRQ_PIN	PIND

#define nSEL   		PD5
 #define nSEL_PORT	PORTD
 #define nSEL_DDR	DDRD

#define LED   		PB0
 #define LED_PORT	PORTB
 #define LED_DDR	DDRB

// interni
#define SDI_H		SDI_PORT |= _BV(SDI)
#define SDI_L		SDI_PORT &= (~(_BV(SDI)))
#define SDI_INIT	SDI_DDR |= _BV(SDI)

#define SDO_INPUT	(SDO_PIN & _BV(SDO))
#define SDO_INIT	SDO_DDR &= (~(_BV(SDO)))

#define SCK_H		SCK_PORT |= _BV(SCK)
#define SCK_L		SCK_PORT &= (~(_BV(SCK)))
#define SCK_INIT	SCK_DDR |= _BV(SCK)

#define nIRQ_INPUT	(nIRQ_PIN & _BV(nIRQ))
#define nIRQ_INIT	nIRQ_DDR &= (~(_BV(nIRQ)))

#define nSEL_H		nSEL_PORT |= _BV(nSEL)
#define nSEL_L		nSEL_PORT &= (~(_BV(nSEL)))
#define nSEL_INIT	nSEL_DDR |= _BV(nSEL)

#define LED_H		LED_PORT |= _BV(LED)
#define LED_L		LED_PORT &= (~(_BV(LED)))
#define LED_INIT	LED_DDR |= _BV(LED)

#define START_FIFO	RF_WRITE_CMD(CMD_FIFO|FIFO_8|FIFO_VDI_WORD|FIFO_FF|FIFO_FE)
//#define START_FIFO	RF_WRITE_CMD(CMD_FIFO|FIFO_8|FIFO_ALWAYS|FIFO_FF|FIFO_FE)
#define STOP_FIFO	RF_WRITE_CMD(CMD_FIFO)
#define BLIK_LED	tik262ms=1

//************************************************************************

uint8_t rx_buf[LENGTH_MSG+1];
volatile uint8_t tik262ms;

//************************************************************************

void delay_ms(uint16_t time)
{
	while(time--) _delay_ms(1);
}

void IO_INIT(void)
{
	SDI_INIT;
	SDO_INIT;
	SCK_INIT;
	nIRQ_INIT;
	nSEL_INIT;
	LED_INIT;
}

void RF_INIT(void)
{
   nSEL_H;
   SDI_H;
   SCK_L;
   nIRQ_INPUT;
   SDO_INPUT;
}

void RS232_INIT(void)
{	
	//set baud rate fixed 9600 8N1 for fosc 1Mhz
	UCSRA = _BV(U2X) ;
	UBRRL = 12;
	UCSRB =  _BV(TXEN) | _BV(RXCIE);//_BV(RXEN) |
}

void TIMER0_INIT(void)
{
	// enable timer0 for f=fosc/1024 cca 262ms
	TCCR0B = _BV(CS02) | _BV(CS00);
	TIMSK |= _BV(TOIE0);
}

ISR(TIMER0_OVF_vect)
{
	if (tik262ms) {tik262ms--;LED_H;}
	else LED_L;
}

void put_rs232(char data)
{
	while (!( UCSRA & _BV(UDRE)));
	UDR = data;
}

uint16_t RF_WRITE_CMD(uint16_t cmd)
{
   uint8_t i;
   uint16_t temp;

   SCK_L;
   nSEL_L;
   temp=0;
   for (i=0;i<16;i++)
   {
      if (cmd & 0x8000) SDI_H;
      else SDI_L;
	  SCK_H;
      cmd <<= 1;
	  temp <<= 1;
	  if(SDO_INPUT) temp |= 0x0001;
	  SCK_L;
   }
   SCK_L;
   nSEL_H;
   return (temp);
}

void RF_WRITE_DATA(uint8_t data)
{
	  while (nIRQ_INPUT);
      RF_WRITE_CMD(0xB800 + data);
}

uint8_t RF_READ_DATA(void)
{
	uint8_t i,result;

	while (nIRQ_INPUT);
	SCK_L;
	nSEL_L;
	SDI_L;
	result=0;
	for (i=0;i<24;i++)
	{
		result <<= 1;
		if (SDO_INPUT) result |= 0x01;
		SCK_H;
		SCK_L;
	}
	nSEL_H;
	return (result);
}

int main()
{
   	uint8_t i,ChkSum;
   	//uint8_t LED_TRG;
   	uint8_t b;

   	IO_INIT();
	RS232_INIT();
   	RF_INIT();
	TIMER0_INIT();
	sei();
	delay_ms(100);
   	LED_L;
   	//LED_TRG=0;

	RF_WRITE_CMD(CMD_SETTING	|BAND_868 | C_12pF | BANDWIDTH_134 | SETTING_DC);
   	RF_WRITE_CMD(CMD_FREQUENCY	|FREQUENCY_868);
   	RF_WRITE_CMD(CMD_RATE		|RATE_9600);
   	RF_WRITE_CMD(CMD_FILTER		|FILTER_AL | FILTER_S0 | DQD_4);
	RF_WRITE_CMD(CMD_AFC		|AFC_POWER_ON | AFC_RANG_8 | AFC_ST | AFC_OE | AFC_EN);
	RF_WRITE_CMD(CMD_RX);
   	RF_WRITE_CMD(CMD_RX			|VDI_CLOCK | LNA_GAIN_0 | DRSSI_103 | RX_EN);
	RF_WRITE_CMD(CMD_FIFO);

	for (b=0;b<3;b++){BLIK_LED;delay_ms(500);}
	delay_ms(500);
	put_rs232('\f');
	while (1)
   	{
		
		cli();
		START_FIFO;
      	ChkSum = 0;
      	for (i=0;i<LENGTH_MSG;i++) 
	  	{
	  		b = RF_READ_DATA();
			LED_H;
			rx_buf[i] = b;
			ChkSum += b;
	  	}
		//BLIK_LED;
	  	b = RF_READ_DATA();
	  	RF_READ_DATA();
		STOP_FIFO;
		LED_L;
	  	//sei();
	  	
	  	if (ChkSum == b) 
		{
			//BLIK_LED;//LED_TRG = ~ LED_TRG;
			for (i=0;i<LENGTH_MSG;i++)	put_rs232(rx_buf[i]);
		}
	  	else 
		{
			put_rs232('\f');
			put_rs232('e');
			put_rs232('r');
			put_rs232('r');
			put_rs232('o');
			put_rs232('r');
	  	}
		//if (LED_TRG) LED_H;
	  	//else LED_L; 
   	}
   	return 0;
}




/*    mija 2008
      demo for RFM02 - TX 868MHz

	  CPU ATtiny2313
      fcpu = 1MHz

	  !! define PIN,PORT,DDR for IOpin !!

*/

#include <avr/io.h>
#include <util/delay.h>
#include "RFM02.h"

//************************************************************************

#define LENGTH_MSG	20

#define SDI    		PA1
 #define SDI_PORT	PORTA
 #define SDI_DDR	DDRA

#define FSK    		PD4
 #define FSK_PORT	PORTD
 #define FSK_DDR	DDRD

/*#define SDO    		PB4		// input for mega
 #define SDO_PORT	PORTB
 #define SDO_DDR	DDRB
 #define SDO_PIN	PINB
*/

#define SCK    		PD2
 #define SCK_PORT	PORTD
 #define SCK_DDR	DDRD

#define nIRQ   		PD5      // input for mega
 #define nIRQ_PORT	PORTD
 #define nIRQ_DDR	DDRD
 #define nIRQ_PIN	PIND

#define nSEL   		PD3
 #define nSEL_PORT	PORTD
 #define nSEL_DDR	DDRD

#define LED   		PB0
 #define LED_PORT	PORTB
 #define LED_DDR	DDRB

// interni
#define SDI_H		SDI_PORT |= _BV(SDI)
#define SDI_L		SDI_PORT &= (~(_BV(SDI)))
#define SDI_INIT	SDI_DDR |= _BV(SDI)

#define FSK_H		FSK_PORT |= _BV(FSK)
#define FSK_L		FSK_PORT &= (~(_BV(FSK)))
#define FSK_INIT	FSK_DDR |= _BV(FSK)

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

#define START_TX	RF_WRITE_CMD(CMD_POWER|POWER_EX|POWER_ES|POWER_EA|POWER_DC)
#define STOP_TX		RF_WRITE_CMD(CMD_POWER|POWER_DC)

#define RX_ENABLE	UCSRB = _BV(RXEN) 
#define RX_DISABLE  UCSRB &= ~(_BV(RXEN))
//************************************************************************

//uint8_t test[16]={0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39,0x3a,0x03b,0x3c,0x3d,0x3e,0x3f};
uint8_t test[LENGTH_MSG];
//uint8_t test[16]="0123456789abcdef";


//************************************************************************

void delay_ms(uint16_t time)
{
	while(time--) _delay_ms(1);
}

void IO_INIT(void)
{
	SDI_INIT;
	//SDO_INIT;
	SCK_INIT;
	nIRQ_INIT;
	nSEL_INIT;
	FSK_INIT;
	LED_INIT;
}

void rs232_init(void)
{	
	//set baud rate fixed 9600 8N1 for fosc 1Mhz
	UCSRA = _BV(U2X) ;
	UBRRL = 12;
	UCSRB = _BV(RXEN) ;
}

void RF_INIT(void)
{
   nSEL_H;
   SDI_H;
   SCK_L;
   nIRQ_INPUT;
   //SDO_INPUT;
   FSK_H;
}

void RF_WRITE_CMD(uint16_t cmd)
{
   uint8_t i;

   SCK_L;
   nSEL_L;
   for (i=0;i<16;i++)
   {
      SCK_L;
	  SCK_L;
      if (cmd & 0x8000) SDI_H;
      else SDI_L;
	  SCK_H;
      SCK_H;
      cmd <<= 1;
   }
   SCK_L;
   nSEL_H;
}

void RF_WRITE_DATA(uint8_t data)
{
	uint8_t i;
	
	for (i=0;i<8;i++)
   	{
    	while (nIRQ_INPUT);
      	while (!nIRQ_INPUT);
      	if (data & 0x80)FSK_H;
      	else FSK_L;
      	data <<= 1;
   	}
}

int main()
{
	uint8_t i,j,ChkSum;

	IO_INIT();
	RF_INIT();
	rs232_init();
	LED_H;
	delay_ms(100);

	RF_WRITE_CMD(CMD_STATUS);
	RF_WRITE_CMD(CMD_SETTING	|BAND_868	|C_12pF	|TX_DEV_90);
	RF_WRITE_CMD(CMD_FREQUENCY	|FREQUENCY_868);
	RF_WRITE_CMD(0xD040);
	RF_WRITE_CMD(CMD_RATE		|RATE_19200);
	RF_WRITE_CMD(CMD_BATTERY	|TX_EBS);
	RF_WRITE_CMD(CMD_POWER		|POWER_DC);
	RF_WRITE_CMD(POWER_OUT_0);

	j= 0;
   	while (1)
   	{
		
		
		LED_L;
		RX_ENABLE;

		while ( !(UCSRA & (_BV(RXC))));
		test[0]= UDR;
		for (i=1;i<LENGTH_MSG;i++)
		{
			j=255;
			while ( !(UCSRA & (_BV(RXC))) && --j);
			{
				/*asm volatile(	"nop" "\n\t"
             					"nop" "\n\t"
             					"nop" "\n\t"
             					"nop" "\n\t"
             					:
								:
								);*/
			}
			if(j) test[i]= UDR;
			else  while (i<LENGTH_MSG) test[i++] = 0;
		}
		i=UDR;
		RX_DISABLE;
		
		LED_H;

	  	START_TX;
      	ChkSum = 0;
      	for (i=0;i<3;i++) RF_WRITE_DATA(0xAA);	
      	RF_WRITE_DATA(0x2D);
      	RF_WRITE_DATA(0xD4);
      
      	for (i=0;i<LENGTH_MSG;i++)
      	{
        	RF_WRITE_DATA(test[i]);
			//putc
         	ChkSum += test[i];
      	}
      	RF_WRITE_DATA(ChkSum);
      	RF_WRITE_DATA(0xAA);
	  	RF_WRITE_DATA(0xAA);
      	STOP_TX;

	  	
      	//delay_ms(5000);
	  	//j++;
      	//test[13]=(j/100)+0x30;
	  	//test[14]=((j%100)/10)+0x30; 
	  	//test[15]=((j%100)%10)+0x30;
	}
   	return 0;
}




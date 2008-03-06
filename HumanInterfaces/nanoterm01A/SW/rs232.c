/*		mija 2008		

		source file for hw USART ATtiny2313
		fixed boud rate 9600 8N1
		 
		PD1 - TX
		PD0 - RX
												
		ver.: 0.0	TESTED						
*/


#include <avr/io.h>
#include "rs232.h"

//**************************************************************

void rs232_init(void)
{	
	//set baud rate fixed 9600 8N1
	UCSRA = UCSRA | ( 1 << U2X) ;
	UBRRH = 0;
	UBRRL = 12;
	//enable RX TX
	UCSRB = (1<<RXEN)|(1<<TXEN);
	//8N1
	//UCSRC = (1<<UMSEL);
}

int rs232_put(char data)
{
	// Wait for empty transmit buffer
	while ( !( UCSRA & (1<<UDRE)) );
	// Put data into buffer, sends the data
	UDR = data;
	return 0;
}

int rs232_get(void)
{
	// Wait for data to be received 
	while ( !(UCSRA & (1<<RXC)) );
	// Get and return received data from buffer
	return UDR;
}



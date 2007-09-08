#include <avr/pgmspace.h>
#include <avr/interrupt.h>
#include <avr/signal.h>

#include "common.h"
#include "usart.h"


void USART0::SendData(uint8_t aData) {
	while(!TESTBIT(UCSR0A,(1 << UDRE0)));
	UDR0 = aData;
}

uint8_t USART0::ReceiveData() {
	while(!TESTBIT(UCSR0A,(1 << RXC0)));
	return UDR0;
}

// a non-exported helper function
static char MakeHexDigit(uint8_t aDigit) {
	if (aDigit > 9) return 'a'+aDigit-10; else return '0'+aDigit;
}

void USART0::SendHexData(uint8_t aData) {
	SendData(MakeHexDigit(aData >> 4));
	SendData(MakeHexDigit(aData & 0x0f));
}

void USART0::SendHexData(uint16_t aData) {
	SendHexData((uint8_t)(aData >> 8));
	SendHexData((uint8_t)(aData & 0xff));
}

void USART0::SendHexData(uint32_t aData) {
	SendHexData((uint16_t)(aData >> 16));
	SendHexData((uint16_t)(aData & 0xffff));
}

void USART0::SendHexData(int16_t aData) {
	if (aData < 0) {
		SendData('-');
		aData = -aData;
	} else {
		SendData(' ');
	}
	SendHexData((uint16_t)aData);
}

void USART0::SendHexData(int32_t aData) {
	if (aData < 0) {
		SendData('-');
		aData = -aData;
	} else {
		SendData(' ');
	}
	SendHexData((uint32_t)aData);
}

void USART0::SendString(const char *aString) {
	while(aString != 0) SendData(*(aString++));
}

void USART0::SendPGString(const char *aString) {
	while(aString != 0) SendData(pgm_read_byte(aString++));
}

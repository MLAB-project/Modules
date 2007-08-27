#ifndef __usart_h__
#define __usart_h__

#include "common.h"

namespace USART0 {
	// setting = f_osc/16/BAUD - 1
	const uint16_t baud9600_8MHz = 51;
	const uint16_t baud19200_8MHz = 25;
	const uint16_t baud57600_8MHz = 8;
	const uint16_t baud19200_6_14MHz = 19;
	const uint16_t baud38400_6_14MHz = 9;
	const uint16_t baud19200_6_5MHz = 20;
	const uint16_t baud38400_6_5MHz = 10;
	const uint16_t baud57600_6_5MHz = 6;
	inline uint8_t FastReceiveData();
	inline void Init(uint16_t aBaudSetting) {
		UBRR0 = aBaudSetting;
		UCSR0A = 0;
		FastReceiveData(); // Clear any possible pending input data (to avoid spurious IRQ
		UCSR0B = (1 << RXCIE0) | (1 << RXEN0) | (1 << TXEN0);
		UCSR0C = (1 << USBS0) | (3 << UCSZ00);
	}
	void SendData(uint8_t aData);
	uint8_t ReceiveData();
	inline void FastSendData(uint8_t aData) {
		UDR0 = aData;
	}
	inline uint8_t FastReceiveData() {
		return UDR0;
	}
	void SendHexData(uint8_t aData);
	void SendHexData(uint16_t aData);
	void SendHexData(uint32_t aData);
	void SendHexData(int16_t aData);
	void SendHexData(int32_t aData);
	void SendString(const char *aString);
	void SendPGString(const char *aString);
}

#endif // __usart_h__

#include <avr/pgmspace.h>
#include "eeprom.h"
#include "common.h"

void EEPROM::Wait() {
	while(TESTBIT(EECR,(1<<EEPE)));
}

uint8_t EEPROM::GetByte(uint16_t aOfs) {
	// Wait for any pending writes to finish
	while(TESTBIT(EECR,(1<<EEPE)));
	EEARL = aOfs & 0x00ff;
	#ifdef EEARH
	EEARH = 0;
	#endif
	SETBIT(EECR,(1 << EERE));
	uint8_t RetVal = EEDR;
	return RetVal;
}

void EEPROM::SetByte(uint16_t aOfs,uint8_t aData) {
	// Wait for any pending writes to finish
	while(TESTBIT(EECR,(1<<EEPE)));
	EEARL = aOfs & 0x00ff;
	#ifdef EEARH
	EEARH = 0;
	#endif
	EEDR = aData;
	SETBIT(EECR,(1<<EEMPE));
	SETBIT(EECR,(1<<EEPE));
}

uint16_t EEPROM::GetWord(uint16_t aOfs) {
	uint16_t RetVal;
	((uint8_t *)(&RetVal))[0] = GetByte(aOfs+0);
	((uint8_t *)(&RetVal))[1] = GetByte(aOfs+1);
	return RetVal;
}

void EEPROM::SetWord(uint16_t aOfs,uint16_t aData) {
	SetByte(aOfs+0,((uint8_t *)(&aData))[0]);
	SetByte(aOfs+1,((uint8_t *)(&aData))[1]);
}

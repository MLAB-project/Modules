#ifndef __EEPROM_H__
#define __EEPROM_H__

namespace EEPROM {
	inline void Init() {
		EECR = 0; // Make sure we're erasing and writing at the same time
	}
	uint8_t GetByte(uint16_t aOfs);
	void SetByte(uint16_t aOfs,uint8_t aData);
	uint16_t GetWord(uint16_t aOfs);
	void SetWord(uint16_t aOfs,uint16_t aData);
	void Wait();
}

namespace EEPROM_layout {
}

#endif // __EEPROM_H__

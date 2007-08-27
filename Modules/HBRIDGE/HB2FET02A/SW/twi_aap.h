#ifndef __twi_aap_h__
#define __two_aap_h__

#include <compat/twi.h>

#include "common.h"
#include "usart.h"
#include "guids.h"
#include "eeprom.h"
//#define SERIAL_DBG

namespace EEPROM_layout {
	const uint16_t TWI_SoftAddr_Ofs = 0xff;
}

namespace TWI {
	const uint8_t GeneralCallAddr = 0;
	const size_t UniqueID_Size = 16*3;
	const size_t GUID_Size = sizeof(GUID);

	struct sConfigRecord {
		uint8_t UniqueID[UniqueID_Size];
		GUID ClassID;
		GUID DevID;
	};

	enum TWI_AAPCommands {
		TWI_AAPCmd_Reserved           = 0,
		TWI_AAPCmd_Start              = 0x20,
		TWI_AAPCmd_End                = 0x21,
		TWI_AAPCmd_ResetDevices       = 0x22,
		TWI_AAPCmd_ResetToPermAddress = 0x23,
		TWI_AAPCmd_GetConfig          = 0x24,
		TWI_AAPCmd_AssignAddress      = 0x25
	};
	enum MainStates {
		MS_Idle = 0,
		MS_Addressed,
		AAP_CmdGetConfig_GetAddress,
		AAP_CmdGetConfig_SendConfig,
		AAP_CmdAssignAddress_GetUniqueID,
		AAP_CmdAssignAddress_GetAddress,
		US_Base
	};

	extern uint8_t State;
	extern uint8_t LastCmd;
	extern uint8_t SoftAddress;

	inline void Init() {
		TWBR = 32; // 100kHz with an 8MHz crystal
//		TWBR = 16; // 200kHz with an 8MHz crystal
		TWSR = 0; // pre-scaler: 1
		TWCR = (1 << TWEA) | (1 << TWEN) | (1 << TWIE) | (1 << TWINT);
		if (TWSR == TW_BUS_ERROR) SETBIT(TWCR,(1 << TWSTO)); // reset TWI
		TWAMR = 0; // all address bits matter
		State = MS_Idle;
		SoftAddress = EEPROM::GetByte(EEPROM_layout::TWI_SoftAddr_Ofs);
		if (SoftAddress == 0xff) SoftAddress = 0;
		SoftAddress &= 0xfe;
//		TWAR = GeneralCallAddr | 1; // General call recognition and slave-receiver mode through address being 0
		TWAR = SoftAddress | 1;
		LastCmd = TWI_AAPCmd_Reserved;
	}

	// These used in all states, including user states, so make them available.
	extern uint8_t TWIStatus;
	extern uint8_t TWIData;
	extern uint8_t TWIPrevData;
	extern uint8_t TWIControl;

	void ResetTWITransmit();
	void ResetTWIReceive();
	void ResetTWI();
}

#endif // __twi_aap_h__

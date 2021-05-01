#include <avr/pgmspace.h>
#include <avr/interrupt.h>
#include <avr/signal.h>
#include <avr/sleep.h>

#include "common.h"
#include "usart.h"
#include "twi_aap.h"
#include "eeprom.h"

/*********
				switch (TWOStatus) {
                    case TW_SR_SLA_ACK:            //0x60
                    break;
                    case TW_SR_ARB_LOST_SLA_ACK:   //0x68
                    break;
                    case TW_SR_GCALL_ACK:          //0x70
                    break;
                    case TW_SR_ARB_LOST_GCALL_ACK: //0x78
                    break;
                    case TW_SR_DATA_ACK:           //0x80
                    break;
                    case TW_SR_DATA_NACK:          //0x88
                    break;
                    case TW_SR_GCALL_DATA_ACK:     //0x90
                    break;
                    case TW_SR_GCALL_DATA_NACK:    //0x98
                    break;
                    case TW_ST_LAST_DATA:          //0xC8
                    case TW_SR_STOP:               //0xA0
						State = MS_Idle;
                		SETBIT(TWIControl,(1 << TWEA)); // turn address recognition back on
                    break;
					default: // All non-handled states will basically terminate any processing
						State = MS_Idle;
                		CLRBIT(TWIControl,(1 << TWEA)); // will return NACK, i.e. will pretend to be unaddressed
					break;
  				}

				switch (TWOStatus) {
                    case TW_ST_SLA_ACK:            //0xA8
                    break;
                    case TW_ST_ARB_LOST_SLA_ACK:   //0xB0
                    break;
                    case TW_ST_DATA_ACK:           //0xB8
                    break;
                    case TW_ST_DATA_NACK:          //0xC0
                    break;
                    case TW_ST_ARB_LOST:           //0x38 - let's hope it works
					break;
                    case TW_ST_LAST_DATA:          //0xC8
						State = MS_Idle;
                		SETBIT(TWIControl,(1 << TWEA)); // turn address recognition back on
                    break;
					default: // All non-handled states will basically terminate any processing
						State = MS_Idle;
                		CLRBIT(TWIControl,(1 << TWEA)); // will return NACK, i.e. will pretend to be unaddressed
					break;
				}
**********/

namespace TWI {
	extern const sConfigRecord ConfigRecord PROGMEM __attribute__ ((weak)) = {UniqueIDUnassigned,DevClassUnassigned,DevUnassigned};

//	void TWI::UserInit() __attribute__ ((weak));
	void TWI::HandleUserReceive() __attribute__ ((weak));
	void TWI::HandleUserTransmit() __attribute__ ((weak));
	void TWI::HandleUserState() __attribute__ ((weak));
	static inline void TWI::HandleState_MS_Idle();
	static inline void TWI::HandleState_MS_Addressed();
	static inline void TWI::StateMachine();

	uint8_t ConfigCnt;
}

void TWI::ResetTWITransmit() {
	// Same as above, but also returns the statemachine to the idle state
	State = MS_Idle;
	LastCmd = TWI_AAPCmd_Reserved;
	// In slave-transmitter mode it's not possible to reset the TWI.
	// But at least we can transmit all '1'-s so we won't interfere with the bus.
	#ifdef SERIAL_DBG
	USART0::SendData('*');
	#endif
	TWDR = 0xff;
	SETBIT(TWIControl,(1 << TWEA) | (1 << TWSTO));
}
void TWI::ResetTWIReceive() {
	// Same as above, but also returns the statemachine to the idle state
	State = MS_Idle;
	LastCmd = TWI_AAPCmd_Reserved;
	// In slave-transmitter mode it's not possible to reset the TWI.
	// But at least we can transmit all '1'-s so we won't interfere with the bus.
	#ifdef SERIAL_DBG
	USART0::SendData('#');
	#endif
	TWDR = 0xff;
	SETBIT(TWIControl,(1 << TWSTO));
	CLRBIT(TWIControl,(1 << TWEA));
}
void TWI::ResetTWI() {
	switch (TWIStatus) {
        case TW_ST_LAST_DATA:          //0xC8
        case TW_SR_STOP:
		case TW_ST_DATA_NACK:
		case TW_SR_DATA_NACK:
        case TW_SR_GCALL_DATA_NACK:
			State = MS_Idle;
    		SETBIT(TWIControl,(1 << TWEA)); // turn address recognition back on
    		CLRBIT(TWIControl,(1 << TWSTO)); // even if we did so, stop aborting
        break;
		case TW_BUS_ERROR:
        	// This is the point where we re-enable the address recognition
			ResetTWITransmit();
		break;
		default:
			ResetTWIReceive();
		break;
	}
}

/*void TWI::UserInit() {
}*/

void TWI::HandleUserReceive() {
	#ifdef SERIAL_DBG
	USART0::SendData('r');
	#endif
	ResetTWI();
}

void TWI::HandleUserTransmit() {
	#ifdef SERIAL_DBG
	USART0::SendData('t');
	#endif
	ResetTWI();
}

void TWI::HandleUserState() {
}


static inline void TWI::HandleState_MS_Idle() {
	switch (TWIStatus) {
        case TW_SR_SLA_ACK:
    		LastCmd = TWI_AAPCmd_Reserved;
    		HandleUserReceive();
    	break;
        case TW_SR_GCALL_ACK:
   			State = MS_Addressed;
        break;
        case TW_ST_SLA_ACK:
        	if ((TWIData & 0xfe) == GeneralCallAddr) {
    			// TWI_AAP read command: things depend on what the last (write) command was:
    			if (LastCmd == TWI_AAPCmd_GetConfig) {
    				// This is the read part of the GetUDID command: Send the byte count and change state
    				TWIPrevData = sizeof(ConfigRecord);
    				TWDR = TWIPrevData;
    				State = AAP_CmdGetConfig_SendConfig;
    				ConfigCnt = 0;
            		//SETBIT(TWIControl,(1 << TWEA)); // require ACK
    			} else {
    				//Unknown read command: ignore
            		ResetTWITransmit();
    			}
        	} else {
        		HandleUserTransmit();
        	}
        break;
        case TW_ST_LAST_DATA:
        case TW_SR_STOP:
			#ifdef SERIAL_DBG
			USART0::SendData('.');
			#endif
			State = MS_Idle;
    		SETBIT(TWIControl,(1 << TWEA)); // turn address recognition back on
    		CLRBIT(TWIControl,(1 << TWSTO)); // even if we did so, stop aborting
        break;
		case TW_ST_DATA_ACK:
		case TW_SR_DATA_ACK:
        case TW_SR_GCALL_DATA_ACK:
			ResetTWIReceive();
		break;
		case TW_BUS_ERROR:
		case TW_ST_DATA_NACK:
		case TW_SR_DATA_NACK:
        case TW_SR_GCALL_DATA_NACK:
        	// This is the point where we re-enable the address recognition
			ResetTWITransmit();
		break;
		default:
			State = MS_Idle;
       		SETBIT(TWIControl,(1 << TWEA) | (1 << TWSTO)); // reset the TWI
		break;
	}
}

static inline void TWI::HandleState_MS_Addressed() {
	switch (TWIStatus) {
        case TW_SR_GCALL_DATA_ACK:
        	switch(TWIData) {
        		case TWI_AAPCmd_ResetDevices:
            		LastCmd = TWIData;
        			State = MS_Idle;
        			SoftAddress = 0;
					TWAR = SoftAddress | 1; // General call recognition and slave-receiver mode through address being 0
        		break;
        		case TWI_AAPCmd_ResetToPermAddress:
            		LastCmd = TWIData;
        			State = MS_Idle;
					SoftAddress = EEPROM::GetByte(EEPROM_layout::TWI_SoftAddr_Ofs);
					TWAR = SoftAddress | 1; // General call recognition and slave-receiver mode
					if (SoftAddress != 0) {
						// We have a valid address, do not respond to this command
                		LastCmd = TWI_AAPCmd_Reserved;
					}
        		break;
				case TWI_AAPCmd_GetConfig:
					LastCmd = TWIData;
					State = AAP_CmdGetConfig_GetAddress;
				break;
				case TWI_AAPCmd_AssignAddress:
					LastCmd = TWIData;
    				ConfigCnt = 0;
					State = AAP_CmdAssignAddress_GetUniqueID;
				break;
				default:
					// unknown command - ignore the rest
					ResetTWIReceive();
				break;
        	}
        break;
		default:
			ResetTWI();
		break;
	}
}

static inline void TWI::StateMachine() {
	TWIStatus = TWSR & TW_STATUS_MASK;
	TWIControl = TWCR;
	if (TWIStatus != TW_SR_STOP) {
		TWIData = TWDR;
	} else {
		// Fast short-circuit for stop-bit detection
		// This condition cannot use clock-stretching so we might miss the next start if we don't hurry
		State = MS_Idle;
		SETBIT(TWIControl,(1 << TWEA)); // turn address recognition back on
		CLRBIT(TWIControl,(1 << TWSTO)); // even if we did so, stop aborting
		SETBIT(TWIControl,(1 << TWINT));
		TWCR = TWIControl;
		return;
	}

	#ifdef SERIAL_DBG
	// DUMP state to serial port
	USART0::SendData('s'); USART0::SendData(' '); USART0::SendHexData(TWIStatus); USART0::SendData(' ');
	USART0::SendData('d'); USART0::SendData(' '); USART0::SendHexData(TWIData); USART0::SendData(' ');
	USART0::SendData('S'); USART0::SendData(' '); USART0::SendHexData(State); USART0::SendData(' ');
	USART0::SendData('L'); USART0::SendData(' '); USART0::SendHexData(LastCmd); USART0::SendData(' ');
	USART0::SendData('A'); USART0::SendData(' '); USART0::SendHexData(SoftAddress); USART0::SendData('-');
	#endif
	switch (State) {
		case MS_Idle:
			HandleState_MS_Idle();
		break;
		case MS_Addressed:
			HandleState_MS_Addressed();
		break;

		case AAP_CmdGetConfig_GetAddress:
			switch (TWIStatus) {
                case TW_SR_GCALL_DATA_ACK:
					State = MS_Idle;
            		SETBIT(TWIControl,(1 << TWEA) | (1 << TWSTO)); // reset the TWI
					if (SoftAddress != TWIData) {
						// We have a valid address, or was not addressed -> do not respond to this command
                		LastCmd = TWI_AAPCmd_Reserved;
					}
				break;
				default:
					ResetTWI();
				break;
			}
		break;

		case AAP_CmdAssignAddress_GetUniqueID:
			switch (TWIStatus) {
                case TW_SR_GCALL_DATA_ACK:
					if (TWIData == pgm_read_byte(ConfigRecord.UniqueID+ConfigCnt)) {
						++ConfigCnt;
						if (ConfigCnt == UniqueID_Size) State = AAP_CmdAssignAddress_GetAddress;
					} else {
						// UDID is not ours, abort command
						ResetTWIReceive();
					}
				break;
				default:
					ResetTWI();
				break;
			}
		break;
		case AAP_CmdAssignAddress_GetAddress:
			switch (TWIStatus) {
                case TW_SR_GCALL_DATA_ACK:
                	SoftAddress = TWIData & 0xfe;
                	if (TWIData & 0x01 == 1) {
						EEPROM::SetByte(EEPROM_layout::TWI_SoftAddr_Ofs,SoftAddress);
                	}
					State = MS_Idle;
					TWAR = SoftAddress | 1; // General call recognition and normal operation
               		SETBIT(TWIControl,(1 << TWEA) | (1 << TWSTO)); // reset the TWI
					LastCmd = TWI_AAPCmd_Reserved;
				break;
				default:
					ResetTWI();
				break;
			}
		break;



		// Read-oriented commands
		case AAP_CmdGetConfig_SendConfig:
			switch (TWIStatus) {
                case TW_ST_DATA_ACK:
               		if (TWIData != TWIPrevData) {
               			// We've lost the arbitration
               			ResetTWITransmit();
               			break;
               		}
               		TWIPrevData = pgm_read_byte(((uint8_t*)(&ConfigRecord))+ConfigCnt);
    				TWDR = TWIPrevData;
                	ConfigCnt++;
					//At the last byte, we require NACK
                	if (ConfigCnt == sizeof(ConfigRecord)) {
                		State = MS_Idle;
                		CLRBIT(TWIControl,(1 << TWEA)); // require NACK
                	} else {
    					State = AAP_CmdGetConfig_SendConfig;
    					SETBIT(TWIControl,(1 << TWEA)); // require ACK
    				}
                break;

				default:
					ResetTWI();
				break;
			}
		break;

		// User commands
		default:
			HandleUserState();
		break;
	}
	// re-enable the TWI interrupts
	SETBIT(TWIControl,1 << TWINT);
	#ifdef SERIAL_DBG
	USART0::SendData('S'); USART0::SendData(' '); USART0::SendHexData(State); USART0::SendData(' ');
	USART0::SendData('L'); USART0::SendData(' '); USART0::SendHexData(LastCmd); USART0::SendData(' ');
	USART0::SendData('A'); USART0::SendData(' '); USART0::SendHexData(SoftAddress); USART0::SendData(' ');
	USART0::SendData('C'); USART0::SendData(' '); USART0::SendHexData(TWIControl); USART0::SendData(0x0d); USART0::SendData(0x0a);
	#endif
	TWCR = TWIControl;
}

SIGNAL(SIG_TWI) {TWI::StateMachine();}

uint8_t TWI::State;
uint8_t TWI::LastCmd;
uint8_t TWI::SoftAddress;
uint8_t TWI::TWIStatus;
uint8_t TWI::TWIData;
uint8_t TWI::TWIPrevData;
uint8_t TWI::TWIControl;

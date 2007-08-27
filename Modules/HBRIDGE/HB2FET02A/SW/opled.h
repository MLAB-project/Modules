#ifndef __opled_h__
#define __opled_h__

#include "common.h"

namespace OpLed {
	#if defined BOARD_rs232if
	const int OpLedMask=(0x01 << 4);
	#elif defined BOARD_umServo32
	const int OpLedMask=(0x01 << 4);
	#elif defined BOARD_umHBridge
	const int OpLedMask=(0x01 << 2);
	#else
	#error Unknown board specification
	#endif

	void inline Init() {
	    SETBIT(DDRD,OpLedMask);
	}

	void inline On() {
	    SETBIT(PORTD,OpLedMask);
	}

	void inline Off() {
	    CLRBIT(PORTD,OpLedMask);
	}

	void inline Toggle() {
	    TOGGLEBIT(PORTD,OpLedMask);
	}
}

#endif // __opled_h__

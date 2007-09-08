// Features:
// - Complete PID loop
// - Optional proportional feed-forward for open-loop control and wind-up minimization
// - Wind-up limiting under overload conditions
// - Torque throttling under overload
// - TWI interface with PnP support
// - Parameter storage in EEPROM including TWI address
// - Acceleration, deceleration limits
// - Speed integration to estimate travelled distance
// - Add 'go to distance' mode with trapezoid speed-profiles - Needs testing
// - Added 32-bit and 16-bit atomic reads and writes. Note: 8-bit atomic writes are NOT supported
// - Added support for duty cycle throttling (basically torque-throttling)
// - Added current reading and max current detection
// - Added per cycle over-current detection and early-termination of cycle
// - Added servo-type operation with pot-based position feedback

// TODO:
// - Add current integration for power usage estimation
// - Add serial interface
// - Add servo-type (PWM) interface
// - Add optical encoder support
// - When sampling for fast-collapse high-side and during the on-state: we only need two states - the high-side should be on already
// - Switching between high- and low-collapse modes to equalize catch-diode load - make this user-selectable
// - Detect continous-current mode and do something about it!

// TODO TEST:
// - Servo mode in all four modes
// - Freewheeling and back-EMF in all four modes
// - Braking

// BUGS:
// - back-EMF measurment is different in fast-collapse and low-collapse modes. This make control leading to different speeds in the two modes.

#define BOARD_umHBridge
#define H_BRIDGE

#include <avr/pgmspace.h>
#include <avr/interrupt.h>#include <avr/sleep.h>

#include "common.h"
#include "opled.h"
#include "usart.h"
#include "twi_aap.h"
#include "eeprom.h"

void DebugStat();

// This is an 8-bit PWM
namespace PWM1 {
	enum eClkSrc {
		ClkNone = 0,
		Clk = (1 << CS10),
		ClkDiv1 = (1 << CS10),
		ClkDiv8 = (1 << CS11),
		ClkDiv64 = (1 << CS11) | (1 << CS10),
		ClkDiv256 = (1 << CS12),
		ClkDiv1024 = (1 << CS12) | (1 << CS10),
		ClkExtFall = (1 << CS12) | (1 << CS11),
		ClkExtRise = (1 << CS12) | (1 << CS11) | (1 << CS10)
	};

	void inline Init(eClkSrc aClkSrc) {
		SETBIT(DDRB,0x02|0x04); // Preprare PortB to output to handle disables
		CLRBIT(PORTB,0x02|0x04); // Set port bits to 0 so that disable will work correctly
		CLRBIT(PRR,PRTIM0);
		TCCR1A = (1 << WGM10);
		TCCR1B = aClkSrc | (1 << WGM12);
		OCR1A = 0x0000;
		OCR1B = 0x0000;
		ICR1 = 0x0000;
		TCNT1 = 0x0000;
	}
	void inline DisableChA() {               CLRBIT(TCCR1A,(1 << COM1A1)); }
	void inline DisableChB() {               CLRBIT(TCCR1A,(1 << COM1B1)); }
	void inline DisableChAB() {              CLRBIT(TCCR1A,(1 << COM1A1) | (1 << COM1B1)); }
	void inline EnableChA() {                SETBIT(TCCR1A,(1 << COM1A1)); }
	void inline EnableChB() {                SETBIT(TCCR1A,(1 << COM1B1)); }
	void inline EnableChAB() {               SETBIT(TCCR1A,(1 << COM1A1) | (1 << COM1B1)); }
	bool inline IsChAEnabled() {             return TESTBIT(TCCR1A,(1 << COM1A1)) != 0; }
	bool inline IsChBEnabled() {             return TESTBIT(TCCR1A,(1 << COM1B1)) != 0; }
	bool inline IsChAOrBEnabled() {          return TESTBIT(TCCR1A,(1 << COM1A1) | (1 << COM1B1)) != 0; }
	// We never set the high bits to anything but 0, so the high-byte in the TEMP register doesn't need to be set.
	void inline SetChannelA(uint8_t aValue) { OCR1AL = aValue; }
	uint8_t inline GetChannelA()            { return OCR1AL; }
	void inline SetChannelB(uint8_t aValue) { OCR1BL = aValue; }
	uint8_t inline GetChannelB()            { return OCR1BL; }
	void inline EnableIRQ_A() {              SETBIT(TIMSK1,(1 << OCIE1A)); }
	void inline EnableIRQ_B() {              SETBIT(TIMSK1,(1 << OCIE1B)); }
	void inline EnableIRQ_AB() {             SETBIT(TIMSK1,(1 << OCIE1A) | (1 << OCIE1B)); }
	void inline EnableIRQ_Overflow() {       SETBIT(TIMSK1,(1 << TOIE1)); }
	void inline EnableOnlyIRQ_A() {          TIMSK1 = (1 << OCIE1A); }
	void inline EnableOnlyIRQ_B() {          TIMSK1 = (1 << OCIE1B); }
	void inline EnableOnlyIRQ_Overflow() {   TIMSK1 = (1 << TOIE1); }
	void inline DisableIRQ_A() {             CLRBIT(TIMSK1,(1 << OCIE1A)); }
	void inline DisableIRQ_B() {             CLRBIT(TIMSK1,(1 << OCIE1B)); }
	void inline DisableIRQ_Overflow() {      CLRBIT(TIMSK1,(1 << TOIE1)); }
	void inline DisableIRQ_All() {           TIMSK1 = 0; }
	bool inline IsPendingIRQ_A() {           return (TESTBIT(TIFR1,(1 << OCF1A)) != 0); }
	bool inline IsPendingIRQ_B() {           return (TESTBIT(TIFR1,(1 << OCF1B)) != 0); }
	bool inline IsPendingIRQ_Overflow() {    return (TESTBIT(TIFR1,(1 << TOV1)) != 0); }
	void inline ClearPendingIRQ_A() {        TIFR1 = (1 << OCF1A); }
	void inline ClearPendingIRQ_B() {        TIFR1 = (1 << OCF1B); }
	void inline ClearPendingIRQ_Overflow() { TIFR1 = (1 << TOV1); }
	void inline ClearPendingIRQ_All() {      TIFR1 = (1 << OCF1A) | (1 << OCF1B) | (1 << TOV1); }
}

namespace ADConv {
	enum eRef {
		RefInt = (1 << REFS0) | (1 << REFS1),
		RefVcc = (1 << REFS0),
		RefExt = 0
	};
	enum eAdjust {
		LeftAdjust = ADLAR,
		RightAdjust = 0
	};
#if defined MEGA_BRIDGE
	const uint8_t Ch_MotorA = 7;
	const uint8_t Ch_MotorB = 2;
	const uint8_t Ch_MotorCurrent = 6;
	const uint8_t Ch_ServoPot = 3;
	const uint8_t Ch_Battery = 1;

	const eRef Ref_MotorA = RefVcc;
	const eRef Ref_MotorB = RefVcc;
	const eRef Ref_MotorCurrent = RefInt;
	const eRef Ref_ServoPot = RefVcc;
	const eRef Ref_Battery = RefVcc;
#elif defined H_BRIDGE
	const uint8_t Ch_MotorA = 7;
	const uint8_t Ch_MotorB = 2;
	const uint8_t Ch_MotorCurrent = 6;
	const uint8_t Ch_ServoPot = 3;

	const eRef Ref_MotorA = RefInt;
	const eRef Ref_MotorB = RefInt;
	const eRef Ref_MotorCurrent = RefInt;
	const eRef Ref_ServoPot = RefVcc;
	const eRef Ref_Battery = RefVcc;
#elif defined SERVO_BRAIN
	const uint8_t Ch_MotorA = 0;
	const uint8_t Ch_MotorB = 2;
	const uint8_t Ch_MotorCurrent = 6;
	const uint8_t Ch_ServoPot = 3;

	const eRef Ref_MotorA = RefVcc;
	const eRef Ref_MotorB = RefVcc;
	const eRef Ref_MotorCurrent = RefVcc;
	const eRef Ref_ServoPot = RefVcc;
	const eRef Ref_Battery = RefVcc;
#else
	#error HW version is not specified
#endif

	const uint8_t ADCSRA_BaseValue = (1 << ADEN) | (1 << ADATE) | (1 << ADPS2) | (1 << ADPS1);
	static inline void Init() {
		ADMUX = (1<< REFS0) | 15; // AVCC is the default reference
		ADCSRA = ADCSRA_BaseValue;
		ADCSRB = 0; // Free-running mode
		DIDR0 = (1 << Ch_MotorA) | (1 << Ch_MotorB) | (1 << Ch_MotorCurrent);
	}
	static inline void SetChannel(uint8_t aChannel) {
		ADMUX = (ADMUX & 0xf0) | (aChannel & 0x0f);
	}
	static inline void SetChannel(uint8_t aChannel,eRef aRef) {
		ADMUX = (ADMUX & 0x20) | (aChannel & 0x0f) | aRef;
	}
	static inline void SetChannel(uint8_t aChannel,eRef aRef,eAdjust aAdjust) {
		ADMUX = (aChannel & 0x0f) | aRef | aAdjust;
	}
	static inline void StartConversion(uint8_t aChannel) {
		SetChannel(aChannel);
		ADCSRA = ADCSRA_BaseValue | (1 << ADSC) | (1 << ADIE);
	}
	static inline void StartConversion(uint8_t aChannel,eRef aRef) {
		SetChannel(aChannel,aRef);
		ADCSRA = ADCSRA_BaseValue | (1 << ADSC) | (1 << ADIE);
	}
	static inline void StartConversion(uint8_t aChannel,eRef aRef, eAdjust aAdjust) {
		SetChannel(aChannel,aRef,aAdjust);
		ADCSRA = ADCSRA_BaseValue | (1 << ADSC) | (1 << ADIE);
	}
	static inline void StopConversion() {
		CLRBIT(ADCSRA,(1 << ADEN)); // This might delete the pending IRQ request, but we don't really care
	}
	static inline uint8_t GetChannel() {
		return ADMUX & 0x0f;
	}
	static uint16_t GetSample() {
		while((ADCSRA & (1 << ADIF)) == 0); // Wait until conversion finishes
		uint16_t RetVal = ADC;
		SETBIT(ADCSRA,ADIF);                // Clear the pending interrupt request (though we're polling)
		return RetVal;
	}
	static inline uint16_t FastGetSample() {
		return ADC;
	}
}

namespace EEPROM_layout {
	const uint16_t DataRecord_Ofs = 0x00; // size is sizeof(HBridge::DataRecord)
	const uint16_t DataValid_Ofs = 0xfe;
}

template<typename T> inline T min(T aA,T aB) { return (aA>aB)?aB:aA; }
template<typename T> inline T max(T aA,T aB) { return (aA>aB)?aA:aB; }

#define SHOOT_THROUGH_DELAY for(int i=0;i<10000;++i);

namespace HBridge {
	enum eSampleStates {
		SampleState_PreFastCollapse = 0,
		SampleState_FastCollapse,
		SampleState_PostFastCollapse,

		SampleState_PreSampleBase,
		SampleState_PreSampleBase2,
		SampleState_SampleBase,
		SampleState_PreSearchMax,
		SampleState_PreSamplePot,
		SampleState_SamplePot,
		SampleState_SearchMax,
		SampleState_SearchMin,
		SampleState_PreCurrentSample,
		SampleState_CurrentSample1,
		SampleState_CurrentSample2,
		SampleState_CurrentSample3,
		// off-band battery sampling for fast-high-side collapse mode
		SampleState_PreSampleBat,
		SampleState_SampleBat
	};
	enum eOperatingModes {
		OperatingMode_Speed = 0,
		OperatingMode_Servo = 1
	};

	const int16_t RequestFreewheel = 0x4000;
	const int16_t RequestBrake     = 0x4001;

	const uint8_t EEPROMDataValid = 0x01;

	const uint8_t GuardTime = 255 - 47; // Maximum allowed duty cycle
	const uint8_t ControlTime = 255 - 10;
#if defined MEGA_BRIDGE
	const uint8_t LoBMask = (0x01 << 2);
	const uint8_t LoAMask = (0x01 << 1);
	const uint8_t HiBMask = (0x01 << 5);
	const uint8_t HiAMask = (0x01 << 6);
	const eOperatingModes DefaultOperatingMode = OperatingMode_Speed;

	const int16_t Def_IFactor = 0;
	const int16_t Def_PFactor = 0;
	const int16_t Def_DFactor = 0;
	const int16_t Def_PFFactor = 0x0100;
#elif defined H_BRIDGE
	const uint8_t LoBMask = (0x01 << 2);
	const uint8_t LoAMask = (0x01 << 1);
	const uint8_t HiBMask = (0x01 << 5);
	const uint8_t HiAMask = (0x01 << 6);
	const eOperatingModes DefaultOperatingMode = OperatingMode_Speed;

	const int16_t Def_IFactor = 0;
	const int16_t Def_PFactor = 0;
	const int16_t Def_DFactor = 0;
	const int16_t Def_PFFactor = 0x0100;
#elif defined SERVO_BRAIN
	const uint8_t LoBMask = (0x01 << 2);
	const uint8_t LoAMask = (0x01 << 1);
	const uint8_t HiBMask = (0x01 << 6);
	const uint8_t HiAMask = (0x01 << 5);
	const eOperatingModes DefaultOperatingMode = OperatingMode_Servo;

	const int16_t Def_IFactor = 0;
	const int16_t Def_PFactor = 0x0200;
	const int16_t Def_DFactor = 0;
	const int16_t Def_PFFactor = 0;
#else
#error No HW version is specified!
#endif

	enum CollapseStates {
		FastCollapseHighSide = 0,
		FastCollapseLowSide,
		SlowCollapseHighSide,
		SlowCollapseLowSide,
		CollapseStateMask = 0x0f,
		CollapseStateAutoCycle = 0x10
	};

	uint8_t ADSampleIdx;
	struct PublicData {
		// The layout of this record IS important.
		// This is the public interface that is accessible through the TWI interface

		// Speed control request signal R/W (Scaled between -0x3fff and 0x3fff
		// 0x4000 is freewheeling and 0x4001 is braking
		int16_t RequestValue;

		// PID control loop parameters R/W
		int16_t IFactor;
		int16_t PFactor;
		int16_t DFactor;
		int16_t PFFactor;
		int16_t SampleOffset;

		// Request change limits (acceleration limits) R/W
		int16_t MaxPositiveChange;
		int16_t MaxNegativeChange;

		// Travel (distance counter) R/W
		int32_t Distance;

		// Travel cutoff  R/W
		int32_t FwDistanceLimit;
		int32_t BwDistanceLimit;

		// Current estimated distance required to stop (R/O)
		int32_t DistanceToStop;

		// Modified request (R/O)
		int16_t CurrentRequest;

		// Command given to the H-bridge R/O
		int16_t Command;

		// PID loop working set R/O
		int16_t IValue;
		int16_t LastError;
		int16_t Error;

		// Last Back-EMF sample R/O
		int16_t VoltageSample;

		// Back-EMF sampling code working set R/O
		int16_t BaseValue;

		int16_t SampleCnt_Snapshot;
		int16_t MinValue_Snapshot;

		// Private members: not part of the communication interface, but added to this structure for potential debugging
		int16_t MinValue;
		int16_t MaxValue;
		int16_t SampleCnt;

		int16_t OriginalRequestValue;

		uint8_t SampleState;
		uint8_t DutyCycleThrottle;
		uint8_t NewData;
		uint8_t IsForward;

		uint16_t CurrentMax;
		uint16_t CurrentDelta;
		uint16_t CurrentTemp;
		uint16_t CurrentMaxSearch;

		uint8_t ADBufferEnable;
		uint8_t ADBufferEnableHost;

		uint16_t CurrentLimit;

		uint8_t OperatingMode;
		uint8_t CollapseState;

		uint16_t ADBuffer[80];
	} DataRecord;

	inline uint8_t* GetDataRecord8(uint8_t aOfs)   { return ((uint8_t *)&DataRecord)+aOfs; }
	inline uint16_t* GetDataRecord16(uint8_t aOfs) { return (uint16_t *)(((uint8_t *)&DataRecord)+aOfs); }
	inline uint32_t* GetDataRecord32(uint8_t aOfs) { return (uint32_t *)(((uint8_t *)&DataRecord)+aOfs); }
	const inline size_t GetDataRecordSize() { return sizeof(DataRecord); }
	uint8_t GetDataElementSize(uint8_t aOfs) {
		#define FIELD_OFFSET(aField) ((uint8_t)((size_t)&(HBridge::DataRecord.aField)-(size_t)&HBridge::DataRecord))
		#define OFFSET_ENTRY(aField) if (aOfs >= FIELD_OFFSET(aField)) return sizeof(DataRecord.aField); else
		#define OFFSET_ENTRY_2(aField,aSize) if (aOfs >= FIELD_OFFSET(aField)) return (aSize); else
		OFFSET_ENTRY_2(ADBuffer,sizeof(DataRecord.ADBuffer[0]))
		OFFSET_ENTRY(CollapseState)
		OFFSET_ENTRY(OperatingMode)
		OFFSET_ENTRY(CurrentLimit)
		OFFSET_ENTRY(ADBufferEnableHost)
		OFFSET_ENTRY(ADBufferEnable)
		OFFSET_ENTRY(CurrentMaxSearch)
		OFFSET_ENTRY(CurrentTemp)
		OFFSET_ENTRY(CurrentDelta)
		OFFSET_ENTRY(CurrentMax)
		OFFSET_ENTRY(IsForward)
		OFFSET_ENTRY(NewData)
		OFFSET_ENTRY(DutyCycleThrottle)
		OFFSET_ENTRY(SampleState)
		OFFSET_ENTRY(OriginalRequestValue)
		OFFSET_ENTRY(SampleCnt)
		OFFSET_ENTRY(MaxValue)
		OFFSET_ENTRY(MinValue)
		OFFSET_ENTRY(MinValue_Snapshot)
		OFFSET_ENTRY(SampleCnt_Snapshot)
		OFFSET_ENTRY(BaseValue)
		OFFSET_ENTRY(VoltageSample)
		OFFSET_ENTRY(Error)
		OFFSET_ENTRY(LastError)
		OFFSET_ENTRY(IValue)
		OFFSET_ENTRY(Command)
		OFFSET_ENTRY(CurrentRequest)
		OFFSET_ENTRY(DistanceToStop)
		OFFSET_ENTRY(BwDistanceLimit)
		OFFSET_ENTRY(FwDistanceLimit)
		OFFSET_ENTRY(Distance)
		OFFSET_ENTRY(MaxNegativeChange)
		OFFSET_ENTRY(MaxPositiveChange)
		OFFSET_ENTRY(SampleOffset)
		OFFSET_ENTRY(PFFactor)
		OFFSET_ENTRY(DFactor)
		OFFSET_ENTRY(PFactor)
		OFFSET_ENTRY(IFactor)
		OFFSET_ENTRY(RequestValue)
		return 1;
		#undef FIELD_OFFSET
		#undef OFFSET_ENTRY
		#undef OFFSET_ENTRY2
	}

	void FreeWheel();

	inline void SaveSettings() {
		uint8_t *Data = (uint8_t *)&DataRecord;
		for(uint8_t i=EEPROM_layout::DataRecord_Ofs;i<EEPROM_layout::DataRecord_Ofs+sizeof(DataRecord);++i,++Data) {
			EEPROM::SetByte(i,*Data);
		}
		EEPROM::SetByte(EEPROM_layout::DataValid_Ofs,EEPROMDataValid);
		EEPROM::Wait();
	}

	inline void Init() {
		// Init to all channels off - this is the free-wheeling state
		PWM1::Init(PWM1::ClkDiv256); // Set clock to clkI/O / 256 -> full cycle is around 120Hz with an 8MHz clock
		//PWM1::Init(PWM1::ClkDiv64); // Set clock to clkI/O / 64 -> full cycle is around 500Hz with an 8MHz clock
	    CLRBIT(PORTD,HiAMask);
		CLRBIT(PORTD,HiBMask);
	    CLRBIT(PORTB,LoBMask);
		CLRBIT(PORTB,LoBMask);
	    SETBIT(DDRB,LoBMask);
		SETBIT(DDRB,LoAMask);
	    SETBIT(DDRD,HiBMask);
		SETBIT(DDRD,HiAMask);

        // No control loop - this is the default.
		DataRecord.IFactor  = Def_IFactor;
		DataRecord.PFactor  = Def_PFactor;
		DataRecord.DFactor  = Def_DFactor;
		DataRecord.PFFactor = Def_PFFactor;
		DataRecord.SampleOffset = 0;
		DataRecord.CollapseState = FastCollapseHighSide;
		DataRecord.OperatingMode = DefaultOperatingMode;
		// No acceleration control - this is the default.
		DataRecord.MaxPositiveChange = 0x7fff;
		DataRecord.MaxNegativeChange = 0x7fff;

		if (EEPROM::GetByte(EEPROM_layout::DataValid_Ofs) == EEPROMDataValid) {
			uint8_t *Data = (uint8_t *)&DataRecord;
			for(uint8_t i=EEPROM_layout::DataRecord_Ofs;i<EEPROM_layout::DataRecord_Ofs+sizeof(DataRecord);++i,++Data) {
				*Data = EEPROM::GetByte(i);
			}
		}

		DataRecord.IValue = 0;
		DataRecord.Error = 0;
		DataRecord.LastError = 0;
		DataRecord.RequestValue = RequestFreewheel;
		DataRecord.OriginalRequestValue = RequestFreewheel;
		DataRecord.IsForward = true;
		DataRecord.NewData = false;
		DataRecord.Distance = 0;
		DataRecord.FwDistanceLimit = 0x7fffffff;
		DataRecord.BwDistanceLimit = 0x80000000;
		DataRecord.DutyCycleThrottle = GuardTime;
		DataRecord.CurrentLimit = 0xffff; // Anything over 0x3ff is OFF
		for(uint8_t i = 0;i<sizeof(DataRecord.ADBuffer)/sizeof(DataRecord.ADBuffer[0]);++i) {
			DataRecord.ADBuffer[i] = 0;
		}
		ADSampleIdx = 0;
		DataRecord.ADBufferEnable = 0;
		DataRecord.ADBufferEnableHost = true;

		FreeWheel();
		PWM1::EnableIRQ_AB();

		DataRecord.SampleState = SampleState_CurrentSample3;
		ADConv::StartConversion(ADConv::Ch_MotorCurrent);
	}
	// If made inline GCC generates invalid code
	void Forward(uint8_t aSpeed) {
		if (aSpeed > DataRecord.DutyCycleThrottle) aSpeed = DataRecord.DutyCycleThrottle;
		if (aSpeed > GuardTime) aSpeed = GuardTime;
		// Allways clear first, than set
	    CLRBIT(PORTB,LoBMask);
	    CLRBIT(PORTB,LoAMask);
	    CLRBIT(PORTD,HiBMask);
	    SETBIT(PORTD,HiAMask);
	    PWM1::SetChannelB(aSpeed);
	    PWM1::SetChannelA(ControlTime);
	    PWM1::DisableChAB();
	    if (aSpeed > 0) PWM1::EnableChB();
	    DataRecord.IsForward = true;
	}
	void Backward(uint8_t aSpeed) {
		if (aSpeed > DataRecord.DutyCycleThrottle) aSpeed = DataRecord.DutyCycleThrottle;
		if (aSpeed > GuardTime) aSpeed = GuardTime;
		// Allways clear first, than set
	    CLRBIT(PORTB,LoBMask);
	    CLRBIT(PORTB,LoAMask);
	    CLRBIT(PORTD,HiAMask);
		SETBIT(PORTD,HiBMask);
	    PWM1::SetChannelA(aSpeed);
	    PWM1::SetChannelB(ControlTime);
	    PWM1::DisableChAB();
		if (aSpeed > 0) PWM1::EnableChA();
	    DataRecord.IsForward = false;
	}
	inline void FastFieldCollapseHighSide() {
		if (PWM1::IsChAEnabled()) {
    		CLRBIT(PORTD,HiBMask);
    		CLRBIT(PORTD,HiAMask);
    		SETBIT(PORTD,HiAMask);
		} else if (PWM1::IsChBEnabled()) {
    		CLRBIT(PORTD,HiAMask);
    		CLRBIT(PORTD,HiBMask);
    		SETBIT(PORTD,HiBMask);
		}
	}
	inline void FastFieldCollapseLowSide() {
		if (PWM1::IsChAEnabled()) {
			CLRBIT(PORTD,HiAMask);
			CLRBIT(PORTD,HiBMask);
			SHOOT_THROUGH_DELAY;
			CLRBIT(PORTB,LoAMask);
			PWM1::DisableChAB();
			SETBIT(PORTB,LoBMask);
		} else if (PWM1::IsChBEnabled()) {
			CLRBIT(PORTD,HiAMask);
			CLRBIT(PORTD,HiBMask);
			SHOOT_THROUGH_DELAY;
			CLRBIT(PORTB,LoBMask);
			PWM1::DisableChAB();
			SETBIT(PORTB,LoAMask);
		}
	}
	inline void SlowFieldCollapseHighSide() {
	}
	inline void SlowFieldCollapseLowSide() {
		if (PWM1::IsChAEnabled()) {
			CLRBIT(PORTD,HiAMask);
			CLRBIT(PORTD,HiBMask);
			SHOOT_THROUGH_DELAY;
			CLRBIT(PORTB,LoBMask);
			PWM1::DisableChAB();
			SETBIT(PORTB,LoAMask);
		} else if (PWM1::IsChBEnabled()) {
			CLRBIT(PORTD,HiAMask);
			CLRBIT(PORTD,HiBMask);
			SHOOT_THROUGH_DELAY;
			CLRBIT(PORTB,LoAMask);
			PWM1::DisableChAB();
			SETBIT(PORTB,LoBMask);
		}
	}
	inline void ResetAfterFastCollapse() {
		if (TESTBIT(PORTD,HiAMask) != 0) {
			CLRBIT(PORTD,HiAMask);
			SETBIT(PORTD,HiBMask);
		} else if (TESTBIT(PORTD,HiBMask) != 0) {
			CLRBIT(PORTD,HiBMask);
			SETBIT(PORTD,HiAMask);
		} else if (TESTBIT(PORTB,LoAMask) != 0) {
			CLRBIT(PORTB,LoAMask);
			SETBIT(PORTB,LoBMask);
		} else if (TESTBIT(PORTB,LoBMask) != 0) {
			CLRBIT(PORTB,LoBMask);
			SETBIT(PORTB,LoAMask);
		}
	}

	void CollapseField() {
		switch (DataRecord.CollapseState & CollapseStateMask) {
			case FastCollapseHighSide:
				FastFieldCollapseHighSide();
			break;
			case FastCollapseLowSide:
				FastFieldCollapseLowSide();
			break;
			default:
			case SlowCollapseHighSide:
				SlowFieldCollapseHighSide();
			break;
			case SlowCollapseLowSide:
				SlowFieldCollapseLowSide();
			break;
		}
	}

	inline void SwitchCollapseType() {
		switch (DataRecord.CollapseState & CollapseStateMask) {
			case FastCollapseHighSide:
				if (TESTBIT(DataRecord.CollapseState,CollapseStateAutoCycle) != 0) {
					DataRecord.CollapseState = CollapseStateAutoCycle | FastCollapseLowSide;
				}
			break;
			case FastCollapseLowSide:
				if (TESTBIT(DataRecord.CollapseState,CollapseStateAutoCycle) != 0) {
					DataRecord.CollapseState = CollapseStateAutoCycle | FastCollapseHighSide;
				}
			break;
			default:
			case SlowCollapseHighSide:
				if (TESTBIT(DataRecord.CollapseState,CollapseStateAutoCycle) != 0) {
					DataRecord.CollapseState = CollapseStateAutoCycle | SlowCollapseLowSide;
				} else {
					DataRecord.CollapseState = SlowCollapseHighSide;
				}
			break;
			case SlowCollapseLowSide:
				if (TESTBIT(DataRecord.CollapseState,CollapseStateAutoCycle) != 0) {
					DataRecord.CollapseState = CollapseStateAutoCycle | SlowCollapseHighSide;
				}
			break;
		}
	}
	inline void ResetHighSide() {
	    if (TESTBIT(PORTD,HiBMask)) {
	    	CLRBIT(PORTD,HiBMask);
	    	SETBIT(PORTD,HiBMask);
	    }
	    if (TESTBIT(PORTD,HiAMask)) {
	    	CLRBIT(PORTD,HiAMask);
	    	SETBIT(PORTD,HiAMask);
	    }
	}
	void FreeWheel() {
		// Disable everything
	    CLRBIT(PORTB,LoBMask);
	    CLRBIT(PORTB,LoAMask);
    	CLRBIT(PORTD,HiBMask);
    	CLRBIT(PORTD,HiAMask);
	    PWM1::DisableChAB();
		// Set up interrupts to some reasonable values
		if (!DataRecord.IsForward) {
		    PWM1::SetChannelA(0x10);
		    PWM1::SetChannelB(ControlTime);
	    } else {
		    PWM1::SetChannelB(0x10);
		    PWM1::SetChannelA(ControlTime);
	    }
	}
	void Brake() {
		// Allways clear first, than set
	    CLRBIT(PORTB,LoBMask);
	    CLRBIT(PORTB,LoAMask);
	    PWM1::DisableChAB();
	    PWM1::SetChannelB(0x10); // Set it to some reasonable value
	    PWM1::SetChannelA(ControlTime);
	    DataRecord.IsForward = true;
	    SETBIT(PORTD,HiAMask);
	    SETBIT(PORTD,HiBMask);
	}
	void HandleOverload() {
		// Turn off both low-side FETs - this will remove the load for the rest of the cycle
	    CLRBIT(PORTB,LoBMask);
	    CLRBIT(PORTB,LoAMask);
	    PWM1::DisableChAB();
	}


	int16_t ScaledMult(int16_t aA, int16_t aB) {
		return (((int32_t)aA * (int32_t)aB) >> 8);
	}

	static inline void DoControl() {
		// Control acceleration
		// Note: DoControl will not be called if RequestValue is Freewheel or Braking
		int16_t SpeedDiff = DataRecord.RequestValue - DataRecord.CurrentRequest;
		if (SpeedDiff > DataRecord.MaxPositiveChange) {
			DataRecord.CurrentRequest += DataRecord.MaxPositiveChange;
		} else if (SpeedDiff < -DataRecord.MaxNegativeChange) {
			DataRecord.CurrentRequest -= DataRecord.MaxNegativeChange;
		} else {
			DataRecord.CurrentRequest = DataRecord.RequestValue;
		}

		// Limit motion to travel cutoff values. Note that we update RequestValue and not CurrentRequest
		// so stop will be smooth. Since we estimage the time required to stop this also implements
		// the go-to-distance functionality.
		int16_t Change = (DataRecord.OriginalRequestValue > 0)?DataRecord.MaxNegativeChange:-DataRecord.MaxPositiveChange;
		DataRecord.DistanceToStop = ((int32_t)DataRecord.VoltageSample * (int32_t)DataRecord.VoltageSample / (int32_t)Change) << 3;
		int32_t StopPosition = DataRecord.Distance + DataRecord.DistanceToStop;
		if (DataRecord.OriginalRequestValue > 0) {
			if (StopPosition > DataRecord.FwDistanceLimit) {
				DataRecord.RequestValue = DataRecord.CurrentRequest - min(DataRecord.MaxNegativeChange,DataRecord.CurrentRequest);
			}
		} else {
			if (StopPosition < DataRecord.BwDistanceLimit) {
				DataRecord.RequestValue = DataRecord.CurrentRequest + min(DataRecord.MaxPositiveChange,-DataRecord.CurrentRequest);
			}
		}

		// Control loop
		int16_t ScaledRequest = DataRecord.CurrentRequest >> 4;
		DataRecord.LastError = DataRecord.Error;
		DataRecord.Error = DataRecord.VoltageSample - ScaledRequest;
		int16_t DValue = DataRecord.Error - DataRecord.LastError;
		DataRecord.Command = ScaledMult(ScaledRequest,DataRecord.PFFactor) + ScaledMult(DataRecord.IValue,DataRecord.IFactor) + ScaledMult(DataRecord.Error,DataRecord.PFactor) + ScaledMult(DValue,DataRecord.DFactor);
		// Limit command to valid range and limit IValue growth as well
		if (DataRecord.Command >= 0x100) {
			DataRecord.Command = 0xffL;
			// In an overflow case allow integrator value updates if it works against the overflow (sign bits are differenet)
			if (((DataRecord.IValue ^ DataRecord.Error) & 0x8000) != 0) DataRecord.IValue += DataRecord.Error;
		} else if (DataRecord.Command <= -0x100) {
			DataRecord.Command = -0xffL;
			// In an overflow case allow integrator value updates if it works against the overflow (sign bits are differenet)
			if (((DataRecord.IValue ^ DataRecord.Error) & 0x8000) != 0) DataRecord.IValue += DataRecord.Error;
		} else {
			// Use saturated arithmetics to avoid roll-over in the accumulator
			int32_t TempIValue = (int32_t)DataRecord.IValue + (int32_t)DataRecord.Error;
			if (TempIValue > 0x7fff) {
				DataRecord.IValue = 0x7fffL;
			} else if (TempIValue < -0x7fffL) {
				DataRecord.IValue = -0x7fff;
			} else {
				DataRecord.IValue = TempIValue;
			}
		}
		if (DataRecord.Command > 0) Forward(DataRecord.Command); else Backward((-DataRecord.Command));

		DataRecord.NewData = true;
	}

	uint8_t SampleStateCnt = 0;

	inline bool BatSampleWhileOn() {
		uint8_t OnTime = (DataRecord.IsForward)?PWM1::GetChannelB():PWM1::GetChannelA();
		return (OnTime > 128);
	}

	// Samples the positive pole of the motor WRT back-EMF
	void SetADChannelMotorPositive() {
		if (DataRecord.IsForward) {
			ADConv::SetChannel(ADConv::Ch_MotorA,ADConv::Ref_MotorA,ADConv::RightAdjust);
		} else {
			ADConv::SetChannel(ADConv::Ch_MotorB,ADConv::Ref_MotorB,ADConv::RightAdjust);
		}
	}

	// Samples the negative pole of the motor WRT back-EMF
	void SetADChannelMotorNegative() {
		if (DataRecord.IsForward) {
			ADConv::SetChannel(ADConv::Ch_MotorB,ADConv::Ref_MotorB,ADConv::RightAdjust);
		} else {
			ADConv::SetChannel(ADConv::Ch_MotorA,ADConv::Ref_MotorA,ADConv::RightAdjust);
		}
	}

	static void StartOffPhase(bool aWasChAOrBEnabled) {
		// Start new measurements
		switch (DataRecord.CollapseState & CollapseStateMask) {
			case FastCollapseLowSide:
				SetADChannelMotorNegative();
				if (aWasChAOrBEnabled) {
					DataRecord.SampleState = SampleState_PreFastCollapse;
				} else {
					DataRecord.SampleState = SampleState_PostFastCollapse;
				}
			break;
			case FastCollapseHighSide:
				SetADChannelMotorPositive();
				if (aWasChAOrBEnabled) {
					DataRecord.SampleState = SampleState_PreFastCollapse;
				} else {
					DataRecord.SampleState = SampleState_PostFastCollapse;
				}
			break;
			case SlowCollapseLowSide:
				SetADChannelMotorNegative();
				DataRecord.SampleState = SampleState_PreSampleBase;
			break;
			case SlowCollapseHighSide:
				SetADChannelMotorPositive();
				DataRecord.SampleState = SampleState_PreSampleBase;
			break;
		}
	}

	static inline void StartOnPhase() {
		switch (DataRecord.CollapseState & CollapseStateMask) {
			case FastCollapseLowSide:
				ADConv::SetChannel(ADConv::Ch_MotorCurrent,ADConv::Ref_MotorCurrent,ADConv::RightAdjust);
				DataRecord.SampleState = SampleState_PreCurrentSample;
			break;
			case FastCollapseHighSide:
				if (BatSampleWhileOn()) {
					SetADChannelMotorPositive();
					DataRecord.SampleState = SampleState_PreSampleBat;
					SampleStateCnt = 0;
				} else {
					ADConv::SetChannel(ADConv::Ch_MotorCurrent,ADConv::Ref_MotorCurrent,ADConv::RightAdjust);
					DataRecord.SampleState = SampleState_PreCurrentSample;
				}
			break;
			case SlowCollapseLowSide:
				ADConv::SetChannel(ADConv::Ch_MotorCurrent,ADConv::Ref_MotorCurrent,ADConv::RightAdjust);
				DataRecord.SampleState = SampleState_PreCurrentSample;
			break;
			case SlowCollapseHighSide:
				ADConv::SetChannel(ADConv::Ch_MotorCurrent,ADConv::Ref_MotorCurrent,ADConv::RightAdjust);
				DataRecord.SampleState = SampleState_PreCurrentSample;
			break;
		}
		bool InvertSample = !DataRecord.IsForward;
		switch (DataRecord.OperatingMode) {
			default:
			case OperatingMode_Speed: {
				int16_t LocalBaseValue = DataRecord.BaseValue;
				switch (DataRecord.CollapseState & CollapseStateMask) {
					case FastCollapseHighSide:
					case SlowCollapseHighSide:
					break;
					case FastCollapseLowSide:
					case SlowCollapseLowSide:
						InvertSample = !InvertSample;
						LocalBaseValue = 0; // These are ground-based measurements...
					break;
				}
				if (!InvertSample) {
					DataRecord.VoltageSample = LocalBaseValue - DataRecord.MinValue;
				} else {
					DataRecord.VoltageSample = DataRecord.MinValue - LocalBaseValue;
				}
			}
			break;
			case OperatingMode_Servo:
				DataRecord.VoltageSample = DataRecord.MaxValue;
			break;
		}

		DataRecord.VoltageSample -= DataRecord.SampleOffset;
		DataRecord.SampleCnt_Snapshot = DataRecord.SampleCnt;
		DataRecord.MinValue_Snapshot = DataRecord.MinValue;
	}

	uint8_t BlinkCnt;
	const uint8_t BlinkInterval = 50;

	void HandleIRQ(bool IsIRQA) {
		if (DataRecord.IsForward == IsIRQA) {
			// Almost at the end: grab back-EMF data from sampling,
			// do the control, and start sampling for current
			StartOnPhase();

			switch (DataRecord.RequestValue) {
				case RequestFreewheel:
					FreeWheel();
					DataRecord.CurrentRequest = 0;
				break;
				case RequestBrake:
					Brake();
					DataRecord.CurrentRequest = 0;
				break;
				default:
					// Update the travalled distance:
					DataRecord.Distance += DataRecord.VoltageSample;
					DoControl();
				break;
			}
			SwitchCollapseType();
			// Toggle user LED
			++BlinkCnt;
			if (BlinkCnt > BlinkInterval) {
				BlinkCnt = 0;
				OpLed::Toggle();
			}
		} else {
			// At the end of the on-part: reverse voltage across motor to fast-discharge it.
			bool WasChAOrBEnabled = PWM1::IsChAOrBEnabled();
			CollapseField();

			ADSampleIdx = 0;

			if (DataRecord.ADBufferEnable == 0) {
				DataRecord.ADBufferEnable = 1;
			}
			if (DataRecord.ADBufferEnableHost) {
				DataRecord.ADBufferEnableHost = false;
				DataRecord.ADBufferEnable = 0;
			}

			// Start sampling for voltages and back-EMF
			StartOffPhase(WasChAOrBEnabled);
			ResetHighSide();
		}
	}

	uint8_t CurrentSampleCnt;
	const uint8_t CollapseSearchBlank = 1;
	const uint16_t CollapseSearchLowLimit = 0x30;
	const uint16_t CollapseSearchHighLimit = 0x90;

	void Sample() {
		int16_t CurData = ADConv::FastGetSample();

		// Save off samples in the ADBuffer for host-side 'scope' display.
		if (DataRecord.ADBufferEnable == 0) {
			if (ADSampleIdx < sizeof(DataRecord.ADBuffer)/sizeof(DataRecord.ADBuffer[0])) {
				int16_t ADSampleData = (int16_t)ADConv::GetChannel() << 10;
				ADSampleData |= CurData;
				DataRecord.ADBuffer[ADSampleIdx] = ADSampleData;
				++ADSampleIdx;
				if (ADSampleIdx < sizeof(DataRecord.ADBuffer)/sizeof(DataRecord.ADBuffer[0])) {
					DataRecord.ADBuffer[ADSampleIdx] = 0;
				}
				TOGGLEBIT(PORTD,0x10);
			}
		}

		// State-machine for data-sampling.
		switch (DataRecord.SampleState) {
			case SampleState_PreFastCollapse:
				DataRecord.SampleState = SampleState_FastCollapse;
				// Update max current from the search field
				DataRecord.CurrentMax = DataRecord.CurrentMaxSearch;
				// TODO: If DataRecord.CurrentTemp isn't DataRecord.CurrentMaxSearch (more or less)
				// than the over-current protection must have been activated.
				SampleStateCnt = 0;
			break;
			case SampleState_FastCollapse:
				// Wait in this state until turn-off transient is over
				switch (DataRecord.CollapseState & CollapseStateMask) {
					case FastCollapseLowSide:
						if (CurData < CollapseSearchLowLimit && SampleStateCnt > CollapseSearchBlank) {
							ResetAfterFastCollapse();
							DataRecord.SampleState = SampleState_PostFastCollapse;
						} else if (CurData > CollapseSearchHighLimit) {
							SampleStateCnt = CollapseSearchBlank;
						}
						++SampleStateCnt;
					break;
					case FastCollapseHighSide:
						if (CurData > CollapseSearchHighLimit && SampleStateCnt > CollapseSearchBlank) {
							ResetAfterFastCollapse();
							DataRecord.SampleState = SampleState_PostFastCollapse;
						} else if (CurData < CollapseSearchLowLimit) {
							SampleStateCnt = CollapseSearchBlank;
						}
						++SampleStateCnt;
					break;
				}
			break;
			case SampleState_PostFastCollapse:
				switch (DataRecord.OperatingMode) {
					default:
					case OperatingMode_Speed:
						switch (DataRecord.CollapseState & CollapseStateMask) {
							case FastCollapseLowSide:
								SetADChannelMotorPositive();
								DataRecord.BaseValue = CurData;
								DataRecord.SampleState = SampleState_PreSearchMax;
							break;
							case FastCollapseHighSide:
								if (BatSampleWhileOn()) {
									SetADChannelMotorNegative();
									DataRecord.SampleState = SampleState_PreSearchMax;
								} else {
									SetADChannelMotorPositive();
									DataRecord.SampleState = SampleState_PreSampleBat;
									SampleStateCnt = 0;
								}
							break;
						}
					break;
					case OperatingMode_Servo:
						ADConv::SetChannel(ADConv::Ch_ServoPot,ADConv::Ref_ServoPot,ADConv::RightAdjust);
						DataRecord.SampleState = SampleState_PreSamplePot;
					break;
				}
			break;
			case SampleState_PreSampleBase:
				// Throw away the data, but the next one is for real!
				DataRecord.SampleState = SampleState_PreSampleBase2;
				switch (DataRecord.CollapseState & CollapseStateMask) {
					case SlowCollapseLowSide:
						SetADChannelMotorNegative();
					break;
					case SlowCollapseHighSide:
						SetADChannelMotorPositive();
					break;
				}
				// Update max current from the search field
				DataRecord.CurrentMax = DataRecord.CurrentMaxSearch;
				// TODO: If DataRecord.CurrentTemp isn't DataRecord.CurrentMaxSearch (more or less)
				// than the over-current protection must have been activated.
				SampleStateCnt = 0;
			break;
			case SampleState_PreSampleBase2:
				// throw away this data, but the next one is for real!
				DataRecord.SampleState = SampleState_SampleBase;
			break;
			case SampleState_SampleBase:
				switch (DataRecord.OperatingMode) {
					default:
					case OperatingMode_Speed:
						switch (DataRecord.CollapseState & CollapseStateMask) {
							case SlowCollapseLowSide:
								SetADChannelMotorPositive();
								DataRecord.BaseValue = CurData;
								DataRecord.SampleState = SampleState_PreSearchMax;
							break;
							case SlowCollapseHighSide:
								SetADChannelMotorNegative();
								DataRecord.BaseValue = CurData;
								DataRecord.SampleState = SampleState_PreSearchMax;
							break;
						}
					break;
					case OperatingMode_Servo:
						ADConv::SetChannel(ADConv::Ch_ServoPot,ADConv::Ref_ServoPot,ADConv::RightAdjust);
						DataRecord.SampleState = SampleState_PreSamplePot;
					break;
				}
			break;
			case SampleState_PreSamplePot:
				DataRecord.SampleState = SampleState_SamplePot;
			break;
			case SampleState_SamplePot:
				DataRecord.MaxValue = CurData;
				DataRecord.SampleCnt = 1;
			break;
			case SampleState_PreSearchMax:
				DataRecord.SampleState = SampleState_SearchMax;
				DataRecord.MaxValue = 0x0000;
				DataRecord.SampleCnt = 0;
			break;
			case SampleState_SearchMax:
				switch (DataRecord.CollapseState & CollapseStateMask) {
					case FastCollapseHighSide:
					case SlowCollapseLowSide:
						if (CurData <= DataRecord.MaxValue) {
							DataRecord.MaxValue = CurData;
						} else {
							DataRecord.SampleState = SampleState_SearchMin;
							DataRecord.MinValue = DataRecord.MaxValue;
						}
					break;
					case FastCollapseLowSide:
					case SlowCollapseHighSide:
						if (CurData >= DataRecord.MaxValue) {
							DataRecord.MaxValue = CurData;
						} else {
							DataRecord.SampleState = SampleState_SearchMin;
							DataRecord.MinValue = DataRecord.MaxValue;
						}
					break;
				}
			break;
			case SampleState_SearchMin:
				switch (DataRecord.CollapseState & CollapseStateMask) {
					case FastCollapseHighSide:
					case SlowCollapseLowSide:
						if (CurData > DataRecord.MinValue) {
							DataRecord.MinValue = CurData;
						}
						DataRecord.SampleCnt++;
					break;
					case FastCollapseLowSide:
					case SlowCollapseHighSide:
						if (CurData < DataRecord.MinValue) {
							DataRecord.MinValue = CurData;
						}
						DataRecord.SampleCnt++;
					break;
				}
			break;
			case SampleState_PreSampleBat:
				if (SampleStateCnt > 4)
					DataRecord.SampleState = SampleState_SampleBat;
				++SampleStateCnt;
			break;
			case SampleState_SampleBat:
				DataRecord.BaseValue = CurData;
				if (BatSampleWhileOn()) {
					ADConv::SetChannel(ADConv::Ch_MotorCurrent,ADConv::Ref_MotorCurrent,ADConv::RightAdjust);
					DataRecord.SampleState = SampleState_PreCurrentSample;
				} else {
					SetADChannelMotorNegative();
					DataRecord.SampleState = SampleState_PreSearchMax;
				}
			break;
			case SampleState_PreCurrentSample:
				ADConv::SetChannel(ADConv::Ch_MotorCurrent,ADConv::Ref_MotorCurrent,ADConv::RightAdjust);
				CurrentSampleCnt = 0;
				DataRecord.SampleState = SampleState_CurrentSample1;
			break;
			case SampleState_CurrentSample1:
				if (CurData > DataRecord.CurrentLimit) HandleOverload();
				if (CurrentSampleCnt == 0) {
					DataRecord.CurrentTemp = CurData;
					DataRecord.CurrentMaxSearch = CurData;
				}
				++CurrentSampleCnt;
				if (CurData > DataRecord.CurrentMaxSearch) DataRecord.CurrentMaxSearch = CurData;
				if (CurrentSampleCnt == 3) DataRecord.SampleState = SampleState_CurrentSample2;
			break;
			case SampleState_CurrentSample2:
				if (CurData > DataRecord.CurrentLimit) HandleOverload();
				// Sample delta-current. It is related to the back-EMF voltage, though
				// this measurement is not precise enough to base control off of it
				DataRecord.CurrentDelta = CurData - DataRecord.CurrentTemp;
				DataRecord.CurrentTemp = CurData;
				if (CurData > DataRecord.CurrentMaxSearch) DataRecord.CurrentMaxSearch = CurData;
				DataRecord.SampleState = SampleState_CurrentSample3;
			break;
			case SampleState_CurrentSample3:
				// We'll stay in this state until the on-phase ends...
				if (CurData > DataRecord.CurrentLimit) HandleOverload();
				DataRecord.CurrentTemp = CurData;
				if (CurData > DataRecord.CurrentMaxSearch) DataRecord.CurrentMaxSearch = CurData;
			break;
		}
	}
}

SIGNAL(SIG_OUTPUT_COMPARE1A) {HBridge::HandleIRQ(true);}
SIGNAL(SIG_OUTPUT_COMPARE1B) {HBridge::HandleIRQ(false);}
SIGNAL(SIG_ADC) {HBridge::Sample();}

namespace TWI {
	uint8_t Address;

	extern const sConfigRecord ConfigRecord PROGMEM __attribute__ ((weak)) = {UniqueIDUnassigned,
		DevClassHBridge,
#if defined MEGA_BRIDGE
		DevUmHBridge
#elif defined H_BRIDGE
		DevUmHBridge
#elif defined SERVO_BRAIN
		DevUmServoBrain
#else
#error No HW version is specified!
#endif
	};

	enum UserStates {
		US_ReceiveAddr = TWI::US_Base,
		US_ReceiveData,
		US_SendData
	};

	void HandleUserReceive() {
		State = US_ReceiveAddr;
	}

	union {
		uint8_t UInt8[4];
		uint16_t UInt16[2];
		uint32_t UInt32[1];
	} TransmitBuffer;

	void SendData() __attribute__ ((noinline));

	void SendData() {
		switch (HBridge::GetDataElementSize(Address)) {
			default:
			case 1:
				TWIPrevData = *HBridge::GetDataRecord8(Address);
			break;
			case 2:
	    		if ((Address & 1) == 0) {
					TransmitBuffer.UInt16[0] = *HBridge::GetDataRecord16(Address);
				}
				TWIPrevData = TransmitBuffer.UInt8[Address & 1];
			break;
			case 4:
	    		if ((Address & 3) == 0) {
					TransmitBuffer.UInt32[0] = *HBridge::GetDataRecord32(Address);
				}
				TWIPrevData = TransmitBuffer.UInt8[Address & 3];
			break;
		}
		TWDR = TWIPrevData;
		++Address;
		if (Address >= HBridge::GetDataRecordSize()) Address = 0; // Wrap around
	}

	void GetData() {
		switch (HBridge::GetDataElementSize(Address)) {
			default:
			case 1:
        		TransmitBuffer.UInt8[0] = TWIData;
				*HBridge::GetDataRecord8(Address) = TransmitBuffer.UInt8[0];
			break;
			case 2:
        		TransmitBuffer.UInt8[Address & 1] = TWIData;
        		if ((Address & 1) != 0) {
					// High-byte: store the whole word
					*HBridge::GetDataRecord16(Address & (~0x01)) = TransmitBuffer.UInt16[0];
					// Special-case request value, we have to save that in another spot as well...
					if (Address == 1) {
						HBridge::DataRecord.OriginalRequestValue = TransmitBuffer.UInt16[0];
					}
				}
			break;
			case 4:
        		TransmitBuffer.UInt8[Address & 3] = TWIData;
        		if ((Address & 3) != 0) {
					// Highest byte: store the whole dword
					*HBridge::GetDataRecord32(Address & (~0x03)) = TransmitBuffer.UInt32[0];
				}
			break;
		}
		++Address;
		if (Address >= HBridge::GetDataRecordSize()) Address = 0; // Wrap around
	}

	void HandleUserTransmit() {
		SendData();
		State = US_SendData;
	}

	void HandleUserState() {
		switch (State) {
			case US_ReceiveAddr:
				switch (TWIStatus) {
	                case TW_SR_DATA_ACK:
						// TODO: handle different command codes here -> check the data written to this address!
	                	if (TWIData == 0xff) {
	                		HBridge::SaveSettings();
	                		ResetTWI();
	                	} else {
		                	//if ((TWIData & 0x7f) >= HBridge::GetDataRecordSize()) Address = HBridge::GetDataRecordSize() - 1; else Address = TWIData;
							if (TWIData >= HBridge::GetDataRecordSize()) Address = HBridge::GetDataRecordSize() - 1; else Address = TWIData;
							State = US_ReceiveData;
						}
					break;
					default:
						ResetTWI();
					break;
				}
			break;
			case US_ReceiveData:
				switch (TWIStatus) {
	                case TW_SR_DATA_ACK:
	                	GetData();
	                	// We stay in this state for any optional additional data
					break;
					default:
						ResetTWI();
					break;
				}
			break;
			case US_SendData:
				switch (TWIStatus) {
	                case TW_ST_DATA_ACK:
						SendData();
	            		SETBIT(TWIControl,(1 << TWEA)); // require ACK
	            	break;
					default:
						ResetTWI();
					break;
	            }
			break;
			default:
				// This really REALLY shouldn't happen...
				ResetTWI();
			break;
		}
	}
}

#ifdef USE_SERIAL_DEBUG
// Debug interfaces
namespace UsartComm {
	inline void Init(uint16_t aBaudSetting) {
		USART0::Init(aBaudSetting);
	}
	void HandleInput() {
		uint8_t CurData = USART0::FastReceiveData();
		OpLed::Toggle();
	}
}

SIGNAL(SIG_USART_RECV) {UsartComm::HandleInput();}

void DebugStat() {
	cli();
	int16_t VoltageSample = HBridge::DataRecord.VoltageSample;
	uint16_t SampleCnt = HBridge::DataRecord.SampleCnt_Snapshot;
	int16_t MinValue = HBridge::DataRecord.MinValue_Snapshot;
	int16_t CurrentRequest = HBridge::DataRecord.CurrentRequest;
	int16_t Error = HBridge::DataRecord.Error;
	int16_t IValue = HBridge::DataRecord.IValue;
	int16_t Command = HBridge::DataRecord.Command;
	sei();

	USART0::SendHexData(VoltageSample);
	USART0::SendData(' '); USART0::SendData('S'); USART0::SendData(':'); USART0::SendHexData(SampleCnt);
	USART0::SendData(' '); USART0::SendData('M'); USART0::SendData(':'); USART0::SendHexData(MinValue);
	USART0::SendData(' '); USART0::SendData('R'); USART0::SendData(':'); USART0::SendHexData(CurrentRequest);
	USART0::SendData(' '); USART0::SendData('E'); USART0::SendData(':'); USART0::SendHexData(Error);
	USART0::SendData(' '); USART0::SendData('I'); USART0::SendData(':'); USART0::SendHexData(IValue);
	USART0::SendData(' '); USART0::SendData('C'); USART0::SendData(':'); USART0::SendHexData(Command);
	USART0::SendData('\r'); USART0::SendData('\n');
}
#endif // USE_SERIAL_DEBUG

int main() {
	cli();
	EEPROM::Init();
	OpLed::Init();
	HBridge::BlinkCnt = 0;
	#ifdef USE_SERIAL_DEBUG
	UsartComm::Init(USART0::baud57600_8MHz);
	#endif // USE_SERIAL_DEBUG
	TCCR0A = 0;
	TWI::Init();
	ADConv::Init();
	HBridge::Init();
	SETBIT(DDRD,0x08|0x10);
	sei();

	// Everything happens in the interrupt routines. We have nothing else to do
	// here but some optional debugging
	while (true) {
		#ifdef USE_SERIAL_DEBUG
		cli();
		if (HBridge::DataRecord.NewData) {
			HBridge::DataRecord.NewData = false;
			DebugStat();
		} else {
			sei();
		}
		#endif // USE_SERIAL_DEBUG
    }
    return 0;
}

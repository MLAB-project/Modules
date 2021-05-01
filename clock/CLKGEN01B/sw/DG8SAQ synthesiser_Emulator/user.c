/********************************************************************
 FileName:		user.c
 Dependencies:	See INCLUDES section
 Processor:		PIC18 or PIC24 USB Microcontrollers
 Hardware:		The code is natively intended to be used on the following
 				hardware platforms: PICDEM™ FS USB Demo Board, 
 				PIC18F87J50 FS USB Plug-In Module, or
 				Explorer 16 + PIC24 USB PIM.  The firmware may be
 				modified for use on other USB platforms by editing the
 				HardwareProfile.h file.
 Complier:  	Microchip C18 (for PIC18) or C30 (for PIC24)
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement

 The software supplied herewith by Microchip Technology Incorporated
 (the “Company”) for its PIC® Microcontroller is intended and
 supplied to you, the Company’s customer, for use solely and
 exclusively on Microchip PIC Microcontroller products. The
 software is owned by the Company and/or its supplier, and is
 protected under applicable copyright laws. All rights are reserved.
 * Any use in violation of the foregoing restrictions may subject the
 * user to criminal sanctions under applicable laws, as well as to
 * civil liability for the breach of the terms and conditions of this
 * license.
 *
 * THIS SOFTWARE IS PROVIDED IN AN “AS IS” CONDITION. NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 * TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 * IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.

********************************************************************
 File Description:

 Change History:
  Rev   Date         Description
  1.0   11/19/2004   Initial release
  2.1   02/26/2007   Updated for simplicity and to use common
                     coding style
********************************************************************/

/** INCLUDES *******************************************************/
#include "usb.h"

#include "HardwareProfile.h"
#include "user.h"
#include "usbavrcmd.h"
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#if defined(__18CXX)
#include <delays.h>
#include <i2c.h>
#include <eep.h>
#elif defined(__PIC32MX__)
#include <peripheral/i2c.h>
#include <dee_emulation/dee_emulation_pic32.h>
#endif

#if defined (UBW)
#pragma romdata dataEEPROM=0xF00000
// F_CAL_DONE, 4 bytes cal data, F_INIT_FREQ, 4 bytes freq, F_SMOOTH, 2 bytes
// F_SUB_MUL, 4 bytes sub and 4 bytes mul
// F_CROSS_OVER, 16 bytes or 8 words of 7 cross over points and 1 flag for BPF
// followed by 16 bytes or 8 words of 7 cross over points and 1 flag for LPF
// F_BLINK_LED, 1 byte boolean
rom unsigned char init_data[] = {0xff, 0,0,0,0, 0xff, 0,0,0,0, 0xff, 0,0, 
	0xff, 0,0,0,0,0,0,0,0,
	0xff, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	TRUE};
#endif

/** V A R I A B L E S ********************************************************/
#pragma udata
BYTE old_SW;


BYTE i2c_adr;
BYTE command;
BYTE replybuf[8]; 
WORD wCount;
BYTE abpf_flag;

COMMAND_BUFFER_t command_buffer[COMMAND_BUFFER_SIZE];
BYTE current_command_in, current_command_out;
BYTE command_count;

avr_freq_t avr_freq, fcryst_freq;			// avr freq [MHz]*2^21
											// fcryst freq [Mhz]*2^24
unsigned short R137, R135 = 0;
unsigned char registers[6];
unsigned char tempBuf[8];
unsigned char counter;
double delta_rfreq;
double rfreq, Old_rfreq;
double fcryst_double, Old_freq_double, Smooth_double;

double set_frequency;
avr_freq_t f_mul;
offset_t f_sub;
unsigned char validCombo;



#if defined(__18F14K50) || defined(__18F13K50) || defined(__18LF14K50) || defined(__18LF13K50) 
    #pragma udata usbram2
#elif defined(__18F2455) || defined(__18F2550) || defined(__18F4455) || defined(__18F4550)\
    || defined(__18F4450) || defined(__18F2450)\
    || defined(__18F2458) || defined(__18F2453) || defined(__18F4558) || defined(__18F4553)
    #pragma udata USB_VARIABLES=0x500
#else
    #pragma udata
#endif


#pragma udata

BOOL blinkStatusValid = TRUE;


/** P R I V A T E  P R O T O T Y P E S ***************************************/

void BlinkUSBStatus(void);
BOOL SwitchIsPressed(void);
void ServiceRequests(void);





/** D E C L A R A T I O N S **************************************************/
#pragma code

float Cross2Switch(WORD_VAL val){			// convert from 11.5 bit format in [Mhz]
	float whole, fraction;
	whole = (float) (val.Val >> 5);
	fraction = ((float) (val.Val & 0x001f)) / 32.0;
	return (whole + fraction);
}

WORD_VAL Switch2Cross(float val){			// convert from float to 11.5 bit format [Mhz]
	WORD_VAL w;
	unsigned int i;
	i = val;
	w.Val = i * 32.0;
	w.Val += (val - (float) i) * 32.0;
	return (w);
}


void UserInit(void)
{
	WORD_VAL w;

//#if defined (UBW)
//	unsigned char i;
//#elif
	unsigned int i;
	unsigned int value;
//#endif

#if defined(UBW)
	// Port A - RA0 BPF_S0, RA1 BPF_S1, RA2 RXTX, RA3-5 LPF0-2
	LATA = 0x00;
	TRISA = 0x00;  // 00000000

	// Turn all analog inputs into digital inputs
	ADCON1 = 0x0F;
	// Turn off the ADC
	ADCON0bits.ADON = 0;
	CMCON = 0x07;	// Comparators as digital inputs
	//  RB0-1 for i2c, RB6-7 Paddle dit/dah, RB2-5 LPF 3-6
	LATB = 0x00;
	TRISB = 0xc3; // 11000011
	INTCON2bits.RBPU = 0;		// enable RB weak internal pullup
	// Make all of PORTC inputs
	LATC = 0x00;
	TRISC = 0xFF;

    mInitAllLEDs();
    mInitSwitch();
    old_SW = UserSW;

#elif defined(UBW32)

	// gO through each I/O register, setting them all to digital i/o
	// and making none of them open drain and turning off all pullups and 
	// setting all of the latches to zero. We have PORTA through PORTG on
	// this chip. That's 7 total.


		LATA = 0x0000;
		TRISA = 0x0000;
		ODCA = 0x0000;
		LATB = 0x0000;
		TRISB = 0x0000;
		ODCB = 0x0000;
		LATC = 0x0000;
		TRISC = 0x0000;
		ODCC = 0x0000;
		LATD = 0x0000;
		TRISD = 0x0000;
		ODCD = 0x0000;
		LATE = 0x0000;
		TRISE = 0x0000;
		ODCE = 0x0000;
		LATF = 0x0000;
		TRISF = 0x0030;	// RF4-5 paddle input
		ODCF = 0x0000;
		CNPUE = 0x060000; // Pull up on CNPUE17-18, corresponding to RF4-5
		LATG = 0x0000;
		TRISG = 0x0000;
		ODCG = 0x0000;

    //Initialize all of the LED pins
	mInitAllLEDs();

	mInitAllSwitches();
	old_SW = UserSW;

	// Initialize Data EEPROM Emulation
	if (DataEEInit()) {
			mLED_4_On(); // Error occured
	}				
	else {
			mLED_4_Off();
	};	

#endif 

	i2c_adr = DEFAULT_I2C_ADDRESS;

//	check for previous calibration, which sets fcryst, the actual crystal freq
#if defined (UBW)
	if (Read_b_eep(F_CAL_DONE) != F_CAL_DONE_VALUE){		// cal not done before, use default
		fcryst_freq.qw = (double) DEFAULT_FCRYST * (double) (1L << 24);	// 114.285 Mhz
	}
	else {										// cal done before, read into fcryst
		for (i=0; i<4; i++) fcryst_freq.bytes[i] = Read_b_eep(i + F_CAL_DONE +1);
		};

#elif defined (UBW32)
	DataEERead(&value,  F_CAL_DONE);
	if ( value != F_CAL_DONE_VALUE){				// cal not done before, use default
		fcryst_freq.qw = (double) DEFAULT_FCRYST * (double) (1L << 24);	// 114.285 Mhz
	}
	else {										// cal done before, read into fcryst
			DataEERead(&value, (F_CAL_DONE +1));
			fcryst_freq.qw = value;
		};
#endif

// Now that fcryst is checked, set it first so that it can be used by startup freq setting

	fcryst_double = (double) fcryst_freq.qw / (double) (1L << 24);
	validCombo = 1;
	command_count = 0;
	current_command_in = 0;
	current_command_out = 0;
	Old_freq_double = 0;

//	check for previous startup freq setting
#if defined (UBW)
	if (Read_b_eep(F_INIT_FREQ) != F_INIT_FREQ_VALUE){		// not set before, use default
		avr_freq.qw = (double) DEFAULT_INIT_FREQ * (double) (1L << 21);
	}
	else {										// startup freq set before, read into avr
		for (i=0; i<4; i++) avr_freq.bytes[i] = Read_b_eep(i + F_INIT_FREQ +1);
		};

#elif defined (UBW32)
	DataEERead(&value,  F_INIT_FREQ);
	if ( value != F_INIT_FREQ_VALUE){				// not set before, use default
		avr_freq.qw = (double) DEFAULT_INIT_FREQ * (double) (1L << 21);
			}
	else {										// set before, read
			DataEERead(&value, (F_INIT_FREQ +1));
			avr_freq.qw = value;
		};

#endif



//	check for previous smooth setting
#if defined (UBW)
	if (Read_b_eep(F_SMOOTH) != F_SMOOTH_VALUE){		// not set before, use default
		Smooth_double = (double) DEFAULT_SMOOTH / 1000000L;		// in ppm
	}
	else {										// set before, read
		for (i=0; i<2; i++) w.v[i] = Read_b_eep(i + F_SMOOTH +1);
		Smooth_double = (double) w.Val / 1000000L;
		};

#elif defined (UBW32)
	DataEERead(&value,  F_SMOOTH);
	if ( value != F_SMOOTH_VALUE){				// not set before, use default
		Smooth_double = (double) DEFAULT_SMOOTH / 1000000L;
	}
	else {										// set before, read
			DataEERead(&value, (F_SMOOTH +1));
			w.Val = value;
			Smooth_double = (double) w.Val / 1000000L;
	}
#endif

//	check for previous sub mul setting
#if defined (UBW)
	if (Read_b_eep(F_SUB_MUL) != F_SUB_MUL_VALUE){		// not set before, use default
		f_sub.qw = (double) DEFAULT_SUB * (double) (1L << 21);
		f_mul.qw = (double) DEFAULT_MUL * (double) (1L << 21);
	}
	else {										// startup freq set before, read into avr
		for (i=0; i<4; i++) f_sub.bytes[i] = Read_b_eep(i + F_SUB_MUL +1);
		for (i=0; i<4; i++) f_mul.bytes[i] = Read_b_eep(i + F_SUB_MUL +5);
		};

#elif defined (UBW32)
	DataEERead(&value,  F_SUB_MUL);
	if ( value != F_SUB_MUL_VALUE){				// not set before, use default
		f_sub.qw = (double) DEFAULT_SUB * (double) (1L << 21);
		f_mul.qw = (double) DEFAULT_MUL * (double) (1L << 21);
	}
	else {										// set before, read
		DataEERead(&value, (F_SUB_MUL +1));
		f_sub.qw = value;
		DataEERead(&value, (F_SUB_MUL +2));
		f_mul.qw = value;
		};

#endif





// Check for Cross Over Points
#if defined (UBW)
	if (Read_b_eep(F_CROSS_OVER) != F_CROSS_OVER_VALUE){		// not set before, use default

	#if defined (YAS)
			FilterSwitchOver[0] = (2.4 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;			// default BPF switchover points
			FilterSwitchOver[1] = (8.5 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			FilterSwitchOver[2] = (19.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			FilterSwitchOver[3] = (19.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			FilterSwitchOver[4] = (19.0 - DEFAULT_SUB) * DEFAULT_MUL* 4.0;
			FilterSwitchOver[5] = (19.0 - DEFAULT_SUB) * DEFAULT_MUL* 4.0;
			FilterSwitchOver[6] = (19.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;						
	#else
			FilterSwitchOver[0] = (2.4 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;			// default BPF switchover points
			FilterSwitchOver[1] = (8.5 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			FilterSwitchOver[2] = (19.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
	#endif
			for (i = 0; i < (NUM_BPF - 1); i++) FilterCrossOver[i] = Switch2Cross(FilterSwitchOver[i]);
			FilterCrossOver[(NUM_BPF-1)].Val = 1;									// Enabled
			abpf_flag = 1;

#if defined (K5OOR)
			LPFSwitchOver[0] = (2.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[1] = (4.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[2] = (7.45 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[3] = (15.0 - DEFAULT_SUB) * DEFAULT_MUL* 4.0;
			LPFSwitchOver[4] = (21.5 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[5] = (30.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[6] = (30.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
#elif defined (ALEX)
			LPFSwitchOver[0] = (2.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[1] = (4.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[2] = (9.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[3] = (11.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[4] = (14.5 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[5] = (20.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[6] = (30.0 - DEFAULT_SUB) * DEFAULT_MUL* 4.0;
#elif defined (MARC)
			LPFSwitchOver[0] = (2.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[1] = (4.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[2] = (8.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[3] = (11.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[4] = (14.5 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[5] = (18.2 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[6] = (21.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
#else
			#error "Must define an LPF configuration."
#endif

			for (i = 0; i < 7; i++) LPFCrossOver[i] = Switch2Cross(LPFSwitchOver[i]);
			LPFCrossOver[7].Val = 1;				// Enabled
	}
	else {										// set before, read
		for (i = 0; i < NUM_BPF; i++){
			w.v[0] = Read_b_eep(2 * i + F_CROSS_OVER +1);
			w.v[1] = Read_b_eep(2 * i + 1 + F_CROSS_OVER + 1);
			FilterCrossOver[i].Val = w.Val;
		};		

		abpf_flag = FilterCrossOver[(NUM_BPF-1)].v[0];

		for (i = 0; i < 8; i++){
			w.v[0] = Read_b_eep(2 * i + F_CROSS_OVER +17);
			w.v[1] = Read_b_eep(2 * i + 1 + F_CROSS_OVER + 17);
			LPFCrossOver[i].Val = w.Val;
		};

	}

#elif defined (UBW32)
	DataEERead(&value,  F_CROSS_OVER);
	if ( value != F_CROSS_OVER_VALUE){				// not set before, use default
			FilterSwitchOver[0] = (2.4 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;			// default BPF switchover points
			FilterSwitchOver[1] = (8.5 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			FilterSwitchOver[2] = (19.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			for (i = 0; i < 3; i++) FilterCrossOver[i] = Switch2Cross(FilterSwitchOver[i]);
			FilterCrossOver[3].Val = 1;				// Enabled
			abpf_flag = 1;

#if defined (K5OOR)
			LPFSwitchOver[0] = (2.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[1] = (4.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[2] = (7.45 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[3] = (15.0 - DEFAULT_SUB) * DEFAULT_MUL* 4.0;
			LPFSwitchOver[4] = (21.5 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[5] = (30.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[6] = (30.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
#elif defined (ALEX)
			LPFSwitchOver[0] = (2.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[1] = (4.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[2] = (9.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[3] = (11.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[4] = (14.5 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[5] = (20.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[6] = (30.0 - DEFAULT_SUB) * DEFAULT_MUL* 4.0;
#elif defined (MARC)
			LPFSwitchOver[0] = (2.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[1] = (4.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[2] = (8.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[3] = (11.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[4] = (14.5 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[5] = (18.2 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
			LPFSwitchOver[6] = (21.0 - DEFAULT_SUB) * DEFAULT_MUL * 4.0;
#else
			#error "Must define an LPF configuration."
#endif

			for (i = 0; i < 7; i++) LPFCrossOver[i] = Switch2Cross(LPFSwitchOver[i]);
			LPFCrossOver[7].Val = 1;				// Enabled


	}
	else {										// set before, read
		for (i=0; i< NUM_BPF; i++) {
			DataEERead(&value, (i + F_CROSS_OVER +1));
			FilterCrossOver[i].Val = value;
			};	


		abpf_flag = FilterCrossOver[(NUM_BPF-1)].Val;

		for (i=0; i<8; i++) {
			DataEERead(&value, (i + F_CROSS_OVER +9));
			LPFCrossOver[i].Val = value;
			};
	};
#endif // UBW32

	for (i = 0; i < (NUM_BPF-1); i++) FilterSwitchOver[i] = Cross2Switch(FilterCrossOver[i]);
	for (i = 0; i < 7; i++) LPFSwitchOver[i] = Cross2Switch(LPFCrossOver[i]);

// End initialising filter switchover points

#if defined(UBW)
    blinkStatusValid = Read_b_eep(F_BLINK_LED);
#elif defined (UBW32)
	DataEERead(&value, F_BLINK_LED);
	blinkStatusValid = value;
#endif

#if defined (UBW)
	OpenI2C(MASTER, SLEW_ON);// Initialize I2C module
	SSPADD = 48;            //400kHz Baud clock(9) @16MHz
                           	//100kHz Baud clock(39) @16MHz

#elif defined (UBW32)
	OpenI2C1(I2C_ON, ( GetPeripheralClock() / 400000UL - 2) );
#endif

// IF we don't reset Si570 on startup, it will not hang if Si570 not connected
#if defined (INIT_SI570_ON_STARTUP)
	Reset_Si570();
#endif

//	check for previous startup freq setting, if set, then set Si570 to startup freq
#if defined (UBW32)
	DataEERead(&value,  F_INIT_FREQ);
	if ( value == F_INIT_FREQ_VALUE){
#else
	if (Read_b_eep(F_INIT_FREQ) == F_INIT_FREQ_VALUE){
#endif		
// avr_freq has been setup by the reading of the startup freq
	set_frequency = (double) avr_freq.qw /  (double)(1L << 21);
	SetFrequency(set_frequency);
	};

}//end UserInit


/******************************************************************************
 * Function:        void ProcessIO(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function is a place holder for other user routines.
 *                  It is a mixture of both USB and non-USB tasks.
 *
 * Note:            None
 *****************************************************************************/
void ProcessIO(void)
{   
	if (SwitchIsPressed()){
		blinkStatusValid = !blinkStatusValid; // toggle blink led
#if defined(UBW)
		Write_b_eep(F_BLINK_LED, blinkStatusValid);
#elif defined(UBW32)
		DataEEWrite(blinkStatusValid, F_BLINK_LED);
#endif
	};	

    //Blink the LEDs according to the USB device status
    if(blinkStatusValid) BlinkUSBStatus();
	else mLED_Both_Off();
    // User Application USB tasks
    if((USBDeviceState < ADDRESS_STATE)||(USBSuspendControl==1)) return;

    //respond to any USB commands that might have come over the bus		
    ServiceRequests();


}//end ProcessIO


/******************************************************************************
 * Function:        void ServiceRequests(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    USB traffic can be generated
 *
 * Overview:        This function takes in the commands from the PC from the
 *                  application and executes the commands requested
 *
 * Note:            None
 *****************************************************************************/
void ServiceRequests(void)
{
	BYTE command_to_process;
    

	if (command_count > 0) {				// there is command in buffer
		command_to_process = command_buffer[current_command_out].command;

		switch (command_to_process){
			case CMD_SET_FREQ_REG:
				Set_Register_Handler();
				break;
			case CMD_SET_LO_SM:
				Set_Sub_Mul_Handler();
				break;
			case CMD_SET_FREQ:
				Set_Freq_Handler();
				break;
			case CMD_SET_XTAL:
				Set_Cal_Handler();
				break;
			case CMD_SET_STARTUP:
				Set_Init_Freq_Handler();
				break;
			case CMD_SET_PPM:
				Set_Smooth_Handler();
				break;
			};
		// end switch
		current_command_out++;
		if (current_command_out >= COMMAND_BUFFER_SIZE) current_command_out = 0;
		command_count--;
	}	// end command_count > 0


}//end ServiceRequests

/********************************************************************
 * Function:        void BlinkUSBStatus(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        BlinkUSBStatus turns on and off LEDs 
 *                  corresponding to the USB device state.
 *
 * Note:            mLED macros can be found in HardwareProfile.h
 *                  USBDeviceState is declared and updated in
 *                  usb_device.c.
 *******************************************************************/
void BlinkUSBStatus(void)
{
    static WORD led_count=0;
    
    if(led_count == 0)led_count = 10000U;
    led_count--;


    if(USBSuspendControl == 1)
    {
        if(led_count==0)
        {
            mLED_1_Toggle();
            mLED_2 = mLED_1;
        }//end if
    }
    else
    {
        if(USBDeviceState == DETACHED_STATE)
        {
            mLED_1_Off(); mLED_2_Off();
        }
        else if(USBDeviceState == ATTACHED_STATE)
        {
            mLED_1_On(); mLED_2_On();
        }
        else if(USBDeviceState == POWERED_STATE)
        {
            mLED_1_On(); mLED_2_Off();
        }
        else if(USBDeviceState == DEFAULT_STATE)
        {
            mLED_1_Off(); mLED_2_On();
        }
        else if(USBDeviceState == ADDRESS_STATE)
        {
            if(led_count == 0)
            {
                mLED_1_Toggle();
                mLED_2_Off();
            }//end if
        }
        else if(USBDeviceState == CONFIGURED_STATE)
        {
            if(led_count==0)
            {      
                mLED_1_Toggle();         
                mLED_2 = !mLED_1;

            }//end if
        }//end if(...)
    }//end if(UCONbits.SUSPND...)

}//end BlinkUSBStatus


/******************************************************************************
 * Function:        BOOL SwitchIsPressed(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          BOOL - TRUE if the SW2 was pressed and FALSE otherwise
 *
 * Side Effects:    None
 *
 * Overview:        returns TRUE if the SW2 was pressed and FALSE otherwise
 *
 * Note:            None
 *****************************************************************************/

BOOL SwitchIsPressed(void)
{
    if(UserSW != old_SW)
    {
        old_SW = UserSW;                  // Save new value
        if(UserSW == 0)                    // If pressed
            return TRUE;                // Was pressed
    }//end if
    return FALSE;                       // Was not pressed
}//end SwitchIsPressed

void Reset_Si570()
{
#if defined (UBW)
    StartI2C();      		//Reset Si570 to Startup
	IdleI2C();
    WriteI2C(i2c_adr << 1);
	WriteI2C(135);       	//REG   135
    WriteI2C(0x01);      	// reset
    StopI2C();
	IdleI2C();
#elif defined (UBW32)
    StartI2C1();      		//Reset Si570 to Startup
	IdleI2C1();
    MasterWriteI2C1(i2c_adr << 1);
	MasterWriteI2C1(135);       	//REG   135
    MasterWriteI2C1(0x01);      	// reset
    StopI2C1();
	IdleI2C1();
#endif

}

void ReadRegs()
{
unsigned int i;

	for(i=0;i<6;i++)
	{

#if defined (UBW)
        StartI2C();
		IdleI2C();
		WriteI2C(i2c_adr << 1);
		WriteI2C(i+7);     //specify register
		RestartI2C();
		IdleI2C();
		WriteI2C(i2c_adr << 1 | 0x01);
   		registers[i] = ReadI2C();
		StopI2C();
		IdleI2C();
#elif defined (UBW32)
		StartI2C1();
		IdleI2C1();
		MasterWriteI2C1(i2c_adr << 1);
		MasterWriteI2C1(i+7);
		RestartI2C1();
		IdleI2C1();
		MasterWriteI2C1(i2c_adr << 1 | 0x01);
		registers[i] = MasterReadI2C1();
		StopI2C1();
		IdleI2C1();
#endif
	}
}


void Freeze () {
    Prep_rd(137);               //get current value
#if defined (UBW)
	R137 = ReadI2C();
#elif defined (UBW32)
    R137 = MasterReadI2C1();
#endif
    R137 = R137 | 0x10;         //turn on freeze
    WriteBk();
}

void Unfreeze () {
    Prep_rd(137);
#if defined (UBW)
    R137 = ReadI2C();
#elif defined (UBW32)
	R137 = MasterReadI2C1();
#endif
    R137 = R137 & 0xEF;
    WriteBk();
}

void WriteBk () {  //Write back
#if defined (UBW)
    StopI2C();
	IdleI2C();
    StartI2C();
	IdleI2C();
    WriteI2C(i2c_adr<<1);
    WriteI2C(137);       //REG
    WriteI2C(R137);      // new data
    StopI2C();
	IdleI2C();
#elif defined (UBW32)
	StopI2C1();
	IdleI2C1();
    StartI2C1();
	IdleI2C1();
    MasterWriteI2C1(i2c_adr<<1);
    MasterWriteI2C1(137);       //REG
    MasterWriteI2C1(R137);      // new data
    StopI2C1();
	IdleI2C1();
#endif
     }

void Prep_rd (unsigned short r)   { // get ready to read
#if defined (UBW)
    StartI2C();
	IdleI2C();
    WriteI2C(i2c_adr<<1);
    WriteI2C(r);     //REG
	RestartI2C();
	IdleI2C();
    WriteI2C(i2c_adr<<1 | 0x01);
#elif defined (UBW32)
   	StartI2C1();
	IdleI2C1();
    MasterWriteI2C1(i2c_adr<<1);
    MasterWriteI2C1(r);     //REG
	RestartI2C1();
	IdleI2C1();
    MasterWriteI2C1(i2c_adr<<1 | 0x01);
#endif
}

void NewF () {

	Prep_rd(135);

#if defined (UBW)
	R135 = ReadI2C();
	R135 |= 0x40;		// set New Data bit
	StopI2C();
	IdleI2C();
	StartI2C();
	IdleI2C();
    WriteI2C(i2c_adr<<1);
    WriteI2C(135);       //REG
    WriteI2C(R135);
    StopI2C();
	IdleI2C();
#elif defined (UBW32)
	R135 = MasterReadI2C1();
	R135 |= 0x40;		// set New Data bit
	StopI2C1();
	IdleI2C1();
	StartI2C1();
	IdleI2C1();
    MasterWriteI2C1(i2c_adr<<1);
    MasterWriteI2C1(135);       //REG
    MasterWriteI2C1(R135);
    StopI2C1();
	IdleI2C1();
#endif
}



void RunFreqProg(double f)
{
	double rfreq_fraction;
	unsigned long rfreq_integer_part;
	unsigned long rfreq_fraction_part;
	const float FDCO_MAX = 5670; //MHz
	const float FDCO_MIN = 4850;

	// Register finding the lowest DCO frequenty - code from Fred
	unsigned char	xHS_DIV;
	unsigned int	xN1;
	unsigned int	xN;

	// Registers to save the found dividers
	unsigned char	sHS_DIV=0;
	unsigned char	sN1=0;
	unsigned int	sN=0;					// Total dividing
	unsigned int	N0;						// Total divider needed (N1 * HS_DIV)

	// Find the total division needed.
	// It is always one too low (not in the case reminder is zero, reminder not used here).

	N0 = FDCO_MIN / (float) f;
	sN = 11*128;
	for(xHS_DIV = 11; xHS_DIV > 3; xHS_DIV--)
	{
		// Skip the unavailable divider's
		if (xHS_DIV == 8 || xHS_DIV == 10)
			continue;

		// Calculate the needed low speed divider
		xN1 = N0 / xHS_DIV + 1;

		if (xN1 > 128)
			continue;

		// Skip the unavailable divider's
		if (xN1 != 1 && (xN1 & 1) == 1)
			xN1 += 1;

		xN = xHS_DIV * xN1;
		if (sN > xN)
		{
			sN		= xN;
			sN1		= xN1;
			sHS_DIV	= xHS_DIV;
		}
	};

	validCombo = 0;

	if (sHS_DIV == 0) return;					// no valid dividers found

	rfreq = f * (double) sN;	// DCO freq
 	if ((float)rfreq > FDCO_MAX) return;		// calculated DCO freq > max

	validCombo = 1;

// rfreq is a 38 bit number, MSB 10 bits integer portion, and LSB 28 fraction
// in the Si570 registers, tempBuf[1] has 6 bits, and tempBuf[2] has 4 bits of the integer portion

		rfreq /= fcryst_double;					// DCO divided by fcryst
		rfreq_integer_part = rfreq;
		rfreq_fraction = rfreq - rfreq_integer_part;
		rfreq_fraction_part = rfreq_fraction * (1L << 28);

		sHS_DIV -= 4;
		sN1 -= 1;
		tempBuf[0] = (sHS_DIV << 5) | (sN1 >> 2);
		tempBuf[1] = (sN1 & 3) << 6;
		tempBuf[1] |= ((rfreq_integer_part >> 4) & 0x3f);
		tempBuf[2] = ((rfreq_integer_part & 0x0f) << 4) | (rfreq_fraction_part >> 24);
		tempBuf[3] = rfreq_fraction_part >> 16;
		tempBuf[4] = rfreq_fraction_part >> 8;
		tempBuf[5] = rfreq_fraction_part;

}


void SetNewFreq()
{	int i;
	double freq_double;
	double delta_freq;

	if(validCombo)
	{

		Freeze();	// freeze DCO

      	for (i=7; i<=12; i++){     		//Data to Si570
#if defined (UBW)
       		StartI2C();
       		IdleI2C();
       		WriteI2C(i2c_adr<<1);
       		WriteI2C(i);               	//specify register
       		WriteI2C(tempBuf[i-7]);  	// new data to registers
       		StopI2C();
       		IdleI2C();
#elif defined (UBW32)
      		StartI2C1();
       		IdleI2C1();
       		MasterWriteI2C1(i2c_adr<<1);
       		MasterWriteI2C1(i);               	//specify register
       		MasterWriteI2C1(tempBuf[i-7]);  	// new data to registers
       		StopI2C1();
       		IdleI2C1();
#endif
     	}
      	Unfreeze ();         			// thaw (unfreeze)

// check for smooth tune range
		freq_double = Freq_From_Register(fcryst_double);

		if (freq_double >= Old_freq_double) delta_freq = freq_double - Old_freq_double;
		else delta_freq = Old_freq_double - freq_double;

		if (((delta_rfreq / Old_rfreq ) > Smooth_double) || (delta_freq > 0.5)){
			NewF ();             		// indicate new freq.  This will cause a pause in the Si570 output
			Old_rfreq = rfreq;
			Old_freq_double = freq_double;
			};

// set filters, using set freq without offset and multiplier

		if (abpf_flag) Set_BPF((float) set_frequency);
		Set_LPF((float)set_frequency);

	};	// valid combo
}

double Freq_From_Register(double fcryst){			// side effects: rfreq and delta_rfreq are set
	double freq_double;
	unsigned char n1;
	unsigned char hsdiv;
	unsigned long rfreq_integer_portion, rfreq_fraction_portion;

// Now find out the current rfreq and freq

	hsdiv = ((tempBuf[0] & 0xE0) >> 5) + 4;
	n1 = ((tempBuf[0] & 0x1f ) << 2 ) + ((tempBuf[1] & 0xc0 ) >> 6 );
//	if(n1 == 0) n1 = 1;
//	else if((n1 & 1) !=0) n1 += 1;
		n1 += 1;

		rfreq_integer_portion = ((unsigned long)(tempBuf[1] & 0x3f)) << 4 |
								((unsigned long)(tempBuf[2] & 0xf0)) >> 4;

		rfreq_fraction_portion = ((unsigned long) (tempBuf[2] & 0x0f)) << 24;
		rfreq_fraction_portion += ((unsigned long)(tempBuf[3])) << 16;
		rfreq_fraction_portion += ((unsigned long)(tempBuf[4])) << 8;
		rfreq_fraction_portion += ((unsigned long)(tempBuf[5]));

	rfreq = (double)rfreq_integer_portion + ((double)rfreq_fraction_portion / (1L << 28));

	if (rfreq >= Old_rfreq) delta_rfreq = rfreq - Old_rfreq;
	else delta_rfreq = Old_rfreq - rfreq;

	freq_double = fcryst * rfreq / (double) hsdiv / (double) n1;
	return (freq_double);
}



void Set_BPF(float freq){				// note the freq used is the Si570 freq

#if defined(YAS)
	if (freq < FilterSwitchOver[0]) {BPF_S2 = 0;BPF_S1 = 0; BPF_S0 = 0;}
	else if (freq < FilterSwitchOver[1]) {BPF_S2 = 0; BPF_S1=0;BPF_S0=1;}
	else if (freq < FilterSwitchOver[2]) {BPF_S2 = 0;BPF_S1=1;BPF_S0=0;}
	else if (freq < FilterSwitchOver[3]) {BPF_S2 = 0; BPF_S1 = 1; BPF_S0 = 1;}
	else if (freq < FilterSwitchOver[4]) {BPF_S2 = 1; BPF_S1 = 0; BPF_S0 = 0;}
	else if (freq < FilterSwitchOver[5]) {BPF_S2 = 1; BPF_S1 = 0; BPF_S0 = 1;}
	else if (freq < FilterSwitchOver[6]) {BPF_S2 = 1; BPF_S1 = 1; BPF_S0 = 0;}
	else {BPF_S2 = 1;BPF_S1=1; BPF_S0=1;};

#else
	if (freq < FilterSwitchOver[0]) {BPF_S1 = 0; BPF_S0 = 0;}
	else if (freq < FilterSwitchOver[1]) {BPF_S1=0;BPF_S0=1;}
	else if (freq < FilterSwitchOver[2]) {BPF_S1=1;BPF_S0=0;}
	else {BPF_S1=1; BPF_S0=1;};
#endif
}

void Set_LPF(float freq){

	unsigned char LPF_select;

	LPF_0 = 0;
	LPF_1 = 0;
	LPF_2 = 0;

#if defined(YAS)
	if (freq < LPFSwitchOver[0]) {LPF_0 = 0; LPF_1 = 0; LPF_2 = 0; LPF_select = 0x01;}
	else if (freq < LPFSwitchOver[1]) {LPF_0 = 1; LPF_1 = 0; LPF_2 = 0; LPF_select = 0x02;}
	else if (freq < LPFSwitchOver[2]) {LPF_0 = 0; LPF_1 = 1; LPF_2 = 0; LPF_select = 0x04;}
	else if (freq < LPFSwitchOver[3]) {LPF_0 = 1; LPF_1 = 1; LPF_2 = 0; LPF_select = 0x08;}
	else if (freq < LPFSwitchOver[4]) {LPF_0 = 0; LPF_1 = 0; LPF_2 = 1; LPF_select = 0x10;}
	else if (freq < LPFSwitchOver[5]) {LPF_0 = 1; LPF_1 = 0; LPF_2 =1; LPF_select = 0x20;}
	else if (freq < LPFSwitchOver[6]) {LPF_0 = 0; LPF_1 = 1; LPF_2 = 1; LPF_select = 0x40;}
	else {LPF_0 = 1; LPF_1 = 1; LPF_2 = 1; LPF_select = 0x80;};

#else
	LPF_3 = 0;
	LPF_4 = 0;
	LPF_5 = 0;
	LPF_6 = 0;

	if (freq < LPFSwitchOver[0]) {LPF_0 = 1; LPF_select = 0x01;}
	else if (freq < LPFSwitchOver[1]) {LPF_1 = 1; LPF_select = 0x02;}
	else if (freq <= LPFSwitchOver[2]) {LPF_2 = 1; LPF_select = 0x04;}
	else if (freq < LPFSwitchOver[3]) {LPF_3 = 1; LPF_select = 0x08;}
	else if (freq < LPFSwitchOver[4]) {LPF_4 = 1; LPF_select = 0x10;}
	else if (freq < LPFSwitchOver[5]) {LPF_5 = 1; LPF_select = 0x20;}
	else if (freq < LPFSwitchOver[6]) {LPF_6 = 1; LPF_select = 0x40;}
	else {LPF_6 = 1; LPF_select = 0x80;};

#endif



//	Now use i2c bus to switch LPF
#if defined (UBW)
       		StartI2C();
       		IdleI2C();
       		WriteI2C(PCF8574 << 1);
       		WriteI2C(LPF_select);
       		StopI2C();
       		IdleI2C();
#elif defined (UBW32)
      		StartI2C1();
       		IdleI2C1();
       		MasterWriteI2C1(PCF8574 << 1);
       		MasterWriteI2C1(LPF_select);
       		StopI2C1();
       		IdleI2C1();
#endif


}

void SetFrequency(double f)
{
//  introduce the offset and mul here
	RunFreqProg((f - ((double)f_sub.qw / (double)(1L << 21))) * (double)f_mul.qw/(double)(1L <<21));
	SetNewFreq();
}

void Set_Freq_Handler(void){			// 4 byte freq value in avr_freq format
	BYTE i;
	
	if (command_buffer[current_command_out].wCount == 4){
	for (i=0; i<4; i++) avr_freq.bytes[i] = command_buffer[current_command_out].data[i];
	set_frequency = (double) avr_freq.qw /  (double)(1L << 21);
	SetFrequency(set_frequency);
	}
}
		
void Set_Register_Handler(void){		// 6 byte register value
	unsigned char i;

	if (command_buffer[current_command_out].wCount == 6){
	for (i=0; i<6; i++) tempBuf[i] = command_buffer[current_command_out].data[i];
	set_frequency = Freq_From_Register(DEFAULT_FCRYST);
	SetFrequency(set_frequency);
	}
}

void Set_Cal_Handler(void){

										// 4 bytes of fcryst freq in avr_freq format
	int i;

	if (command_buffer[current_command_out].wCount == 4){

		for (i=0; i<4; i++)fcryst_freq.bytes[i] = command_buffer[current_command_out].data[i];
		fcryst_double = (double) fcryst_freq.qw / (double)(1L << 24);

#if defined(UBW)
		for (i=0; i<4; i++){
	 		Write_b_eep (i+F_CAL_DONE+1, fcryst_freq.bytes[i]);
			Busy_eep ();
		};	
#elif defined (UBW32)
		DataEEWrite( (unsigned int) fcryst_freq.qw,  (F_CAL_DONE + 1));
#endif
	
#if defined (UBW)
		Write_b_eep(F_CAL_DONE, F_CAL_DONE_VALUE);
		Busy_eep();
#elif defined (UBW32)
		DataEEWrite(F_CAL_DONE_VALUE,  F_CAL_DONE);
#endif
	};
}

void Set_Init_Freq_Handler(void)
{
#if defined (UBW)
	unsigned char i;
#else
	unsigned int i;
#endif

	if (command_buffer[current_command_out].wCount == 4){
			for (i=0; i<4; i++) avr_freq.bytes[i] = command_buffer[current_command_out].data[i];
#if defined (UBW)
			for (i=0; i<4; i++){
			Write_b_eep((i + F_INIT_FREQ +1), avr_freq.bytes[i]);
			Busy_eep();
			};
#elif defined (UBW32)
			DataEEWrite( (unsigned int) avr_freq.qw,  (F_INIT_FREQ +1));
#endif

#if defined (UBW)
			Write_b_eep(F_INIT_FREQ, F_INIT_FREQ_VALUE);
			Busy_eep();
#elif defined (UBW32)
			DataEEWrite(F_INIT_FREQ_VALUE, F_INIT_FREQ);
#endif
	};
}

void Set_Sub_Mul_Handler(void)
{
#if defined (UBW)
	unsigned char i;
#else
	unsigned int i;
#endif

	avr_freq_t old_f_mul;
	offset_t old_f_sub;
	double filter_value;

	
	if (command_buffer[current_command_out].wCount == 8){

		old_f_sub = f_sub;			// save old values first
		old_f_mul = f_mul;

		for (i=0; i<4; i++) f_sub.bytes[i] = command_buffer[current_command_out].data[i];
		for (i=0; i<4; i++) f_mul.bytes[i] = command_buffer[current_command_out].data[i+4];
#if defined (UBW)
		for (i=0; i<4; i++){
			Write_b_eep((i + F_SUB_MUL +1), f_sub.bytes[i]);
			Busy_eep();
		};
		for (i=0; i<4; i++){
			Write_b_eep((i + F_SUB_MUL +5), f_mul.bytes[i]);
			Busy_eep();
		};		
#elif defined (UBW32)
			DataEEWrite( (unsigned int) f_sub.qw,  (F_SUB_MUL +1));
			DataEEWrite( (unsigned int) f_mul.qw,  (F_SUB_MUL +5));
#endif

#if defined (UBW)
			Write_b_eep(F_SUB_MUL, F_SUB_MUL_VALUE);
			Busy_eep();
#elif defined (UBW32)
			DataEEWrite(F_SUB_MUL_VALUE, F_SUB_MUL);
#endif

// Now update the filter switchover points as well
			for (i = 0; i < (NUM_BPF - 1); i++){
				// get back filter_value in Mhz
				filter_value = FilterSwitchOver[i] / (old_f_mul.qw / ((double) (1L << 21))) / 4 + (old_f_sub.qw / ((double) (1L << 21)));
				// now convert to new translated values
				FilterSwitchOver[i] = (filter_value - (f_sub.qw / (double)(1L << 21))) * (f_mul.qw / (double)(1L << 21)) * 4;
				FilterCrossOver[i] = Switch2Cross(FilterSwitchOver[i]);
			};
			for (i = 0; i < 7; i++){
				// get back filter_value in Mhz
				filter_value = LPFSwitchOver[i] / (old_f_mul.qw / ((double) (1L << 21))) / 4 + (old_f_sub.qw / ((double) (1L << 21)));
				// now convert to new translated values
				LPFSwitchOver[i] = (filter_value - (f_sub.qw / (double)(1L << 21))) * (f_mul.qw / (double)(1L << 21)) * 4;
				LPFCrossOver[i] = Switch2Cross(LPFSwitchOver[i]);
			};	
	};  // if wCount == 8
}




void Set_Smooth_Handler(void)
{
	WORD_VAL w;
	unsigned int i;

	if (command_buffer[current_command_out].wCount == 2){			// 2 bytes of Smooth Tune value in ppm
		w.v[0] = command_buffer[current_command_out].data[0];
		w.v[1] = command_buffer[current_command_out].data[1];

		Smooth_double = (double) w.Val / 1000000L;

#if defined (UBW)
		for (i=0; i<2; i++){
	 		Write_b_eep (i+F_SMOOTH+1, w.v[i]);
			Busy_eep ();
			};	

#elif defined (UBW32)
			DataEEWrite( (unsigned int) w.Val,  (i + F_SMOOTH + 1));
#endif
	
#if defined (UBW)
		Write_b_eep(F_SMOOTH, F_SMOOTH_VALUE);
		Busy_eep();
#elif defined (UBW32)
		DataEEWrite(  F_SMOOTH_VALUE,  F_SMOOTH);
#endif

	}	
}



/** EOF user.c ***************************************************************/

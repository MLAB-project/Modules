/********************************************************************
 FileName:     	HardwareProfile - PIC32MX460F512L PIM.h
 Dependencies:	See INCLUDES section
 Processor:		PIC18 or PIC24 USB Microcontrollers
 Hardware:		The code is natively intended to be used on the following
 				hardware platforms: PICDEM™ FS USB Demo Board, 
 				PIC18F87J50 FS USB Plug-In Module, or
 				Explorer 16 + PIC24 USB PIM.  The firmware may be
 				modified for use on other USB platforms by editing this
 				file (HardwareProfile.h).
 Complier:  	Microchip C18 (for PIC18) or C30 (for PIC24)
 Company:		Microchip Technology, Inc.

 Software License Agreement:

 The software supplied herewith by Microchip Technology Incorporated
 (the “Company”) for its PIC® Microcontroller is intended and
 supplied to you, the Company’s customer, for use solely and
 exclusively on Microchip PIC Microcontroller products. The
 software is owned by the Company and/or its supplier, and is
 protected under applicable copyright laws. All rights are reserved.
 Any use in violation of the foregoing restrictions may subject the
 user to criminal sanctions under applicable laws, as well as to
 civil liability for the breach of the terms and conditions of this
 license.

 THIS SOFTWARE IS PROVIDED IN AN “AS IS” CONDITION. NO WARRANTIES,
 WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.

********************************************************************
 File Description:

 Change History:
  Rev   Date         Description
  1.0   11/19/2004   Initial release
  2.1   02/26/2007   Updated for simplicity and to use common
                     coding style

********************************************************************/

#ifndef HARDWARE_PROFILE_UBW32_H
#define HARDWARE_PROFILE_UBW32_H

#include "Compiler.h"

    /*******************************************************************/
    /*******************************************************************/
    /*******************************************************************/
    /******** Application specific definitions *************************/
    /*******************************************************************/
    /*******************************************************************/
    /*******************************************************************/

    /** Board definition ***********************************************/
    //These defintions will tell the main() function which board is
    //  currently selected.  This will allow the application to add
    //  the correct configuration bits as wells use the correct
    //  initialization functions for the board.  These defitions are only
    //  required in the stack provided demos.  They are not required in
    //  final application design.

    /** CPU Clock Speed Assignment *************************************/
    //#define RUN_AT_48MHZ
    //#define RUN_AT_24MHZ
    //#define RUN_AT_60MHZ
	#define RUN_AT_80MHZ

    // Various clock values
    #if defined(RUN_AT_48MHZ)
        #define GetSystemClock()            48000000UL
        #define GetPeripheralClock()        48000000UL
        #define GetInstructionClock()       (GetSystemClock())
    #elif defined(RUN_AT_24MHZ)
        #define GetSystemClock()            24000000UL
        #define GetPeripheralClock()        24000000UL
        #define GetInstructionClock()       (GetSystemClock())
    #elif defined(RUN_AT_60MHZ)    
        #define GetSystemClock()            (60000000ul)
        #define GetPeripheralClock()        (GetSystemClock()) 
        #define GetInstructionClock()       (GetSystemClock())
    #elif defined(RUN_AT_80MHZ)    
        #define GetSystemClock()            (80000000ul)
        #define GetPeripheralClock()        (GetSystemClock()) 
        #define GetInstructionClock()       (GetSystemClock())
    #else
        #error Choose a speed
    #endif

    #define PROGRAMMABLE_WITH_USB_HID_BOOTLOADER		

    /*******************************************************************/
    /******** USB stack hardware selection options *********************/
    /*******************************************************************/
    //This section is the set of definitions required by the MCHPFSUSB
    //  framework.  These definitions tell the firmware what mode it is
    //  running in, and where it can find the results to some information
    //  that the stack needs.
    //These definitions are required by every application developed with
    //  this revision of the MCHPFSUSB framework.  Please review each
    //  option carefully and determine which options are desired/required
    //  for your application.

    //#define USE_SELF_POWER_SENSE_IO
    #define tris_self_power     TRISAbits.TRISA2    // Input
    #define self_power          1

    //#define USE_USB_BUS_SENSE_IO
    #define tris_usb_bus_sense  TRISBbits.TRISB5    // Input
    #define USB_BUS_SENSE       1

    /*******************************************************************/
    /******** Device revision workarounds ******************************/
    /*******************************************************************/
    //Uncomment this definition to allow for revision B3 silicon to work
    //  with this firmware.
    #define PIC32MX460F512L_REV_B3_WORKAROUND
    
    /*******************************************************************/
    /*******************************************************************/
    /*******************************************************************/
    /******** Application specific definitions *************************/
    /*******************************************************************/
    /*******************************************************************/
    /*******************************************************************/

    /** Board definition ***********************************************/
    //These defintions will tell the main() function which board is
    //  currently selected.  This will allow the application to add
    //  the correct configuration bits as wells use the correct
    //  initialization functions for the board.  These defitions are only
    //  required in the stack provided demos.  They are not required in
    //  final application design.
    #define DEMO_BOARD UBW32
	#define UBW32

    /** LED ************************************************************/
    #define mInitAllLEDs()      LATE |= 0x000F; TRISE &= 0xFFF0;
    
    #define mLED_1              LATEbits.LATE3
    #define mLED_2              LATEbits.LATE2
    #define mLED_3              LATEbits.LATE1
    #define mLED_4              LATEbits.LATE0

    #define mGetLED_1()         mLED_1
    #define mGetLED_USB()       mLED_1
    #define mGetLED_2()         mLED_2
    #define mGetLED_3()         mLED_3
    #define mGetLED_4()         mLED_4

    #define mLED_1_On()         mLED_1 = 0;
    #define mLED_USB_On()       mLED_1 = 0;
    #define mLED_2_On()         mLED_2 = 0;
    #define mLED_3_On()         mLED_3 = 0;
    #define mLED_4_On()         mLED_4 = 0;
    
    #define mLED_1_Off()        mLED_1 = 1;
    #define mLED_USB_Off()      mLED_1 = 1;
    #define mLED_2_Off()        mLED_2 = 1;
    #define mLED_3_Off()        mLED_3 = 1;
    #define mLED_4_Off()        mLED_4 = 1;
    
    #define mLED_1_Toggle()     mLED_1 = !mLED_1;
    #define mLED_USB_Toggle()   mLED_1 = !mLED_1;
    #define mLED_2_Toggle()     mLED_2 = !mLED_2;
    #define mLED_3_Toggle()     mLED_3 = !mLED_3;
    #define mLED_4_Toggle()     mLED_4 = !mLED_4;

	#define mLED_Both_Off()	{mLED_1_Off(); mLED_2_Off();}
    
    /** SWITCH *********************************************************/
    #define mInitSwitch2()      TRISEbits.TRISE7=1;
    #define mInitSwitch3()      TRISEbits.TRISE6=1;
    #define mInitAllSwitches()  mInitSwitch2();mInitSwitch3();
    #define swProgram           PORTEbits.RE7
    #define swUser              PORTEbits.RE6

	#define UserSW	swUser
    #define sw2     swUser

#define RXTX	LATAbits.LATA2

#define BPF_S0	LATAbits.LATA0
#define BPF_S1	LATAbits.LATA1
#define BPF_S0_STATE	PORTAbits.RA0
#define BPF_S1_STATE	PORTAbits.RA1

#define PADDLE_DIT	PORTFbits.RF4
#define PADDLE_DAH	PORTFbits.RF5

#define LPF_0	LATAbits.LATA3
#define LPF_1	LATAbits.LATA4
#define LPF_2	LATAbits.LATA5
#define LPF_3	LATAbits.LATA6
#define LPF_4	LATAbits.LATA7
#define LPF_5	LATAbits.LATA9
#define LPF_6	LATAbits.LATA10


#endif

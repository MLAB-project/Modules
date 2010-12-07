/********************************************************************
 FileName:     	HardwareProfile - UBW.h
 Dependencies:  See INCLUDES section
 Processor:     PIC18 USB Microcontrollers
 Hardware:      PICDEM FSUSB
 Compiler:      Microchip C18
 Company:       Microchip Technology, Inc.

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
  2.3   09/15/2008   Broke out each hardware platform into its own
                     "HardwareProfile - xxx.h" file
        01/15/2009   UBW support
********************************************************************/

#ifndef HARDWARE_PROFILE_UBW_H
#define HARDWARE_PROFILE_UBW_H

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

    //The PICDEM FS USB Demo Board platform supports the USE_SELF_POWER_SENSE_IO
    //and USE_USB_BUS_SENSE_IO features.  Uncomment the below line(s) if
    //it is desireable to use one or both of the features.
    //#define USE_SELF_POWER_SENSE_IO
    #define tris_self_power     TRISAbits.TRISA2    // Input
    #if defined(USE_SELF_POWER_SENSE_IO)
    #define self_power          PORTAbits.RA2
    #else
    #define self_power          1
    #endif

    //#define USE_USB_BUS_SENSE_IO
    #define tris_usb_bus_sense  TRISAbits.TRISA1    // Input
    #if defined(USE_USB_BUS_SENSE_IO)
    #define USB_BUS_SENSE       PORTAbits.RA1
    #else
    #define USB_BUS_SENSE       1
    #endif

    //Uncomment the following line to make the output HEX of this  
    //  project work with the MCHPUSB Bootloader    
    #define PROGRAMMABLE_WITH_USB_MCHPUSB_BOOTLOADER
	
    //Uncomment the following line to make the output HEX of this 
    //  project work with the HID Bootloader
    //#define PROGRAMMABLE_WITH_USB_HID_BOOTLOADER		

    /*******************************************************************/
    /******** MDD File System selection options ************************/
    /*******************************************************************/
    #define USE_PIC18

    #define ERASE_BLOCK_SIZE        64
    #define WRITE_BLOCK_SIZE        32

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
    #define DEMO_BOARD UBW
    #define UBW
    #define CLOCK_FREQ 48000000

// Special UBW emu board by YAS
//	#define YAS

    /** LED ************************************************************/
 
    /* On UBW, LED1 = RC0, LED2 = RC1, SW = RC2		 					*/

#define mInitAllLEDs()      LATC &= 0xFC; TRISC &= 0xFC;

#define mLED_1              LATCbits.LATC0
#define mLED_2              LATCbits.LATC1

#define mLED_1_On()         mLED_1 = 1;
#define mLED_2_On()         mLED_2 = 1;

#define mLED_1_Off()        mLED_1 = 0;
#define mLED_2_Off()        mLED_2 = 0;

#define mLED_1_Toggle()     mLED_1 = !mLED_1;
#define mLED_2_Toggle()     mLED_2 = !mLED_2;

#if defined(YAS)
	#define RXTX	LATBbits.LATB5
#else
	#define RXTX	LATAbits.LATA2
#endif

#define BPF_S0	LATAbits.LATA0
#define BPF_S1	LATAbits.LATA1

#if defined(YAS)
	#define BPF_S2	LATAbits.LATA2
#endif

#define BPF_S0_STATE	PORTAbits.RA0
#define BPF_S1_STATE	PORTAbits.RA1

#if defined(YAS)
	#define BPF_S2_STATE	PORTAbits.RA2
#endif

#define PADDLE_DIT	PORTBbits.RB6
#define PADDLE_DAH	PORTBbits.RB7

#define LPF_0	LATAbits.LATA3
#define LPF_1	LATAbits.LATA4
#define LPF_2	LATAbits.LATA5

#if defined(YAS)
#else
	#define LPF_3	LATBbits.LATB2
	#define LPF_4	LATBbits.LATB3
	#define LPF_5	LATBbits.LATB4
	#define LPF_6	LATBbits.LATB5
#endif


/** S W I T C H *****************************************************/
#define mInitSwitch()		TRISCbits.TRISC2 = 1;
#define UserSW				PORTCbits.RC2

#define mLED_Both_Off()     {mLED_1_Off(); mLED_2_Off();}
#define mLED_Both_On()      {mLED_1_On(); mLED_2_On();}
#define mLED_Only_1_On()    {mLED_1_On(); mLED_2_Off();}
#define mLED_Only_2_On()    {mLED_1_Off(); mLED_2_On();}






#endif  //HARDWARE_PROFILE_UBW_H

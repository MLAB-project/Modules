/*********************************************************************
 *
 *                Microchip USB C18 Firmware Version 1.2
 *
 *********************************************************************
 * FileName:        user.h
 * Dependencies:    See INCLUDES section below
 * Processor:       PIC18
 * Compiler:        C18 3.11+
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * The software supplied herewith by Microchip Technology Incorporated
 * (the “Company”) for its PICmicro® Microcontroller is intended and
 * supplied to you, the Company’s customer, for use solely and
 * exclusively on Microchip PICmicro Microcontroller products. The
 * software is owned by the Company and/or its supplier, and is
 * protected under applicable copyright laws. All rights are reserved.
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
 * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 * Author               Date        Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Rawin Rojvanit       11/19/04    Original.
 * Rawin Rojvanit       05/14/07    Minor updates.
 ********************************************************************/

#ifndef PICDEM_FS_DEMO_H
#define PICDEM_FS_DEMO_H

/** I N C L U D E S **********************************************************/

/** D E F I N I T I O N S ****************************************************/

// For custom LPF switchover points
#define ALEX
//#define K5OOR
//#define MARC

// YAS is defined in the HardwareProfile - UBW.h, if needed

#if defined(YAS)
   #define NUM_BPF 8
#else
   #define NUM_BPF 4
#endif

#define INIT_SI570_ON_STARTUP

#define VERSION_MAJOR 16
#define VERSION_MINOR 04

#define DEFAULT_I2C_ADDRESS 0x55
#define PCF8574            0x39 // A2 A1 A0 -> 0 0 1

#define F_CAL_DONE 0         // EEPROM position of F_CAL_DONE flag.  4 bytes follow.
#define F_CAL_DONE_VALUE 0x55
#define DEFAULT_FCRYST 114.285

//#if defined(UBW)
#define F_INIT_FREQ 5         // 4 bytes follow
//#elif defined(UBW32)
//#define F_INIT_FREQ 2         // fcryst 4  bytes all stored in one 32 bit slot
//#endif

#define F_INIT_FREQ_VALUE 0x55
#define DEFAULT_INIT_FREQ 56.32

#if defined(UBW)
#define F_SMOOTH   10         // 2 bytes follow
#elif defined(UBW32)
#define F_SMOOTH   4         // 1 slot follow
#endif

#define F_SMOOTH_VALUE   0x55
#define DEFAULT_SMOOTH   3500   // ppm

#define F_SUB_MUL_VALUE 0x55
#define DEFAULT_SUB      0.0
#define DEFAULT_MUL      1.0

#if defined(UBW)
#define F_SUB_MUL      13      // 8 bytes follow
#elif defined(UBW32)
#define F_SUB_MUL      6      // 2 slots follow
#endif

#if defined(UBW)
#define F_CROSS_OVER   22      // 32 bytes follow
#elif defined(UBW32)
#define F_CROSS_OVER   9      // 16 words stored in  16 (unsigned int) slots
#endif

#define F_CROSS_OVER_VALUE   0x55

#if defined(UBW)
#define F_BLINK_LED      55
#elif defined(UBW32)
#define F_BLINK_LED      26
#endif

/** S T R U C T U R E S ******************************************************/


extern BYTE i2c_adr;
extern BYTE command;
extern BYTE replybuf[8];
extern WORD wCount;

#define COMMAND_BUFFER_SIZE   16
#define DATA_PACKET_SIZE 6

typedef struct COMMAND_BUFFER
{
   BYTE command;
   WORD wCount;
   BYTE data[DATA_PACKET_SIZE];
} COMMAND_BUFFER_t;

extern COMMAND_BUFFER_t command_buffer[COMMAND_BUFFER_SIZE];
extern BYTE current_command_in, current_command_out;
extern BYTE command_count;

extern double set_frequency;

extern unsigned char tempBuf[8];

typedef union _avr_freq
{
unsigned long qw;
unsigned char bytes[4];
} avr_freq_t;

extern avr_freq_t avr_freq, fcryst_freq;   //frequency [MHz]*2^21
                                 // fcryst freq [MHz]*2^24
extern avr_freq_t f_mul;               // mul for set freq in 11.21 format

typedef union _offset
{
long qw;                           // signed offset in 11.21 format
unsigned char bytes[4];
}   offset_t;

extern offset_t f_sub;

extern  unsigned char registers[6];

extern BYTE abpf_flag;
extern double Smooth_double;
extern double fcryst_double;
extern WORD_VAL FilterCrossOver[8];         // 11.5 bit value Mhz
extern float   FilterSwitchOver[7];
extern WORD_VAL LPFCrossOver[8];
extern float   LPFSwitchOver[7];

/** P U B L I C  P R O T O T Y P E S *****************************************/
void UserInit(void);
void ProcessIO(void);
void Set_Freq_Handler(void);
void Set_Register_Handler(void);
void Set_Cal_Handler(void);
void Set_Init_Freq_Handler(void);
void Set_Smooth_Handler(void);
void Set_Sub_Mul_Handler(void);

void Reset_Si570(void);
void Freeze (void);
void Unfreeze (void);
void Prep_rd (unsigned short);
void WriteBk (void);
void NewF (void);
void SetNewFreq(void);
void ReadRegs(void);
void ReadStartUpConfiguration(void);
void RunFreqProg(double);
void SetFrequency(double);
void Set_BPF(float);
void Set_LPF(float);
float Cross2Switch(WORD_VAL);
WORD_VAL Switch2Cross(float);
double Freq_From_Register(double);

void Read_Command_Into_Buffer(void);
void USBCheckUserRequest(void);
void USBCheckUBWRequest(void);

#endif //PICDEM_FS_DEMO_H

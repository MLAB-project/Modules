

/** INCLUDES *******************************************************/


#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "HardwareProfile.h"
#include "USB/usb.h"
#include "usbavrcmd.h"

#include "user.h"
#include <math.h>

#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#if defined (UBW)
#include <delays.h>
#include <i2c.h>
#include <EEP.h>

#elif defined (UBW32)
#include <peripheral/i2c.h>
#include <dee_emulation/dee_emulation_pic32.h>

#endif 


/********************************************************************
 * Section B: EP0 Buffer Space
 *******************************************************************/
extern volatile CTRL_TRF_SETUP SetupPkt;           // 8-byte only
extern volatile BYTE CtrlTrfData[USB_EP0_BUFF_SIZE];

#pragma udata

WORD_VAL FilterCrossOver[8];
float	FilterSwitchOver[7];

WORD_VAL LPFCrossOver[8];
float	LPFSwitchOver[7];

#pragma code

void USBCheckUBWRequest(void)
{   
	unsigned char paddle_byte;
	unsigned int eep_adr;
	WORD_VAL w;
	unsigned int i, j;
	unsigned char IO_data;

#if defined (UBW32)
	unsigned int value;
	unsigned int number_of_filter_bytes;
#else
	unsigned char number_of_filter_bytes;
#endif



    if(SetupPkt.RequestType == USB_SETUP_TYPE_STANDARD_BITFIELD) return;	// only deals with non-standard, ie user requests
    
	command = SetupPkt.bRequest;				// save the command of the user request from the setuppacket
												// it will be used for subsequent data transfer

    switch(command)
    {

		case CMD_GET_CW_KEY:

			paddle_byte = 0x22;						// 00100010
			if (!PADDLE_DIT) paddle_byte &=  0xdf;	// 11011111
			if (!PADDLE_DAH) paddle_byte &=  0xfd;	// 11111101
			if (RXTX) paddle_byte |= 0x10;			// PB4 is the ATTINY PTT_OUT pin 00010000
			else paddle_byte &= 0xef;				// 11101111
			
			replybuf[0] = paddle_byte;
            inPipes[0].pSrc.bRam = (BYTE*)&replybuf[0];         // Set Source
            inPipes[0].info.bits.ctrl_trf_mem = USB_EP0_RAM;           // Set memory type
            inPipes[0].wCount.v[0] = 1;                         // Set data count
            inPipes[0].info.bits.busy = 1;
			break;

		case CMD_SET_USRP1:							// Set RxTx and get Paddle status
			paddle_byte = 0x22;						// 00100010
			if ( SetupPkt.W_Value.v[0] ){
				RXTX = 1;							// Set PTT
				paddle_byte |= 0x10;				// 00010000
			}	
			else{
				RXTX = 0;
				paddle_byte &= 0xef;				// 11101111
			};	


			if (!PADDLE_DIT) paddle_byte &=  0xdf;	// 11011111
			if (!PADDLE_DAH) paddle_byte &=  0xfd;	// 11111101
			
			replybuf[0] = paddle_byte;
            inPipes[0].pSrc.bRam = (BYTE*)&replybuf[0];         // Set Source
            inPipes[0].info.bits.ctrl_trf_mem = USB_EP0_RAM;           // Set memory type
            inPipes[0].wCount.v[0] = 1;                         // Set data count
            inPipes[0].info.bits.busy = 1;
			break;

		case CMD_SET_FREQ_REG:							// Control Transfer Rx of data from HOST->UBW
		case CMD_SET_LO_SM:
		case CMD_SET_FREQ:
		case CMD_SET_XTAL:
		case CMD_SET_STARTUP:
		case CMD_SET_PPM:

			wCount = SetupPkt.wLength;
           	outPipes[0].wCount.Val = SetupPkt.wLength;
            outPipes[0].pFunc = &Read_Command_Into_Buffer;
			outPipes[0].pDst.bRam = (BYTE*) &command_buffer[current_command_in].data[0];
			outPipes[0].info.bits.busy = 1;
			break;			

		case CMD_GET_PIN:												// read ports
			IO_data = 0x0d;										// 00001101
			if (PADDLE_DAH) IO_data |= 0x02;					// PB1
			if (BPF_S0_STATE) IO_data |= 0x10;					// PB4
			if (BPF_S1_STATE) IO_data |= 0x20;					// PB5

			replybuf[0] = IO_data;
            inPipes[0].pSrc.bRam = (BYTE*)&replybuf[0];         // Set Source
            inPipes[0].info.bits.ctrl_trf_mem = USB_EP0_RAM;           // Set memory type
            inPipes[0].wCount.v[0] = 1;                         // Set data count
            inPipes[0].info.bits.busy = 1;
			break;
	
		case CMD_SET_PORT:												// set ports
			IO_data = SetupPkt.W_Value.v[0];
			if (!abpf_flag){
				if (IO_data & 0x10) BPF_S0 = 1;
				else BPF_S0 = 0;
				if (IO_data & 0x20) BPF_S1 = 1;
				else BPF_S1 = 0;
			};
			break;			

		case CMD_SET_IO:												// set i/o bits
			IO_data = SetupPkt.W_Index.v[0] & 0x03;				// only 2 bits active 00000011

			if (!abpf_flag) {									// abpf inactive
				if (IO_data & 0x01) BPF_S0 = 1;					// Simulate IO_PIN1 in ATTINY
				else BPF_S0 = 0;
				if (IO_data & 0x02) BPF_S1 = 1;					// Simulate IO_PIN2 in ATTINY
				else BPF_S1 = 0;
			}

				IO_data = BPF_S0_STATE;								// read back status of BPF select pins
				if (BPF_S1_STATE) IO_data |= 0x02;
				else IO_data &= 0x01;

			replybuf[0] = IO_data;
			replybuf[1] = 0x00;
          	inPipes[0].pSrc.bRam = (BYTE*)&replybuf[0];         // Set Source
            inPipes[0].info.bits.ctrl_trf_mem = USB_EP0_RAM;           // Set memory type
            inPipes[0].wCount.v[0] = 2;                         // Set data count
            inPipes[0].info.bits.busy = 1;
			break;

		case CMD_GET_IO:

			IO_data = BPF_S0_STATE;								// status of BPF select pins
			if (BPF_S1_STATE) IO_data |= 0x02;
			else IO_data &= 0x01;
					
			replybuf[0] = IO_data;
			replybuf[1] = 0x00;
          	inPipes[0].pSrc.bRam = (BYTE*)&replybuf[0];         // Set Source
            inPipes[0].info.bits.ctrl_trf_mem = USB_EP0_RAM;           // Set memory type
            inPipes[0].wCount.v[0] = 2;                         // Set data count
            inPipes[0].info.bits.busy = 1;
			break;

		case CMD_SET_FILTER:											// Set and Read filter crossover points
			i = SetupPkt.W_Index.Val;
			if (i < 256){									// Rx Filter
				number_of_filter_bytes = NUM_BPF * 2;
				inPipes[0].pSrc.bRam = (BYTE*)&FilterCrossOver[0];	// Set source

				if (i < NUM_BPF) {
					FilterCrossOver[i].Val = SetupPkt.W_Value.Val;
					if (i != (NUM_BPF-1)) FilterSwitchOver[i] = Cross2Switch(FilterCrossOver[i]);
					else abpf_flag =  SetupPkt.W_Value.Val;
					}
				}		
			else{							// Tx filter	
				number_of_filter_bytes = 16;
				inPipes[0].pSrc.bRam = (BYTE*)&LPFCrossOver[0];		// Set source

				j = i - 256;
				if ( j < 8){
					LPFCrossOver[j].Val = SetupPkt.W_Value.Val;
					if (j != 7) LPFSwitchOver[j] = Cross2Switch(LPFCrossOver[j]);
				};
			};

// now that a filter value of filter enable/disable value is set, update the EEPROM
#if defined (UBW)					
			for (i = 0; i < NUM_BPF; i++){	
					Write_b_eep((i * 2 + F_CROSS_OVER +1), FilterCrossOver[i].v[0]);
					Busy_eep();					
					Write_b_eep((i * 2 + F_CROSS_OVER + 1 + 1), FilterCrossOver[i].v[1]);
					Busy_eep();
					}
#elif defined (UBW32)
			for (i =0; i < NUM_BPF; i++) DataEEWrite( FilterCrossOver[i].Val , (i + F_CROSS_OVER +1));
#endif

#if defined (UBW)
			for (j = 0; j < 8; j++){
				Write_b_eep(( j * 2 + F_CROSS_OVER +17), LPFCrossOver[j].v[0]);
				Busy_eep();					
				Write_b_eep(( j * 2 + F_CROSS_OVER +17 + 1), LPFCrossOver[j].v[1]);
				Busy_eep();
				}		
			Write_b_eep(F_CROSS_OVER, F_CROSS_OVER_VALUE);
			Busy_eep();
#elif defined (UBW32)
			for (j = 0; j < 8; j++){
				DataEEWrite( (unsigned int)LPFCrossOver[j].Val , (j + F_CROSS_OVER +9));
				};	
			DataEEWrite(F_CROSS_OVER_VALUE, F_CROSS_OVER);
#endif	


	        inPipes[0].wCount.v[0] = number_of_filter_bytes;    // Set data count  
           	inPipes[0].info.bits.ctrl_trf_mem = USB_EP0_RAM;           // Set memory type
           	inPipes[0].info.bits.busy = 1;
			break;			

		case CMD_SET_SI570:											// SI570: write byte from register index
			i2c_adr = SetupPkt.W_Value.v[0];
#if defined (UBW)
			IdleI2C();
			StartI2C();
			IdleI2C();
			WriteI2C( i2c_adr <<1);
			WriteI2C( SetupPkt.W_Value.v[1]);				// register = byte 3
			WriteI2C( SetupPkt.W_Index.v[0]);				// value to write to register	
			StopI2C();
			IdleI2C();
#elif defined (UBW32)
			IdleI2C1();
			StartI2C1();
			IdleI2C1();
			MasterWriteI2C1( i2c_adr <<1);
			MasterWriteI2C1( SetupPkt.W_Value.v[1]);				// register = byte 3
			MasterWriteI2C1( SetupPkt.W_Index.v[0]);				// value to write to register	
			StopI2C1();
			IdleI2C1();
#endif

			replybuf[0] = 0;									// just say no errors
   
            inPipes[0].pSrc.bRam = (BYTE*)&replybuf[0];         // Set Source
            inPipes[0].info.bits.ctrl_trf_mem = USB_EP0_RAM;           // Set memory type
            inPipes[0].wCount.v[0] = 1;                         // Set data count
            inPipes[0].info.bits.busy = 1;
			break;

	
		case CMD_GET_LO_SM:									// return sub mul
			for (i=0; i<4; i++) replybuf[i] = f_sub.bytes[i];
			for (i=0; i<4; i++) replybuf[i+4] = f_mul.bytes[i];
            inPipes[0].pSrc.bRam = (BYTE*)&replybuf[0];   		// Set Source
            inPipes[0].info.bits.ctrl_trf_mem = USB_EP0_RAM;           // Set memory type
            inPipes[0].wCount.v[0] = 8;                         // Set data count
            inPipes[0].info.bits.busy = 1;
			break;


		case CMD_GET_FREQ:									// return set freq, ie no offset/mul
			avr_freq.qw = set_frequency * (double)(1L << 21);
            inPipes[0].pSrc.bRam = (BYTE*)&avr_freq.bytes[0];   // Set Source
            inPipes[0].info.bits.ctrl_trf_mem = USB_EP0_RAM;           // Set memory type
            inPipes[0].wCount.v[0] = 4;                         // Set data count
            inPipes[0].info.bits.busy = 1;
            break;

		case CMD_GET_PPM:									// return smooth tune in ppm
			w.Val = Smooth_double * 1000000L;
            inPipes[0].pSrc.bRam = (BYTE*)&w.v[0];   			// Set Source
            inPipes[0].info.bits.ctrl_trf_mem = USB_EP0_RAM;           // Set memory type
            inPipes[0].wCount.v[0] = 2;                         // Set data count
            inPipes[0].info.bits.busy = 1;
            break;

		case CMD_GET_STARTUP:									// return init startup freq	

#if defined(UBW)
			for (i=0; i<4; i++) avr_freq.bytes[i] = Read_b_eep(i + F_INIT_FREQ +1);
#elif defined(UBW32)
			for (i=0; i<4; i++) {
				DataEERead(&value, (i + F_INIT_FREQ +1));
				avr_freq.bytes[i] = value;
				};
#endif

            inPipes[0].pSrc.bRam = (BYTE*)&avr_freq.bytes[0];   // Set Source
            inPipes[0].info.bits.ctrl_trf_mem = USB_EP0_RAM;           // Set memory type
            inPipes[0].wCount.v[0] = 4;                         // Set data count
            inPipes[0].info.bits.busy = 1;
            break;

		case CMD_GET_XTAL:									// return fcryst
            inPipes[0].pSrc.bRam = (BYTE*)&fcryst_freq.bytes[0];   // Set Source
            inPipes[0].info.bits.ctrl_trf_mem = USB_EP0_RAM;           // Set memory type
            inPipes[0].wCount.v[0] = 4;                         // Set data count
            inPipes[0].info.bits.busy = 1;
            break;

        case CMD_GET_SI570:									// SI570: read out frequency control registers
			i2c_adr = SetupPkt.W_Value.v[0];
			ReadRegs();
            inPipes[0].pSrc.bRam = (BYTE*)&registers[0];         // Set Source
            inPipes[0].info.bits.ctrl_trf_mem = USB_EP0_RAM;           // Set memory type
            inPipes[0].wCount.v[0] = 6;                         // Set data count
            inPipes[0].info.bits.busy = 1;
            break;

		case CMD_GET_I2C_ERR:											// return # of i2c errors, set to zero always
			replybuf[0] = 0;									// No errors :)
            inPipes[0].pSrc.bRam = (BYTE*)&replybuf[0];         // Set Source
            inPipes[0].info.bits.ctrl_trf_mem = USB_EP0_RAM;           // Set memory type
            inPipes[0].wCount.v[0] = 1;                         // Set data count
            inPipes[0].info.bits.busy = 1;
            break;


        case CMD_SET_I2C_ADDR:									// Reset EEPROM to default values if 255
													// Otherwise just set i2c address

			if (SetupPkt.W_Value.v[0] == 0xff){
#if defined (UBW)
				Write_b_eep(F_CAL_DONE, 0xff);
				Busy_eep();
				Write_b_eep(F_INIT_FREQ, 0xff);
				Busy_eep();
				Write_b_eep(F_SMOOTH, 0xff);
				Busy_eep();
				Write_b_eep(F_SUB_MUL, 0xff);
				Busy_eep();
				Write_b_eep(F_CROSS_OVER, 0xff);
				Busy_eep();
#elif defined (UBW32)
				DataEEWrite( (unsigned int) 0xff, F_CAL_DONE);
				DataEEWrite( (unsigned int) 0xff, F_INIT_FREQ);
				DataEEWrite( (unsigned int) 0xff, F_SMOOTH);
				DataEEWrite( (unsigned int) 0xff, F_SUB_MUL);
				DataEEWrite( (unsigned int) 0xff, F_CROSS_OVER);
#endif

			i2c_adr = 0x55;
			}
			else {
			i2c_adr = SetupPkt.W_Value.v[0];
			};

			replybuf[0] = 0x00;
            inPipes[0].pSrc.bRam = (BYTE*)&replybuf[0];         // Set Source
            inPipes[0].info.bits.ctrl_trf_mem = USB_EP0_RAM;           // Set memory type
            inPipes[0].wCount.v[0] = 1;                         // Set data count
            inPipes[0].info.bits.busy = 1;
            break;



		case CMD_GET_VERSION:												// return version 15.10
			replybuf[0] = VERSION_MINOR;
			replybuf[1] = VERSION_MAJOR;
            inPipes[0].pSrc.bRam = (BYTE*)&replybuf[0];         // Set Source
            inPipes[0].info.bits.ctrl_trf_mem = USB_EP0_RAM;           // Set memory type
            inPipes[0].wCount.v[0] = 2;                         // Set data count
            inPipes[0].info.bits.busy = 1;
			break;

        default:								  		// Command not supported
			
			replybuf[0] = 0xff;
            inPipes[0].pSrc.bRam = (BYTE*)&replybuf[0] ;         // Set Source
            inPipes[0].info.bits.ctrl_trf_mem = USB_EP0_RAM;            // Set memory type
            inPipes[0].wCount.v[0] = 1;                         // Set data count
            inPipes[0].info.bits.busy = 1;
            break;
    }//end switch

    
}


void Read_Command_Into_Buffer(void)
{

			if (command_count >= COMMAND_BUFFER_SIZE){	// buffer full
				current_command_out++;					// discards oldest command
				if (current_command_out >= COMMAND_BUFFER_SIZE) current_command_out = 0;
				command_count--;						// now one command less (discarded)
			};	
			command_buffer[current_command_in].command = command;
			command_buffer[current_command_in].wCount = wCount;
			// data already copied to command_buffer before this outpipe pFunc is called
			current_command_in++;
			if (current_command_in >= COMMAND_BUFFER_SIZE) current_command_in = 0;
			command_count++;
}

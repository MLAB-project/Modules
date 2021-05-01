#include <18F8310.h>
#device adc=8

#FUSES NOWDT                 	//No Watch Dog Timer
#FUSES WDT128                	//Watch Dog Timer uses 1:128 Postscale
#FUSES INTRC_IO              	//Internal RC Osc, no CLKOUT
#FUSES NOBROWNOUT            	//No brownout reset
#FUSES BORV21                	//Brownout reset at 2.1V
#FUSES NOPUT                 	//No Power Up Timer
#FUSES BW16                  	//16-bit external bus mode
#FUSES STVREN                	//Stack full/underflow will cause reset
#FUSES NODEBUG               	//No Debug mode for ICD
#FUSES IESO                  	//Internal External Switch Over mode enabled
#FUSES NOFCMEN               	//Fail-safe clock monitor disabled
#FUSES NOXINST               	//Extended set extension and Indexed Addressing mode disabled (Legacy mode)
#FUSES NOWAIT                	//Wait selections unavailable for Table Reads or Table Writes
#FUSES NOPROTECT             	//Code not protected from reading
#FUSES NOEBTR                	//Memory not protected from table reads
#FUSES LPT1OSC               	//Timer1 configured for low-power operation
#FUSES MCLR                  	//Master Clear pin enabled
#FUSES MCU                   	//Microcontroller Mode

#use delay(clock=4000000)


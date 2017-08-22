#include <18F87J60.h>
#device adc=8

#FUSES NOWDT                 	//No Watch Dog Timer
#FUSES WDT128                	//Watch Dog Timer uses 1:128 Postscale
#FUSES HS                    	//High speed Osc (> 4mhz for PCM/PCH) (>10mhz for PCD)
#FUSES NODEBUG               	//No Debug mode for ICD
#FUSES NOXINST               	//Extended set extension and Indexed Addressing mode disabled (Legacy mode)
#FUSES STVREN                	//Stack full/underflow will cause reset
#FUSES NOPROTECT             	//Code not protected from reading
#FUSES FCMEN                 	//Fail-safe clock monitor enabled
#FUSES IESO                  	//Internal External Switch Over mode enabled
#FUSES PRIMARY               	//Primary clock is system clock when scs=00
#FUSES ECCPE                 	//Enhanced CCP PWM outpts multiplexed with RE6 thorugh RE3
#FUSES ETHLED                	//Ethernet LED enabled

#use delay(clock=25000000)


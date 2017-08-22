/*
#include <18F4550.h>

#FUSES NOWDT                    //No Watch Dog Timer
#FUSES WDT128                   //Watch Dog Timer uses 1:128 Postscale
#FUSES HS                       //High speed Osc (> 4mhz for PCM/PCH) (>10mhz for PCD)
#FUSES NOPROTECT                //Code not protected from reading
#FUSES NOBROWNOUT               //No brownout reset
#FUSES BORV20                   //Brownout reset at 2.0V
#FUSES NOPUT                    //No Power Up Timer
#FUSES NOCPD                    //No EE protection
#FUSES STVREN                   //Stack full/underflow will cause reset
#FUSES NODEBUG                  //No Debug mode for ICD
#FUSES NOLVP                    //No low voltage prgming, B3(PIC16) or B5(PIC18) used for I/O
#FUSES NOWRT                    //Program memory not write protected
#FUSES NOWRTD                   //Data EEPROM not write protected
#FUSES IESO                     //Internal External Switch Over mode enabled
#FUSES FCMEN                    //Fail-safe clock monitor enabled
#FUSES PBADEN                   //PORTB pins are configured as analog input channels on RESET
#FUSES NOWRTC                   //configuration not registers write protected
#FUSES NOWRTB                   //Boot block not write protected
#FUSES NOEBTR                   //Memory not protected from table reads
#FUSES NOEBTRB                  //Boot block not protected from table reads
#FUSES NOCPB                    //No Boot Block code protection
#FUSES MCLR                     //Master Clear pin enabled
#FUSES LPT1OSC                  //Timer1 configured for low-power operation
#FUSES NOXINST                  //Extended set extension and Indexed Addressing mode disabled (Legacy mode)
#FUSES PLL12                    //Divide By 12(48MHz oscillator input)
#FUSES CPUDIV1                  //System Clock by 1
#FUSES USBDIV                   //USB clock source comes from PLL divide by 2
#FUSES VREGEN                   //USB voltage regulator enabled
#FUSES ICPRT                    //ICPRT enabled
*/

#include <16F887.h>
#device adc=8

#FUSES NOWDT                    //No Watch Dog Timer
#FUSES HS                    //External crystal oscillator
#FUSES NOPUT                    //No Power Up Timer
#FUSES MCLR                     //Master Clear pin enabled
#FUSES NOPROTECT                //Code not protected from reading
#FUSES NOCPD                    //No EE protection
#FUSES NOBROWNOUT               //No brownout reset
#FUSES IESO                     //Internal External Switch Over mode enabled
#FUSES FCMEN                    //Fail-safe clock monitor enabled
#FUSES NOLVP                    //No low voltage prgming, B3(PIC16) or B5(PIC18) used for I/O
#FUSES NODEBUG                  //No Debug mode for ICD
#FUSES NOWRT                    //Program memory not write protected
#FUSES BORV40                   //Brownout reset at 4.0V



#use delay(clock=20000000)
#use rs232(baud=9600,parity=N,xmit=PIN_B7,rcv=PIN_B6,bits=8)

#define TDC_ENABLE PIN_B3      //enable pin for SPI communication with TDC
#use spi(DI=PIN_B1, DO=PIN_B0, CLK=PIN_B2, stream=TDC_stream, bits=32,baud=9600)   // uses software SPI




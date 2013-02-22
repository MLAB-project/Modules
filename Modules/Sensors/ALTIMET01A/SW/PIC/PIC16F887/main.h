#include <16F887.h>
#device adc=10

#FUSES NOWDT                    //No Watch Dog Timer
#FUSES INTRC                    //Internal RC Osc
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

#use delay(clock=8000000)
#use rs232(baud=9600,parity=N,xmit=PIN_B7,rcv=PIN_B6,bits=8)


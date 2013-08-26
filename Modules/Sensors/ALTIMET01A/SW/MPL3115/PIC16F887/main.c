#define VERSION "0.1"
#define ID "$Id: main.c 2916 2013-04-14 17:42:03Z kaklik $"

#include "main.h"

#use i2c(master, sda=PIN_C4, scl=PIN_C3)
#use rs232(baud=9600,parity=N,xmit=PIN_C6,rcv=PIN_C7,bits=8) //rcv TXD xmit RXD

#define MPL3115_ADDR_R  0xC1 //addresa pro cteni
#define MPL3115_ADDR_W  0xC0

#include "../MPL3115.h"


void main()
 {

   float p, t, a;
 printf("\r\nMLAB Barometer and Altimeter demo code \r\n",);
 printf("Temperature [deg C] Preassure [Pa] Altitude [m] \r\n",);
 
 while(TRUE)
 { 
   mpl3115_setP(); //nastaveni pro tlak a teplotu
   delay_ms (500);
   t=mpl3115_T();
   p=mpl3115_P();
   
   mpl3115_setA(); //nastaveni pro vysku a teplotu
   delay_ms (500);
   a=mpl3115_A();

   printf("%3.1f %6.1f %5.2f \r\n", t, p, a);

   delay_ms (1000);
  }
}



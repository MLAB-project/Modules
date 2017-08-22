//#include "C:\Users\Honza\Documents\pic\I2C_magnetometr\main.h"
#include "main.h"
#define EEPROM_SDA  PIN_C4
#define EEPROM_SCL  PIN_C3
#use i2c(master, sda=EEPROM_SDA, scl=EEPROM_SCL)
#use rs232(baud=9600,parity=N,xmit=PIN_C7,rcv=PIN_C6,bits=8) //rcv TXD xmit RXD
#include "BQ34Z100.h"


void main()
{

   setup_adc_ports(NO_ANALOGS|VSS_VDD);
   setup_adc(ADC_CLOCK_DIV_2);
   setup_spi(SPI_SS_DISABLED);
   setup_timer_0(RTCC_INTERNAL|RTCC_DIV_1);
   setup_timer_1(T1_DISABLED);
   setup_timer_2(T2_DISABLED,0,1);
   setup_ccp1(CCP_OFF);
   setup_comparator(NC_NC_NC_NC);// This device COMP currently not supported by the PICWizard

printf("Vycitani zakladnich dat z modulu LION1CELL01B  \r\n",);
printf("(c) MLAB 2013 JACHO \r\n",);
int16 data;

  
  while(TRUE)
 { 
   data=batintT();
   printf("Teplota baterie: %Ld (°C)\r\n", data);
   data=batNAP();
   printf("Napeti clanku: %Ld (mV)\r\n", data);
   data=batPROUD();
   printf("Proud clankem: %Ld (mA)\r\n", data);
   data=batKAPAKT();
   printf("Zbyvajici kapacita: %Ld (mAh)\r\n", data);
   data=batKAPMAX();
   printf("Max. kapacita: %Ld (mAh)\r\n", data);
   data=batSTAV();
   printf("Stav baterie: %Ld (procenta)\r\n", data);
    printf("\r\n");
   delay_ms (2000);
 } 
}

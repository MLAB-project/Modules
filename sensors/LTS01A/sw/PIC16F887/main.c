#include "main.h"

#define S_SDA  PIN_C4
#define S_SCL  PIN_C3
#use i2c(master, sda=S_SDA, scl=S_SCL)
#use rs232(baud=9600,parity=N,xmit=PIN_C6,rcv=PIN_C7,bits=8)

#include "../LTS01.h"

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

printf("Simple Thermomether with LTS01A sensor \r\n",);
printf("(c) MLAB.cz 2013 JACHO  \r\n",);
  
  while(TRUE)
 { 
   printf("T: %f\r\n", LTS01_get_temp());
   delay_ms(500);
 } 
}


/*
SHT25  sensor demo firmware 
*/

#include "main.h"
#include "SHT25.h"

void main()
{
unsigned int8 i=0, sht_config;
float temperature, humidity;

   setup_adc_ports(NO_ANALOGS|VSS_VDD);
   setup_adc(ADC_CLOCK_DIV_2);
   setup_spi(SPI_SS_DISABLED);
   setup_timer_0(RTCC_INTERNAL|RTCC_DIV_1);
   setup_timer_1(T1_DISABLED);
   setup_timer_2(T2_DISABLED,0,1);
   setup_ccp1(CCP_OFF);
   setup_comparator(NC_NC_NC_NC);

   SHT25_soft_reset();
   printf("SHT25 humidity and temperature sensor example \r\n",);
   printf("Temperature  Humidity[%%]  \r\n");
   delay_ms (500);


  while(TRUE)
  { 
    if (i<100) sht_config = SHT25_RH12_T14 | SHT25_HEATER_OFF; // loop alters on chip heater on and off to check correct function
    else
    {
      sht_config = SHT25_RH12_T14 | SHT25_HEATER_ON;
      if (i > 120) i = 0;
    }
   
    temperature = SHT25_get_temp();
    humidity = SHT25_get_hum();

    printf("%f %f %X %X \r\n",temperature, humidity, SHT25_setup(sht_config),sht_config);
    i++;
    delay_ms(1000);
  } 
}


#include "main.h"


void main()
{

   setup_adc_ports(AN0);
   setup_adc(ADC_CLOCK_DIV_32);
   setup_psp(PSP_DISABLED);
   setup_spi(SPI_SS_DISABLED);
   setup_timer_0(RTCC_INTERNAL|RTCC_DIV_1);
   setup_timer_1(T1_DISABLED);
   setup_timer_2(T2_DISABLED,0,1);

   set_adc_channel(0);

   while(true)
   {
float humidity;
//    temperature = ds1820_read();    
      delay_ms(500);
      humidity=0.14732142 * read_adc() - 22.85714150; //linear interpolation of sensor analog data
      printf("RH: %f %%\r\n",humidity);   //display relative humidity value

   }
}

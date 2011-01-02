#include "main.h"

#include "GP2.h"

#define VERSION   0.1

void main()
{
   setup_adc_ports(NO_ANALOGS|VSS_VDD);
   setup_adc(ADC_CLOCK_DIV_2);
   setup_psp(PSP_DISABLED);
   setup_spi(SPI_SS_DISABLED);
   setup_wdt(WDT_OFF);
   setup_timer_0(RTCC_INTERNAL);
   setup_timer_1(T1_DISABLED);
   setup_timer_2(T2_DISABLED,0,1);
   setup_ccp1(CCP_OFF);
   setup_comparator(NC_NC_NC_NC);
   setup_vref(FALSE);

   TDC_reset();
   
   hit1=TDC_MRANGE2_HIT1_START;
   hit2=TDC_MRANGE2_HIT2_1CH1;
   hitin1=TDC_HITIN1_2;
   hitin2=TDC_HITIN1_0;
  
   TDC_update_registers();
      
   while(true)
   {
      TDC_init();
      delay_ms(500);
      printf("measured: %LX, %LX, %LX, %LX \n", TDC_get_measurement(1), TDC_get_measurement(2), TDC_get_measurement(3), TDC_get_measurement(4));
   };
}

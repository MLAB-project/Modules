#include "main.h"

#include "GP2.h"

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
   //TDC_init();
   TDC_setup_reg1();
   
   while(true)
   {
      delay_ms(500);
      printf("ret: %LX \n", TDC_get_reg1());
//      printf("ret: %LX \n", TDC_get_measurement(1));
   };
}

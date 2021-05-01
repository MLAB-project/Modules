#include "C:\Users\kakl\Documents\MLAB\Modules\PIC\PIC18F8xTQ8001A\SW\PIC18F8310\blik.h"


#define LED PIN_J6  //CHANGE PIN_XX TO YOUR LED PIN NUMBER, EX: PIN_A5

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

    //Example blinking LED program
    while(true){
      output_low(LED);
      delay_ms(1000);
      output_high(LED);
      delay_ms(1000);
    }

}

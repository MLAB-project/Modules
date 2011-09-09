#include "main.h"

#use fast_io (D)

#define START  PIN_D4
#define STOP1  PIN_D5
#define STOP2  PIN_D7

#define FIRE_DETECT  PIN_D6

#define MODE_SELECT  PIN_A4      //switch measurement (pulse generator) modes

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
   setup_timer_3(T3_DISABLED|T3_DIV_BY_1);
   setup_ccp1(CCP_OFF);
   setup_comparator(NC_NC_NC_NC);
   setup_vref(FALSE);

   SET_TRIS_D( 0b00000100 );

  while(true)
  {
      delay_ms(50);
      output_low(START);
      output_low(STOP1);
      output_low(STOP2);

// Mode 1
    if(input(MODE_SELECT))
    {
      while(!input(FIRE_DETECT));            
      output_high(START);     // start of time measurement

      output_high(STOP2);
      output_high(STOP1);
 
      output_low(START);
      output_low(STOP2);
      output_low(STOP1);

      output_high(STOP2);
      output_high(STOP1);
 
      output_low(STOP2);
      output_low(STOP1);

    }
// mode 2
      

    if(!input(MODE_SELECT))
    {
      while(!input(FIRE_DETECT));

      output_high(START);
      output_low(START);
      delay_us(150);
      
      output_high(STOP1);
      output_low(STOP1);
      delay_us(1);
      
      output_high(STOP1);
      output_low(STOP1);
      delay_us(10);
      
      output_high(STOP1);
      output_low(STOP1);
    }
  }
}

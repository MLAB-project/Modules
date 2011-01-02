#include "main.h"

#include "GP2.h"

#define VERSION   0.1

#define START  PIN_D4
#define STOP1  PIN_D5
#define STOP2  PIN_D6

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
   hit2=TDC_MRANGE2_HIT2_2CH1;
   hitin1=TDC_HITIN1_2;
   hitin2=TDC_HITIN1_0;
   en_int= 0xFF; //TDC_INT_ALU | TDC_INT_ENDHIT | TDC_INT_TIMEOUT;
   en_err_val=TDC_ERRVAL_EN;
   delval1=0x0;
   delval2=0x0;
   delval3=0x0;
  
   TDC_update_registers();
      
   output_low(START);
   output_low(STOP1);
   output_low(STOP2);
   
   TDC_start_cal();
   delay_ms(50);
      
   while(true)
   {

/*      delay_ms(500);
      hit2=0x00;
      hit1=0x00;
      TDC_update_registers();
      printf("reg1: %X \n", TDC_get_reg1());

      TDC_reset();
      delay_ms(50);
      printf("reg1: %X \n", TDC_get_reg1());
*/
      TDC_init();
      delay_ms(50);
      printf("status: %LX \n", TDC_get_status());
      delay_us(10);
      TDC_start_cycle();
      delay_us(10);
      output_high(START);
      delay_us(1);
      output_low(START);
      
      delay_us(500);
      
      output_high(STOP1);
      delay_us(10);
      output_low(STOP1);      
      delay_us(500);
      output_high(STOP1);
      delay_us(10);
      output_low(STOP1); 
      delay_us(500); 
      output_high(STOP1);
      delay_us(10);
      output_low(STOP1);

      delay_ms(100);
      printf("status: %LX \n", TDC_get_status());
      delay_ms(50);
      printf("measured: %LX, %LX, %LX, %LX \n", TDC_get_measurement(1), TDC_get_measurement(2), TDC_get_measurement(3), TDC_get_measurement(4));
      delay_ms(500);
      
   };
}

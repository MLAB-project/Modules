#include "main.h"

#define VERSION   0.2

#define START  PIN_D4
#define STOP1  PIN_D5
#define STOP2  PIN_D6

#include "GP2.h"

#define ONE_WIRE_PIN       PIN_E2
#include "ds1820.c"

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

   output_low(START);
   output_low(STOP1);
   output_low(STOP2);

   delay_ms(50);

/*
1 0 0 0 0 ADR2 ADR1 ADR0 Write into address ADR
1 0 1 1 0 ADR2 ADR1 ADR0 Read from address ADR
0 1 1 1 0 0 0 0 Init
0 1 0 1 0 0 0 0 Power On Reset
0 0 0 0 0 0 0 1 Start_Cycle
0 0 0 0 0 0 1 0 Start_Temp
0 0 0 0 0 0 1 1 Start_Cal_Resonator
0 0 0 0 0 1 0 0 Start_Cal_TDC
*/

   int16 ret16;
   int8 ret8;

   TDC_reset();
   delay_ms(100);
   
   //----------------------------------------------- Nastaveni registru
   hit1=TDC_MRANGE2_HIT1_START;
   hitin1=TDC_HITIN1_4;
   hitin2=TDC_HITIN2_0;
   en_int= TDC_INT_ALU | TDC_INT_ENDHIT | TDC_INT_TIMEOUT;
   en_err_val=TDC_ERRVAL_EN;
   clkhsdiv=TDC_CLKHSDIV_4;
   delval1=0x0;
   delval2=0x0;
   delval3=0x0;
  
   TDC_update_registers();

   while(TRUE)
   {
      delay_ms(100);
   
   //----------------------------------------------- Mereni
   
      TDC_init();
      
      delay_ms(50);
      
      TDC_start_cycle();
      
      delay_ms(200);
      
      output_high(STOP2);  // Merime jenom jednim kanalem (druhy zrejme musi byt v H)
      
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
      delay_us(1);   
      
   //----------------------------------------------- Pocitani

         printf("Time: %3.7f %3.7f %3.7f ", TDC_mrange2_get_time(1), TDC_mrange2_get_time(2), TDC_mrange2_get_time(3));
      
         output_low(TDC_ENABLE);  //status register
         ret8=0;
         ret8=(0b1011<<4)|4;
         spi_xfer(TDC_stream,ret8,8);
         ret16=spi_xfer(TDC_stream,0,16);
         output_high(TDC_ENABLE);
         printf("[%Lu %Lu %Lu %Lu %Lu %Lu %Lu]\r\n", (1&(ret16)>>12), (1&(ret16)>>11), (1&(ret16)>>10), 1&(ret16)>>9, 7&(ret16)>>6, 7&(ret16)>>3, 7&TDC_get_status());

         TDC_start_temp();
         output_low(TDC_ENABLE);  //status register
         ret8=0;
         ret8=(0b1011<<4)|4;
         spi_xfer(TDC_stream,ret8,8);
         ret16=spi_xfer(TDC_stream,0,16);
         output_high(TDC_ENABLE);
         printf("Temp: [%Lu %Lu %Lu %Lu %Lu %Lu %Lu] ", (1&(ret16)>>12), (1&(ret16)>>11), (1&(ret16)>>10), 1&(ret16)>>9, 7&(ret16)>>6, 7&(ret16)>>3, 7&TDC_get_status());
         printf(" %LX %LX %LX %LX \r\n", TDC_get_measurement(1), TDC_get_measurement(2), TDC_get_measurement(3), TDC_get_measurement(4));
         
   }
}

#include "main.h"
#include <math.h>

#use fast_io (D)

#define VERSION   0.2

#define START  PIN_D4
#define STOP1  PIN_D5
#define STOP2  PIN_D7

#include "GP2.h"

#define ONE_WIRE_PIN       PIN_E2
#include "ds1820.c"

void main()
{
/*   setup_adc_ports(NO_ANALOGS|VSS_VDD);
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
*/
   setup_adc_ports(NO_ANALOGS|VSS_VDD);
   setup_adc(ADC_CLOCK_DIV_2);
   setup_spi(SPI_SS_DISABLED);
   setup_timer_0(RTCC_INTERNAL|RTCC_DIV_1);
   setup_timer_1(T1_DISABLED);
   setup_timer_2(T2_DISABLED,0,1);
   setup_ccp1(CCP_OFF);
   setup_comparator(NC_NC_NC_NC);// This device COMP currently not supported by the PICWizard


   set_tris_d(0x00);

   TDC_reset();

   output_low(START);
   output_low(STOP1);
   output_low(STOP2);

   delay_ms(50);

   int16 ret16;
   int8 ret8;

   TDC_reset();
   delay_ms(100);
   
   while(TRUE)
   {


   //----------------------------------------------- Nastaveni registru
   
   MRange=TDC_MRANGE2;     // sets measurement mode
   hit1=TDC_MRANGE2_HIT1_START;
   hitin1=TDC_HITIN1_4;    // set nomber of hits on channel 1
   hitin2=TDC_HITIN2_0;    // disable channel 2 (normal state for this mode)
   en_int= TDC_INT_ALU | TDC_INT_ENDHIT | TDC_INT_TIMEOUT; // eneble all possible interrupt flags
   en_err_val=TDC_ERRVAL_EN;  // enable of error value output
   clkhsdiv=TDC_CLKHSDIV_4;   // divide clkHS by 4
   
   delval1=0x0;      // windowing disabled
   delval2=0x0;
   delval3=0x0;
  
   TDC_update_registers();

      delay_ms(100);

   //----------------------------------------------- Mereni 2
   
      TDC_init();
      
      delay_ms(50);
      
      TDC_start_cycle();
      
      delay_ms(200);
      
      output_high(STOP2);  // Merime jenom jednim kanalem (druhy zrejme byt v H)
      
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

//         printf("Time2: %LX %LX %LX %LX ", TDC_get_measurement(1), TDC_get_measurement(2), TDC_get_measurement(3), TDC_get_measurement(4));

      
         output_low(TDC_ENABLE);  //status register
         ret8=0;
         ret8=(0b1011<<4)|4;
         spi_xfer(TDC_stream,ret8,8);
         ret16=spi_xfer(TDC_stream,0,16);
         output_high(TDC_ENABLE);
         printf("[%Lu %Lu %Lu %Lu %Lu %Lu %Lu]\r\n", (1&(ret16)>>12), (1&(ret16)>>11), (1&(ret16)>>10), 1&(ret16)>>9, 7&(ret16)>>6, 7&(ret16)>>3, 7&TDC_get_status());

         printf("Time2: %3.7f %3.7f %3.7f \r\n", TDC_mrange2_get_time(1), TDC_mrange2_get_time(2), TDC_mrange2_get_time(3));


   //----------------------------------------------- Nastaveni registru
   
   MRange=TDC_MRANGE1;
   hit1=TDC_MRANGE1_HIT1_NOAC;
   hit2=TDC_MRANGE1_HIT2_NOAC;
   hitin1=TDC_HITIN1_1;
   hitin2=TDC_HITIN2_1;
   en_int= TDC_INT_ALU | TDC_INT_ENDHIT | TDC_INT_TIMEOUT;
   en_err_val=TDC_ERRVAL_EN;
   clkhsdiv=TDC_CLKHSDIV_4;
   delval1=0x0;
   delval2=0x0;
   delval3=0x0;
  
   TDC_update_registers();

      delay_ms(100);


   //----------------------------------------------- Mereni 1
   
      TDC_init();
      
      delay_ms(50);
      output_low(START);
      output_low(STOP1);
      output_low(STOP2);
            
      output_high(START);     // start of time measurement

      output_high(STOP2);
      output_high(STOP1);
 
      output_low(STOP1);
      output_low(STOP2);
      output_low(START);



   //----------------------------------------------- Pocitani

//         printf("Time1: %LX %LX %LX %LX ", TDC_get_measurement(1), TDC_get_measurement(2), TDC_get_measurement(3), TDC_get_measurement(4));

         output_low(TDC_ENABLE);  //status register
         ret8=0;
         ret8=(0b1011<<4)|4;
         spi_xfer(TDC_stream,ret8,8);
         ret16=spi_xfer(TDC_stream,0,16);
         output_high(TDC_ENABLE);

         printf("[%Lu %Lu %Lu %Lu %Lu %Lu %Lu]\r\n", (1&(ret16)>>12), (1&(ret16)>>11), (1&(ret16)>>10), 1&(ret16)>>9, 7&(ret16)>>6, 7&(ret16)>>3, 7&TDC_get_status());

         printf("Time1: %3.7f %3.7f %3.7f \r\n", TDC_mrange1_get_time(1,0,1,1), TDC_mrange1_get_time(2,0,2,1), TDC_mrange1_get_time(1,1,2,1)); 

   /// -----------------------------------------------  Temperature masurement


         TDC_reset();
         portnum=TDC_TPORTNUM_4;
         Tcycle=TDC_TCYCLE_SHORT;
         fakenum=TDC_TFAKENUM_2;
         selclkT=TDC_TSELCLK_128HS;

         TDC_update_registers();

         TDC_init();
         TDC_start_temp();
         
         
         output_low(TDC_ENABLE);  //status register
         ret8=0;
         ret8=(0b1011<<4)|4;
         spi_xfer(TDC_stream,ret8,8);
         ret16=spi_xfer(TDC_stream,0,16);
         output_high(TDC_ENABLE);
         printf("Temp: %LX %LX %LX %LX ", TDC_get_measurement(1), TDC_get_measurement(2), TDC_get_measurement(3), TDC_get_measurement(4));
         printf(" [%Lu %Lu %Lu %Lu %Lu %Lu %Lu] \r\n", (1&(ret16)>>12), (1&(ret16)>>11), (1&(ret16)>>10), 1&(ret16)>>9, 7&(ret16)>>6, 7&(ret16)>>3, 7&TDC_get_status());
   }
}

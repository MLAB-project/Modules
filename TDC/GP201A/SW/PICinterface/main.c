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

   int32 ble;
   int16 ret16;
   int8 ret8;


   while(TRUE)
   {
      delay_ms(100);


      TDC_reset();
      delay_ms(100);
   
   //----------------------------------------------- Nastaveni registru
/*      output_low(TDC_ENABLE);
      ble=0;
      ble=(8<<28)|(0<<24);    // write addres
      ble|=(0<<20)|(0<<16)|(0<<14)|(3<<12)|(1<<10)|(0<<9)|(0<<8)|(0<<7)|(1<<6)|(1<<5)|(0<<4)|(1<<3)|(0<<2)|(0<<1)|0;
      spi_xfer(TDC_stream,ble,32);
      output_high(TDC_ENABLE);
   
      output_low(TDC_ENABLE);
      ble=0;
      ble=(8<<28)|(1<<24);
      ble|=(2<<20)|(1<<16)|(0<<15)|(1<<14)|(0<<11)|(4<<8)|0;
      spi_xfer(TDC_stream,ble,32);
      output_high(TDC_ENABLE);
      
      output_low(TDC_ENABLE);
      ble=0;
      ble=(8<<28)|(2<<24);
      ble|=(1<<21)|(1<<20)|(1<<19)|0;
      spi_xfer(TDC_stream,ble,32);
      output_high(TDC_ENABLE);
   
      output_low(TDC_ENABLE);
      ble=0;
      ble=(8<<28)|(3<<24);
      ble|=(0<<22)|(1<<21)|(1<<20)|(1<<19)|0;
      spi_xfer(TDC_stream,ble,32);
      output_high(TDC_ENABLE);
   
      output_low(TDC_ENABLE);
      ble=0;
      ble=(8<<28)|(4<<24);
      ble|=(4<<19)|0;
      spi_xfer(TDC_stream,ble,32);
      output_high(TDC_ENABLE);
   
      output_low(TDC_ENABLE);
      ble=0;
      ble=(8<<28)|(5<<24);
      ble|=(0<<21)|(0<<20)|(0<<19)|(0<<16)|0;
      spi_xfer(TDC_stream,ble,32);
      output_high(TDC_ENABLE);
*/

   hit1=TDC_MRANGE2_HIT1_START;
//   hit2=TDC_MRANGE2_HIT2_2CH1;
   hitin1=TDC_HITIN1_4;
   hitin2=TDC_HITIN2_0;
   en_int= TDC_INT_ALU | TDC_INT_ENDHIT | TDC_INT_TIMEOUT;
   en_err_val=TDC_ERRVAL_EN;
   delval1=0x0;
   delval2=0x0;
   delval3=0x0;
  
   TDC_update_registers();

   //----------------------------------------------- Vypis registru
         
      printf("- %LX %LX %LX %LX ", TDC_get_measurement(1), TDC_get_measurement(2), TDC_get_measurement(3), TDC_get_measurement(4));
   
      output_low(TDC_ENABLE);
      ret8=0;
      ret8=(0b1011<<4)|4;
      spi_xfer(TDC_stream,ret8,8);
      ret16=spi_xfer(TDC_stream,0,16);
      output_high(TDC_ENABLE);
      printf("[%Lu %Lu %Lu %Lu %Lu %Lu %Lu] ", (1&(ret16)>>12), (1&(ret16)>>11), (1&(ret16)>>10), 1&(ret16)>>9, 7&(ret16)>>6, 7&(ret16)>>3, 7&ret16);
      
      printf("%X\r\n",TDC_get_reg1());
   
   //----------------------------------------------- Mereni
   
      TDC_init();
      
      delay_ms(50);
      
      TDC_start_cycle();
      
      delay_ms(200);
      
      output_high(STOP2);  // Merime jenom jednim kanalem (druhy zrejme musi byt v H)
      
      output_high(START);
      output_low(START);
      delay_us(1);
      
      output_high(STOP1);
      output_low(STOP1);
      delay_us(1);
      
      
      output_high(STOP1);
      output_low(STOP1);
      delay_us(1);
      
      output_high(STOP1);
      output_low(STOP1);
      delay_us(1);
   
   
      
   //----------------------------------------------- Pocitani
      int32 nn;
      for(nn=1;nn<=3;nn++)
      {
         delay_ms(500);

         printf("* %LX %LX %LX %LX ", TDC_get_measurement(1), TDC_get_measurement(2), TDC_get_measurement(3), TDC_get_measurement(4));
      
         output_low(TDC_ENABLE);  //status register
         ret8=0;
         ret8=(0b1011<<4)|4;
         spi_xfer(TDC_stream,ret8,8);
         ret16=spi_xfer(TDC_stream,0,16);
         output_high(TDC_ENABLE);
         printf("[%Lu %Lu %Lu %Lu %Lu %Lu %Lu] ", (1&(ret16)>>12), (1&(ret16)>>11), (1&(ret16)>>10), 1&(ret16)>>9, 7&(ret16)>>6, 7&(ret16)>>3, 7&ret16);
                  
         printf("%X\r\n",TDC_get_reg1());
      
         switch (nn)
         {
            case 1:
               hit2=TDC_MRANGE2_HIT2_1CH1;
               break;

            case 2:
               hit2=TDC_MRANGE2_HIT2_2CH1;
               break;

            case 3:
               hit2=TDC_MRANGE2_HIT2_3CH1;
               break;
         }
         TDC_update_reg1();
      }  
   }
}

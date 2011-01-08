#include "main.h"

#define VERSION   0.1

#define START  PIN_D4
#define STOP1  PIN_D5
#define STOP2  PIN_D6
#include "GP2.h"

#define ONE_WIRE_PIN       PIN_E2
#include "ds1820.c"

void main()
{
float temperature;

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
   
   MRange=TDC_MRANGE1;
   hitin1=TDC_HITIN1_2;
   hitin2=TDC_HITIN2_2;
   hit1=TDC_MRANGE1_HIT1_START;
   hit2=TDC_MRANGE1_HIT2_2CH1;
   en_int= (TDC_INT_ALU | TDC_INT_ENDHIT | TDC_INT_TIMEOUT);
   en_err_val=TDC_ERRVAL_EN;
   delval1=0x0;
   delval2=0x0;
   delval3=0x0;
   calibrate=TDC_CALIBRATE_EN;
   disautocal=TDC_AUTOCAL_EN;
   
   firenum=TDC_FIRENUM_2;
   div_fire=TDC_DIV_FIRE_3;
  
   TDC_update_registers();
      
   output_low(START);
   output_low(STOP1);
   output_low(STOP2);
 
   TDC_start_cal_resonator();
   delay_ms(50);
   printf("calibrate: %LX, %LX, %LX, %LX \r\n", TDC_get_measurement(1), TDC_get_measurement(2), TDC_get_measurement(3), TDC_get_measurement(4));
   TDC_start_cal();
   delay_ms(50);
      
   while(true)
   {
      temperature = ds1820_read();

      TDC_init();
      delay_ms(50);
      printf("Temp: %f \r\n", temperature);
      delay_ms(50);
      printf("status: %LX \r\n", TDC_get_status());

      TDC_start_cycle();

      delay_us(10);
      output_high(START);
//      delay_us(1);
      output_low(START);
      
//      delay_us(1);
      
      output_high(STOP1);
//      delay_us(10);
      output_low(STOP1);      
//      delay_us(500);
//      output_high(STOP1);
//      delay_us(10);
//      output_low(STOP1); 
//      delay_us(500); 
//      output_high(STOP1);
//      delay_us(10);
 //     output_low(STOP1);

      output_high(STOP2);
//      delay_us(10);
      output_low(STOP2);      
//      delay_us(500);
      output_high(STOP2);
//      delay_us(10);
      output_low(STOP2); 
//      delay_us(500); 
      output_high(STOP2);
//      delay_us(10);
      output_low(STOP2);

      output_low(START);

      delay_ms(10);
      printf("status: %LX \r\n", TDC_get_status());
      delay_ms(50);
      printf("measured: %LX, %LX, %LX, %LX \r\n", TDC_get_measurement(1), TDC_get_measurement(2), TDC_get_measurement(3), TDC_get_measurement(4));
      delay_ms(500);
      
   };
}

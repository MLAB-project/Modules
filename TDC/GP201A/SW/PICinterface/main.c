#include "main.h"
#include <math.h>
#include <stdlib.h>


#define  INTN_PIN    PIN_D7
#include "GP2.h"

#define VERSION "0.2"

#define ONE_WIRE_PIN       PIN_E2
#include "ds1820.c"

void temperature_measurement()    ///  Temperature masurement by TDC and dallas sensor

{
//For temperature measurement TDC unit must be initialised in measurement mode2 this is not destribed in datasheet!!
   TDC_reset();
   en_int= TDC_INT_ALU | TDC_INT_ENDHIT | TDC_INT_TIMEOUT; // eneble all possible interrupt flags
   en_err_val=TDC_ERRVAL_EN;  // enable of error value output
   clkhsdiv=TDC_CLKHSDIV_4;   // divide clkHS by 4
   
         portnum=TDC_TPORTNUM_4;
         Tcycle=TDC_TCYCLE_SHORT;
         fakenum=TDC_TFAKENUM_2;
         selclkT=TDC_TSELCLK_128HS;

         TDC_update_registers();
         delay_ms(10);

         TDC_init();
         delay_ms(50);      

         TDC_start_temp();
         While(input(INTN_PIN));      // waiting for interrupt flag
         
         printf("$TDC%s TMP %10LU %10LU %10LU %10LU ", VERSION,  TDC_get_measurement(1), TDC_get_measurement(2), TDC_get_measurement(3), TDC_get_measurement(4));
         printf("%f \r\n",ds1820_read()+273.15);

}

void measurementM1()
{
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

   //----------------------------------------------- Pocitani

//         printf("Time1: %LX %LX %LX %LX ", TDC_get_measurement(1), TDC_get_measurement(2), TDC_get_measurement(3), TDC_get_measurement(4));

/*         output_low(TDC_ENABLE);  //status register
         ret8=0;
         ret8=(0b1011<<4)|4;
         spi_xfer(TDC_stream,ret8,8);
         ret16=spi_xfer(TDC_stream,0,16);
         output_high(TDC_ENABLE);

         printf("[%Lu %Lu %Lu %Lu %Lu %Lu %Lu]\r\n", (1&(ret16)>>12), (1&(ret16)>>11), (1&(ret16)>>10), 1&(ret16)>>9, 7&(ret16)>>6, 7&(ret16)>>3, 7&TDC_get_status());
*/
         printf("Time1: %3.7f %3.7f %3.7f \r\n", TDC_mrange1_get_time(1,0,1,1), TDC_mrange1_get_time(2,0,2,1), TDC_mrange1_get_time(1,1,2,1)); 


}


void measurementM2(unsigned int hits)
{
   TDC_reset();
   delay_ms(50);
   MRange=TDC_MRANGE2;     // sets measurement mode
   hit1=TDC_MRANGE2_HIT1_START;
//   hitin1=TDC_HITIN1_4;    // set nomber of hits on channel 1
   hitin2=TDC_HITIN2_0;    // disable channel 2 (normal state for this mode)
   en_int= TDC_INT_ALU | TDC_INT_ENDHIT | TDC_INT_TIMEOUT; // eneble all possible interrupt flags
   en_err_val=TDC_ERRVAL_EN;  // enable of error value output
   clkhsdiv=TDC_CLKHSDIV_4;   // divide clkHS by 4
   firenum=TDC_FIRENUM_1;
   
   switch(hits)
   {
      case 1:
         hitin1=TDC_HITIN1_2;
         break;

      case 2:
         hitin1=TDC_HITIN1_3;
         break;

      case 3:
         hitin1=TDC_HITIN1_4;
         break;

      default: return;
   }

   delval1=0x0;      // windowing disabled
   delval2=0x0;
   delval3=0x0;
  
   TDC_update_registers();

   delay_ms(10);

   //----------------------------------------------- Measuring mode 2
   
      TDC_init();
      delay_ms(50);      
      TDC_start_cycle(); 
      While(!input(INTN_PIN));      // waiting for interrupt flag
      
      // STOP2 INPUT MUST BE PULLED HIGH - else GP2 does not respond to stop pulses!
            
   //----------------------------------------------- Pocitani

      printf("$TDC%s M2 ", VERSION);
      printf("%3.7f %3.7f %3.7f \r\n", TDC_mrange2_get_time(1), TDC_mrange2_get_time(2), TDC_mrange2_get_time(3));

}


void main()
{

char command[20];
char tmp[5];
unsigned int parameter;
   setup_adc_ports(NO_ANALOGS|VSS_VDD);
   setup_adc(ADC_CLOCK_DIV_2);
   setup_spi(SPI_SS_DISABLED);
   setup_timer_0(RTCC_INTERNAL|RTCC_DIV_1);
   setup_timer_1(T1_DISABLED);
   setup_timer_2(T2_DISABLED,0,1);
   setup_ccp1(CCP_OFF);
   setup_comparator(NC_NC_NC_NC);// This device COMP currently not supported by the PICWizard

   TDC_reset();
   delay_ms(50);

   printf("\r\n\r\n# TDC%s (C) 2011 Jakub Kakona\r\n",VERSION);   // Welcome message
//   printf("#%s\r\n",&REV[4]);

   while(TRUE)
   {
    printf("$TDC%s->", VERSION);
    fgets(command);
    printf("%s\r\n", command);
    
    strcpy(tmp,"TM");
    if (!strncmp(command, tmp, 2)) temperature_measurement();

    strcpy(tmp,"M2 ");
    if (!strncmp(command, tmp, 3))
    {
      parameter=atoi(command[5]);
    printf("%u\r\n",parameter);
      measurementM2(parameter);
    }
   
    strcpy(tmp,"M1 ");
    if (!strncmp(command, tmp, 3))
    {
      measurementM1();
    }

   }
}

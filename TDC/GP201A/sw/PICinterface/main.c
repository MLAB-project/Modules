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

void measurementM1(unsigned int hits1,unsigned int hits2,)
{
   TDC_reset();
   delay_ms(50);
   en_int= TDC_INT_ALU | TDC_INT_ENDHIT | TDC_INT_TIMEOUT; // eneble all possible interrupt flags
   en_err_val=TDC_ERRVAL_EN;  // enable of error value output
   clkhsdiv=TDC_CLKHSDIV_1;   // divide clkHS by 1
   firenum=TDC_FIRENUM_1;
   calibrate=TDC_CALIBRATE_EN;
   disautocal=TDC_AUTOCAL_EN;     // automatic calibration enabled
   
   rfedge2=TDC_CH2EDGE_FAL_RIS;     // stop channels input edge sensityvity selection
   rfedge1=TDC_CH1EDGE_FAL_RIS;

   MRange=TDC_MRANGE1;
   hit1=TDC_MRANGE1_HIT1_NOAC;
   hit2=TDC_MRANGE1_HIT2_NOAC;

   delval1=0x0;
   delval2=0x0;
   delval3=0x0;

   switch(hits2)      // sets number of hits on channel 1
   {
      case 0:
         hitin2=TDC_HITIN2_0;
         break;

      case 1:
         hitin2=TDC_HITIN2_1;
         break;

      case 2:
         hitin2=TDC_HITIN2_2;
         break;

      case 3:
         hitin2=TDC_HITIN2_3;
         break;

      case 4:
         hitin2=TDC_HITIN2_4;
         break;

      default: return;
   }

   switch(hits1)      // sets number of hits on channel 1
   {
      case 0:
         hitin1=TDC_HITIN1_0;
         break;

      case 1:
         hitin1=TDC_HITIN1_1;
         break;

      case 2:
         hitin1=TDC_HITIN1_2;
         break;

      case 3:
         hitin1=TDC_HITIN1_3;
         break;

      case 4:
         hitin1=TDC_HITIN1_4;
         break;

      default: return;
   }

   TDC_update_registers();

      delay_ms(50);


   //----------------------------------------------- Mereni 1
   
      TDC_init();
      TDC_start_cycle();   // Fire pulse generator activation 
      delay_ms(100);

      While(!input(INTN_PIN));      // waiting for interrupt flag

   //----------------------------------------------- Pocitani

//     printf("[%Lu %Lu %Lu %Lu %Lu %Lu %Lu]\r\n", (1&(TDC_get_status())>>12), (1&(TDC_get_status())>>11), (1&(TDC_get_status())>>10), 1&(TDC_get_status())>>9, 7&(TDC_get_status())>>6, 7&(TDC_get_status())>>3, 7&TDC_get_status());

      delay_ms(10);

      printf("$TDC%s M1 ", VERSION);
      printf("%6.6f %6.6f", TDC_mrange1_get_time(1,1,1,0), TDC_mrange1_get_time(2,1,2,0));
// syntax TDC_mrange1_get_time(HIT1:[Channel, shot], HIT2:[Channel , shot])    time=HIT1-HIT2 and does not support negative output
      printf("\r\n");
}


void measurementM2(unsigned int hits)
{
unsigned int i;

   TDC_reset();
   delay_ms(50);
   MRange=TDC_MRANGE2;     // sets measurement mode
   hit1=TDC_MRANGE2_HIT1_START; // time is always counted from start pulse at this measurement mode
   hitin2=TDC_HITIN2_0;    // disable channel 2 (normal state for this mode)
   en_int= TDC_INT_ALU | TDC_INT_ENDHIT | TDC_INT_TIMEOUT; // eneble all possible interrupt flags
   en_err_val=TDC_ERRVAL_EN;  // enable of error value output
   clkhsdiv=TDC_CLKHSDIV_4;   // divide clkHS by 4
   firenum=TDC_FIRENUM_1;
   
   switch(hits)      // sets number of hits on channel 1
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
                  
   //----------------------------------------------- Calculate and print output

      printf("$TDC%s M2 ", VERSION);
      for(i=1;i<=hits;i++) printf(" %4.6f", TDC_mrange2_get_time(i));
      printf("\r\n");

}

void get_command(char *ptr, unsigned int max) // gets string of defined maximum lenght
{
char c=0;
unsigned int len=0;

   while ((c=getc()) != 13)
   {
      ptr[len]=c;
      
      if (len == max-2)
      {
         ptr[len+1]=0;
         return;
      }
      len++;
   }
   
   ptr[len]=0;   
   return;
}


void main()
{

char command[20];
char tmp[5];
char *ptr;
unsigned long parameter, parameter2;
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

   printf("\r\n\r\n# TDC%s (C) 2011 Jakub Kakona kaklik@mlab.cz\r\n",VERSION);   // Welcome message
//   printf("#%s\r\n",&REV[4]);

   while(TRUE)
   {
    printf("$TDC%s->", VERSION);    // print prompt
    get_command(command, 20);    // receive command from terminal
    printf("%s\r\n", command);   // echo received command


//    delay_ms(50);
//    strcpy(command,"M1 1 1");


    strcpy(tmp,"TM");
    if (!strncmp(command, tmp, 2)) temperature_measurement();

    strcpy(tmp,"M2 ");
    if (!strncmp(command, tmp, 3))
    {
      parameter=strtol(command+3,&ptr,10);
      measurementM2(parameter);
    }
   
    strcpy(tmp,"M1 ");
    if (!strncmp(command, tmp, 3))
    {
      parameter=strtol(command+3,&ptr,10);
      parameter2=strtol(ptr,&ptr,10);
      measurementM1(parameter, parameter2);
    }
   }
}

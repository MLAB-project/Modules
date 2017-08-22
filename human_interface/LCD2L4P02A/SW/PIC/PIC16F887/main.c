#include "main.h"

#define LCD_ENABLE_PIN  PIN_E0                                    ////
#define LCD_RS_PIN      PIN_E1                                    ////
#define LCD_RW_PIN      PIN_E2                                    ////
#define LCD_DATA4       PIN_D4                                    ////
#define LCD_DATA5       PIN_D5                                    ////
#define LCD_DATA6       PIN_D6                                    ////
#define LCD_DATA7       PIN_D7 
#include <lcd.c>

#define BEEPER       PIN_B5

int beep()
{
unsigned int i;

i=0;
 for(i=0;i<100;i++)
 {
  output_low(BEEPER);
  delay_ms(1);
  output_high(BEEPER);
  delay_ms(1);
 }
}


void main()
{
int16 i=0; 

   setup_adc_ports(NO_ANALOGS|VSS_VDD);
   setup_adc(ADC_CLOCK_DIV_2);
   setup_spi(SPI_SS_DISABLED);
   setup_timer_0(RTCC_INTERNAL|RTCC_DIV_1);
   setup_timer_1(T1_DISABLED);
   setup_timer_2(T2_DISABLED,0,1);
   setup_ccp1(CCP_OFF);
   setup_comparator(NC_NC_NC_NC);      // This device COMP currently not supported by the PICWizard
   setup_oscillator(OSC_8MHZ);

   lcd_init();
   lcd_putc("(c) Kaklik 2013");
   lcd_gotoxy(3,2);
   lcd_putc("www.mlab.cz");
   Delay_ms(2000);
   lcd_init();

   while (TRUE)
   {
     lcd_gotoxy(1,1);

     printf(lcd_putc,"LCD test");
     lcd_gotoxy(1,2);
     printf(lcd_putc,"%c %x ",i,i);
     i++;
      beep();
     Delay_ms(500);
   }

}

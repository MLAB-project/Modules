#include "main.h"


#define MAX    1024

// Vystup PWM je na nozickach C1 a C2

void main()
{
   int16 pwm;
   
   setup_adc_ports(NO_ANALOGS);
   setup_adc(ADC_OFF);
   setup_spi(SPI_SS_DISABLED);
   setup_timer_0(RTCC_INTERNAL|RTCC_DIV_1);
   setup_timer_1(T1_DISABLED);
   setup_timer_2(T2_DIV_BY_1,255,1);
   setup_ccp1(CCP_PWM);
   setup_ccp2(CCP_PWM);
   set_pwm1_duty(0);
   set_pwm2_duty(0);
   
   port_b_pullups(TRUE);
   pwm=0;


   // Postupne zhasina a rozsveci stridave dve LED
   while(TRUE)
   {
      while(pwm<MAX)
      {
         pwm++;
         delay_ms(5);
         set_pwm1_duty(pwm);
         set_pwm2_duty(MAX-pwm);
      };
      while(pwm>0)
      {
         pwm--;
         delay_ms(5);
         set_pwm1_duty(pwm);
         set_pwm2_duty(MAX-pwm);
      }      
   }
}

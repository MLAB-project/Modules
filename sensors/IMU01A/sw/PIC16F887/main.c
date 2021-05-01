//Akcelerometr IMU01A
//(c) MLAB Jan Chroust 2013


#include <main.h>

#define PIN_SDA  PIN_C4
#define PIN_SCL  PIN_C3
#use i2c(master, sda=PIN_SDA, scl=PIN_SCL) //I2C
#use rs232(baud=9600,parity=N,xmit=PIN_C7,rcv=PIN_C6,bits=8) //rcv TXD xmit RXD
#include <math.h>
#include <MMA8451Q.h>

signed int16 X, Y, Z; //promenne pro akcelerometr

void main()
{
   setup_adc_ports(NO_ANALOGS|VSS_VDD);
   setup_adc(ADC_CLOCK_DIV_2);
   setup_spi(SPI_SS_DISABLED);
   setup_timer_0(RTCC_INTERNAL|RTCC_DIV_1);
   setup_timer_1(T1_DISABLED);
   setup_timer_2(T2_DISABLED,0,1);
   setup_ccp1(CCP_OFF);
   setup_comparator(NC_NC_NC_NC);  

   setAK(); //nastaveni akcelerometru

   printf("Akcelerometr IMU01A - MMA8451Q \r\n",);
   printf("(c) MLAB JACHO 2013  \r\n",); 
  
  while(TRUE)
      { 
         X=akX ();
         Y=akY ();
         Z=akZ ();
         printf("Namerene hodnoty: \r\n",);
         printf("Osa X: %Ld \r\n",X);
         printf("Osa Y: %Ld \r\n",Y);
         printf("Osa Z: %Ld \r\n",Z);
         delay_ms (2000);
  
      }
}


#include "D:\Honza\MLAB\Modules\Sensors\LTS01A\SW\PIC16F887\main.h"

#define S_SDA  PIN_C3
#define S_SCL  PIN_C4
#use i2c(master, sda=S_SDA, scl=S_SCL)
#use rs232(baud=9600,parity=N,xmit=PIN_B3,rcv=PIN_B2,bits=8) //rcv TXD xmit RXD

//Adresa pro VDD, VDD, VDD W 0x9E R 0x9F
//Adresa pro GND GND GND W 0x90 R 0x91

void main()
{

   setup_adc_ports(NO_ANALOGS|VSS_VDD);
   setup_adc(ADC_CLOCK_DIV_2);
   setup_spi(SPI_SS_DISABLED);
   setup_timer_0(RTCC_INTERNAL|RTCC_DIV_1);
   setup_timer_1(T1_DISABLED);
   setup_timer_2(T2_DISABLED,0,1);
   setup_ccp1(CCP_OFF);
   setup_comparator(NC_NC_NC_NC);// This device COMP currently not supported by the PICWizard

printf("Simple Thermomether  \r\n",);
printf("(c) MLAB 2013 JACHO  \r\n",);

signed int8 MSB;
byte LSB;
float t;
  
  while(TRUE)
 { 
   


   i2c_start();
   I2C_Write(0x90);
   I2C_write(0x00);
   i2c_stop();
   i2c_start();
   I2C_Write(0x91);
   MSB=i2c_read(1);
   LSB=i2c_read(0);
   i2c_stop(); 
   
    t = (float)(LSB)/256.0;
    t = (float)(MSB+t); 

printf("Teplota: %f (C)\r\n", t);
delay_ms(500);
 } 
}


#include "D:\Honza\MLAB\Modules\HumanInterfaces\TOUCHBOARD01A\SW\PIC16F887\main.h"
#define S_SDA  PIN_C3
#define S_SCL  PIN_C4
#use i2c(master, sda=S_SDA, scl=S_SCL)
#use rs232(baud=9600,parity=N,xmit=PIN_B3,rcv=PIN_B2,bits=8) //rcv TXD xmit RXD


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

unsigned int STAV1;
unsigned int data1;

  
  while(TRUE)
 { 
   


//akcelerometr
   int1 ack=0;
   i2c_start();            // If the write command is acknowledged,
   ack = i2c_write(0xB5);// then the device is ready.
   i2c_stop();
  ack=!ack;
   
 i2c_stop();

   i2c_start();
   I2C_Write(0xB4);
   I2C_write(0x00);
   i2c_stop();
   i2c_start();
   I2C_Write(0xB5);
   STAV1=i2c_read(0);
   i2c_stop(); 

i2c_start();
   I2C_Write(0xB4);
   I2C_write(0x01);
   i2c_stop();
   i2c_start();
   I2C_Write(0xB5);
   data1=i2c_read(0);
   i2c_stop();   
   
  


printf("Stav: %d (procenta)\r\n", ack);
printf("Stav00: %d (procenta)\r\n", STAV1);
printf("Stav01: %d (procenta)\r\n", data1);
delay_ms(500);
 } 
}

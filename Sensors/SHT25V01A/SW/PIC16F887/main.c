#include "main.h"

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

int16 data1, data2, data3;

int XL,XH,YL,YH,ZL,ZH;
  
  while(TRUE)
 { 

data1=0;
data2=0 ;


//akcelerometr
   int1 ack;
   i2c_start();            // If the write command is acknowledged,
   ack = i2c_write(0x81);//hen the device is ready.
   i2c_stop();
  ack=!ack;
   
   
   
   i2c_stop(); //T

   i2c_start();
   I2C_Write(0x80);
   I2C_write(0xF3);
// i2c_stop();
   i2c_start();
   I2C_Write(0x81);
 XH=i2c_read(0);
 XL=i2c_read(0);
   i2c_stop(); 

  
i2c_start();   //RH
   I2C_Write(0x80);
   I2C_write(0xF5);
// i2c_stop();
   i2c_start();
   I2C_Write(0x81);
   YH=i2c_read(0);
   YL=i2c_read(0);
   i2c_stop();  
   

   
data1 = (((unsigned int16) XH << 8) + XL>>2 );
data2 = (((unsigned int16) YH << 8) + YL>>2);


printf("Stav: %d (procenta)\r\n", ack);

printf("Stav: %Ld(procenta)\r\n", data1);
printf("Stav: %Ld(procenta)\r\n", data2);

delay_ms (2000);

 } 
}


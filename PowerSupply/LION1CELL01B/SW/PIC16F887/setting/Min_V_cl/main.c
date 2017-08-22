#include "C:\Users\Honza\Documents\pic\I2C_bat_pam\Min_V_cl\main.h"



#define EEPROM_SDA  PIN_C4
#define EEPROM_SCL  PIN_C3
#use i2c(master, sda=EEPROM_SDA, scl=EEPROM_SCL)
#use rs232(baud=9600,parity=N,xmit=PIN_C7,rcv=PIN_C6,bits=8) //rcv TXD xmit RXD


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
unsigned int8 STAV1,STAV2;

unsigned int16 SOUCET, SOUCET1;
unsigned int8 LSB=0,ZK,k=0,VH,VL;
//unsigned int8  
  
 while(TRUE)
 { 
   
   


   i2c_start(); //blockdatacontrol
   I2C_Write(0xAA);
   I2C_write(0x61);
   i2c_start();
   I2C_Write(0xAA);
   i2c_write(0x00);
   i2c_stop(); 
   delay_ms (1);


   i2c_start();//dataflashclass 
   I2C_Write(0xAA);
   I2C_write(0x3e);
   
   i2c_start();
   I2C_Write(0xAA);
   i2c_write(0x50);
   i2c_stop(); 
   delay_ms (1);
 
 
  i2c_start();//dataflashblock
   I2C_Write(0xAA);
   I2C_write(0x3f);
   
   i2c_start();
   I2C_Write(0xAA);
   I2C_write(0x02);
   i2c_stop(); 
 
 delay_ms (1);
 
 
 
 
 i2c_start();//blockdata horni bit
   I2C_Write(0xAA);
   I2C_write(0x43);
  
   i2c_start();
   I2C_Write(0xAB);
   VH=I2C_read(0);
   
   i2c_stop();
   
  i2c_start();//blockdata
   I2C_Write(0xAA);
   I2C_write(0x44);
  
   i2c_start();
   I2C_Write(0xAB);
   
   VL=I2C_read(0);
   i2c_stop();  
      
   
delay_ms (1);
 
  printf("VL %lX \r\n", VL); 
   printf("LH %lX \r\n", VH); 
    
  


  

if(VH==0x0A)
{
LSB=LSB-1;
printf("Vysledne LSB %lX \r\n", LSB); 
while(TRUE)
{
}
}

else
{
 
 
i2c_start();//blockdata
   I2C_Write(0xAA);
   I2C_write(0x43);
  
   i2c_start();
   I2C_Write(0xAA);
   I2C_write(0x0A);
   i2c_stop(); 

i2c_start();//blockdata
   I2C_Write(0xAA);
   I2C_write(0x44);
  
   i2c_start();
   I2C_Write(0xAA);
   I2C_write(0x5A);
   i2c_stop(); 


   
   
} 

i2c_start();//blockdata
   I2C_Write(0xAA);
   I2C_write(0x60);
  
   i2c_start();
   I2C_Write(0xAA);
   I2C_write(LSB);
   i2c_stop();

LSB=LSB+1;

delay_ms (100);

}

 } 
 

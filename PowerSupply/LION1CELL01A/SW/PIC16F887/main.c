#include "C:\Users\Honza\Documents\pic\I2C_magnetometr\main.h"
#define EEPROM_SDA  PIN_B0
#define EEPROM_SCL  PIN_B1
#use i2c(master, sda=EEPROM_SDA, scl=EEPROM_SCL)
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
unsigned int8 XH,XL,YH,YL,ZH,ZL,INTEP,INTEP1, NAP,NAP1, PROUD,PROUD1,KAPZ,KAPZ1,KAPC,KAPC1, STAV,STAV1;
unsigned int8 XW,YW,ZW,AW;

int16 data1;
int16 data2;
int16 data3;
int16 data4;
int16 data5;
int16 data6;
int16 data7;
int16 data8;
int16 data9;
  
  while(TRUE)
 { 
   XL=0;
XH= 0;
YL= 0;
YH= 0;
ZL= 0;
ZH= 0;
    
   i2c_start();
   I2C_Write(0x3C);
   I2C_write(0x03);
   i2c_stop();
   i2c_start();
   I2C_Write(0x3D);
   XH=i2c_read(0);
   i2c_stop();
   i2c_start();
   I2C_Write(0x3C);
   I2C_write(0x04);
   i2c_stop();
   i2c_start();
   I2C_Write(0x3D);
   XL=i2c_read(0);
   i2c_stop();
   i2c_start();
   I2C_Write(0x3C);
   I2C_write(0x05);
   i2c_stop();
   i2c_start();
   I2C_Write(0x3D);
   ZH=i2c_read(0);
   i2c_stop();
   i2c_start();
   I2C_Write(0x3C);
   I2C_write(0x06);
   i2c_stop();
   i2c_start();
   I2C_Write(0x3D);
   ZL=i2c_read(0);
   i2c_stop();
   i2c_start();
   I2C_Write(0x3C);
   I2C_write(0x07);
   i2c_stop();
   i2c_start();
   I2C_Write(0x3D);
   YH=i2c_read(0);
   i2c_stop();
   i2c_start();
   I2C_Write(0x3C);
   I2C_write(0x08);
   i2c_stop();
   i2c_start();
   I2C_Write(0x3D);
   YL=i2c_read(0);
   i2c_stop();
   
  Delay_ms(3700);  

data1 = (((unsigned int16) XH << 8) + XL );
data2 = (((unsigned int16) YH << 8) + YL );
data3 = (((unsigned int16) ZH << 8) + ZL );

   i2c_start();
   I2C_Write(0xAA);
   I2C_write(0x0c);
  
   i2c_start();
   I2C_Write(0xAB);
   INTEP=i2c_read(0);
   i2c_stop();
   
  i2c_start();
   I2C_Write(0xAA);
   I2C_write(0x0d);
   i2c_start();
   I2C_Write(0xAB);
   INTEP1=i2c_read(0);
   i2c_stop();
   
   i2c_start();
   I2C_Write(0xAA);
   I2C_write(0x08);
   i2c_stop();
   i2c_start();
   I2C_Write(0xAB);
   NAP=i2c_read(0);
   i2c_stop();

   i2c_start();
   I2C_Write(0xAA);
   I2C_write(0x09);
   i2c_stop();
   i2c_start();
   I2C_Write(0xAB);
   NAP1=i2c_read(0);
   i2c_stop();
   
    i2c_start();
   I2C_Write(0xAA);
   I2C_write(0x0a);
   i2c_stop();
   i2c_start();
   I2C_Write(0xAB);
   PROUD=i2c_read(0);
   i2c_stop();

   i2c_start();
   I2C_Write(0xAA);
   I2C_write(0x0b);
   i2c_stop();
   i2c_start();
   I2C_Write(0xAB);
   PROUD1=i2c_read(0);
   i2c_stop();  
   
   
       i2c_start();
   I2C_Write(0xAA);
   I2C_write(0x04);
   i2c_stop();
   i2c_start();
   I2C_Write(0xAB);
   KAPZ=i2c_read(0);
   i2c_stop();

   i2c_start();
   I2C_Write(0xAA);
   I2C_write(0x05);
   i2c_stop();
   i2c_start();
   I2C_Write(0xAB);
   KAPZ1=i2c_read(0);
   i2c_stop(); 
   
   
   i2c_start();
   I2C_Write(0xAA);
   I2C_write(0x06);
   i2c_stop();
   i2c_start();
   I2C_Write(0xAB);
   KAPC=i2c_read(0);
   i2c_stop();

   i2c_start();
   I2C_Write(0xAA);
   I2C_write(0x07);
   i2c_stop();
   i2c_start();
   I2C_Write(0xAB);
   KAPC1=i2c_read(0);
   i2c_stop();
   
      i2c_start();
   I2C_Write(0xAA);
   I2C_write(0x02);
   i2c_stop();
   i2c_start();
   I2C_Write(0xAB);
   STAV=i2c_read(0);
   i2c_stop();

   i2c_start();
   I2C_Write(0xAA);
   I2C_write(0x03);
   i2c_stop();
   i2c_start();
   I2C_Write(0xAB);
   STAV1=i2c_read(0);
   i2c_stop(); 
   

data4 = (((unsigned int16) INTEP1 << 8) + INTEP );
data4 = (data4/10)-273;
data5 = (((unsigned int16) NAP1 << 8) + NAP );
data6 = (((unsigned int16) PROUD1 << 8) + PROUD );
data7 = (((unsigned int16) KAPZ1 << 8) + KAPZ );
data8 = (((unsigned int16) KAPC1 << 8) + KAPC );
data9 = (((unsigned int16) STAV1 << 8) + STAV );

 
   


printf("X %Ld \r\n", data1);
printf("Y %Ld \r\n", data2);
printf("Z %Ld \r\n", data3);
printf("Teplota uvnitr io: %Ld C\r\n", data4);
printf("Napeti clanku: %Ld mV \r\n", data5);
printf("Proud: %Ld mA \r\n", data6);
printf("Kapacita zbytek: %Ld mAh\r\n", data7);
printf("Kapacita max: %Ld mAh\r\n", data8);
printf("Stav: %Ld (procenta)\r\n", data9);



i2c_start();
   I2C_Write(0xAA);
   I2C_write(0x61);
   i2c_stop();
   i2c_start();
   I2C_Write(0xAA);
   i2c_write(0x00);
   i2c_stop(); 
   
i2c_start();
   I2C_Write(0xAA);
   I2C_write(0x3e);
   i2c_stop();
   i2c_start();
   I2C_Write(0xAA);
   i2c_write(0x40);
   i2c_stop(); 
   
 i2c_start();
   I2C_Write(0xAA);
   I2C_write(0x44);
   i2c_stop();
   i2c_start();
   I2C_Write(0xAB);
   STAV1=i2c_read(0);
   i2c_stop(); 
printf("Stav: %X (procenta)\r\n", STAV1);
 } 
}

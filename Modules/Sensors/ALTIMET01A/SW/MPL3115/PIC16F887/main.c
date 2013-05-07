//Jan Chroust 15.4.2013


#include "main.h"

#define EEPROM_SDA  PIN_B0
#define EEPROM_SCL  PIN_B1
#use i2c(master, sda=EEPROM_SDA, scl=EEPROM_SCL)
#use rs232(baud=9600,parity=N,xmit=PIN_B3,rcv=PIN_B2,bits=8) //rcv TXD xmit RXD

#define MPL3115_ADDR_R  0xC1 //addresa pro cteni
#define MPL3115_ADDR_W  0xC0


void mpl3115_setA (void) //nastaven� pro v��ku
 {

     
   i2c_start(); //STANDBY mode
   I2C_Write(MPL3115_ADDR_W);
   I2C_write(0x26);  
   I2C_write(0xB8);
   i2c_stop();
   
   i2c_start(); //PT_DATA_CFG set
   I2C_Write(MPL3115_ADDR_W);
   I2C_write(0x13);  
   I2C_write(0x07); //hodnota
   i2c_stop();
   
   i2c_start();   //ACTIVE mode
   I2C_Write(MPL3115_ADDR_W);
   I2C_write(0x26);  
   I2C_write(0xB9);
   i2c_stop();
  }
  
void mpl3115_setP (void) //nastaven� pro tlak
 {

     
   i2c_start(); //STANDBY mode
   I2C_Write(MPL3115_ADDR_W);
   I2C_write(0x26);  
   I2C_write(0xB8);
   i2c_stop();
   
   i2c_start(); //PT_DATA_CFG set
   I2C_Write(MPL3115_ADDR_W);
   I2C_write(0x13);  
   I2C_write(0x07); //hodnota
   i2c_stop();
   
   i2c_start();   //ACTIVE mode
   I2C_Write(MPL3115_ADDR_W);
   I2C_write(0x26);  
   I2C_write(0x39);
   i2c_stop();
  }


byte mpl3115_read (byte reg)
 {
   byte i;
     
   i2c_start(); 
   I2C_Write(MPL3115_ADDR_W);
   I2C_write(reg);  
   i2c_start(); 
   I2C_Write(MPL3115_ADDR_R);
   i=i2c_read(0);
   i2c_stop();
   
   return i;
  }


float mpl3115_T (void) //teplota ve stupnich
{
int m;
float l, t;
 
   m= mpl3115_read (0x04);
   l= (float)(mpl3115_read(0x05)>>4)/16.0;
   t = (float)(M + L); 
 return t;
}

float mpl3115_A (void) //vyska v m
{

int16 m, c;
float l, a;
 
m= mpl3115_read (0x01);
c= mpl3115_read (0x02);  
l= (float)(mpl3115_read(0x03)>>4)/16.0;
a = (float)((m << 8)|c) + l;
 return a;
}


float mpl3115_P (void) //tlak v Pa
{
unsigned int32  m;
unsigned int16 c;
unsigned int l;
float p, l1;
 
m= mpl3115_read (0x01);
c= mpl3115_read (0x02);  
l=mpl3115_read(0x03);

l1= (float)(l>>4)/4.0;
p = (float)((m << 10)|(c<<2)|(l>>6)) + l1;

 return p;
}

void main()
 {

   float p, t, a;
 printf("Tlakomer nebo vyskomer \r\n",);
 
 while(TRUE)
 { 
   mpl3115_setP(); //nastaveni pro tlak a teplotu
   delay_ms (500);
   t=mpl3115_T();
   p=mpl3115_P();
   
   mpl3115_setA(); //nastaveni pro vysku a teplotu
   delay_ms (500);
   a=mpl3115_A();


   printf("Teplota: %10.4f(stupne)\r\n", t);
   printf("Tlak: %10.4f(Pa)\r\n", p);
   printf("V��ka: %10.4f(m)\r\n", a);

delay_ms (1000);
}


}



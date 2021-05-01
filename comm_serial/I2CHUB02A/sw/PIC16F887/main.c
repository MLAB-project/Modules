#include "main.h"
//I2CHUB
//ADRESA pro èteni 0xE1
//pro zápis 0xE0

#use i2c(master, sda=PIN_C4, scl=PIN_C3)
#use rs232(baud=9600,parity=N,xmit=PIN_C7,rcv=PIN_C6,bits=8) //rcv TXD xmit RXD

void setHUB(int d) //vstupuje 1-8
//hodnota udava jaky port bude pripojen na master I2C
//zde je nastaveno propojeni jen jedne brany, je mozne propojit i vice bran naraz
{
switch (d) {

    case 1: d=0x01;

           break;

    case 2: d=0x02;

           break;
           
    case 3: d=0x04;

           break;

    case 4: d=0x08;

           break;
    case 5: d=0x10;

           break;

    case 6: d=0x20;

           break;
    case 7: d=0x40;

           break;

    case 8: d=0x80;

           break;
   
   default:printf("chyba");

           break; }
   
   i2c_start();
   I2C_Write(0xE0);
   
   I2C_write(d);
   i2c_stop();           

}


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

printf("I2CHUB  \r\n",);
printf("(c)MLAB 2013 JACHO  \r\n",);

  while(TRUE)
 { 
   setHUB(3); //pripoji prislusnou branu
   delay_ms(1000);
 } 
}


#include <main.h>

/*
MPL115A1 SDN - +3.3V (always power on)
MPL115A1 #CS - PIN_C2
MPL115A1 DOUT - PIN_C4
MPL115A1 DIN - PIN_C5
MPL115A1 SCLK - PIN_C3
MPL115A1 GND - GND
MPL115A1 VDD - +3.3V 
*/

#define CSN_SPI PIN_C2
int8 address, uiTadc, data ;


// SPI mode definitions.
#define SPI_MODE_0  (SPI_L_TO_H | SPI_XMIT_L_TO_H)
#define SPI_MODE_1  (SPI_L_TO_H)
#define SPI_MODE_2  (SPI_H_TO_L)
#define SPI_MODE_3  (SPI_H_TO_L | SPI_XMIT_L_TO_H)


void main()
{
printf("Start \r\n");

setup_spi(SPI_MASTER | SPI_MODE_0 | SPI_CLK_DIV_64);

output_high(CSN_SPI);

delay_ms(100); 

  while(true)
  {
     data = 5; //just to be sure that the value is updated

     //Start temperature and pressure conversion
     address = 0x24;
     address &= 0x7F;
   
     output_low(CSN_SPI);
     delay_ms(1);
     spi_write(address);
     delay_ms(1);
     spi_write(0x00);
     delay_ms(1);
     output_high(CSN_SPI);
     delay_ms(2);
   
   
   // get MSB for Pressure
   address = 0x00;
   address |= 0x80;
   
   output_low(CSN_SPI);
   delay_ms(1);
   spi_write(address);
   delay_ms(1);
   data = spi_read(0x00);
   delay_ms(1);
   output_high(CSN_SPI);

   printf("%u \r\n", data);

   //uiTadc = (unsigned int) data << 8;
   //printf("%u\n\r", uiTadc);
      
   
   delay_ms(100);
  }

}

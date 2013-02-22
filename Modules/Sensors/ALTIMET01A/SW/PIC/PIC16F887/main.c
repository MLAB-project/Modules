#include <16f887.h>
#fuses HS, NOWDT, NOPROTECT, BROWNOUT, PUT, NOLVP
#use delay(clock = 20000000)
#use rs232(baud=57600, xmit=PIN_C6, rcv=PIN_C7)

#define CSN_SPI PIN_C2
int8 address, uiTadc, data ;


// SPI mode definitions.
#define SPI_MODE_0  (SPI_L_TO_H | SPI_XMIT_L_TO_H)
#define SPI_MODE_1  (SPI_L_TO_H)
#define SPI_MODE_2  (SPI_H_TO_L)
#define SPI_MODE_3  (SPI_H_TO_L | SPI_XMIT_L_TO_H)


void main()
{
printf("Start\n\r");

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

   printf("%u\n\r", data);

   //uiTadc = (unsigned int) data << 8;
   //printf("%u\n\r", uiTadc);
      
   
   delay_ms(100);
  }

}

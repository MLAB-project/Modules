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
#include "MPL115A1.c"

void main()
{
   printf("Start \r\n");
   setup_spi(SPI_MASTER | SPI_MODE_0 | SPI_CLK_DIV_64);
   output_high(CSN_SPI);
   delay_ms(100); 

   MPL_init();  // get correction coefficients from the sensor 

   while(true)
   {
      printf("%f %f \r\n", MPL_get_pressure(), MPL_get_temperature());
      delay_ms(500);
   }
}

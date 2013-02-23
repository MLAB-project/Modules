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

// SPI mode definitions.
#define SPI_MODE_0  (SPI_L_TO_H | SPI_XMIT_L_TO_H)
#define SPI_MODE_1  (SPI_L_TO_H)
#define SPI_MODE_2  (SPI_H_TO_L)
#define SPI_MODE_3  (SPI_H_TO_L | SPI_XMIT_L_TO_H)

unsigned int16 a0;
unsigned int16 b1;
unsigned int16 b2;
unsigned int16 c12;


int MPL_init()
{   
unsigned int8 a0_MSB, a0_LSB;
unsigned int8 b1_MSB, b1_LSB;
unsigned int8 b2_MSB, b2_LSB;
unsigned int8 c12_MSB, c12_LSB;

   output_low(CSN_SPI);

   spi_write(0x88);              // get MSB for a0
   a0_MSB = spi_read(0x00);
   spi_write(0x8A);              // get LSB for a0
   a0_LSB = spi_read(0x00);

   spi_write(0x8C);              // get MSB for a0
   b1_MSB = spi_read(0x00);
   spi_write(0x8E);              // get LSB for a0
   b1_LSB = spi_read(0x00);

   spi_write(0x90);              // get MSB for a0
   b2_MSB = spi_read(0x00);
   spi_write(0x92);              // get LSB for a0
   b2_LSB = spi_read(0x00);

   spi_write(0x94);              // get MSB for a0
   c12_MSB = spi_read(0x00);
   spi_write(0x96);              // get LSB for a0
   c12_LSB = spi_read(0x00);

   spi_read(0x00);
   output_high(CSN_SPI);
   
   a0 = ((int16) a0_MSB << 8) + a0_LSB;
   b1 = ((int16) b1_MSB << 8) + b1_LSB;
   b2 = ((int16) b2_MSB << 8) + b2_LSB;
   c12 = ((int16) c12_MSB << 8) + c12_LSB;
}

float MPL_get_pressure()
{   
int8 LSB_data, MSB_data;
int16 ADC_pressure, ADC_temperature;

   output_low(CSN_SPI);        //Start temperature and pressure conversion
   spi_write(0x24);
   spi_write(0x00);
   output_high(CSN_SPI);

   delay_ms(3);
         
   output_low(CSN_SPI);     // get MSB for Pressure
   spi_write(0x80);
   LSB_data = spi_read(0x00);
   spi_write(0x82);              // get LSB for Pressure
   MSB_data = spi_read(0x00);

   ADC_pressure = ((int16) MSB_data << 8) + LSB_data;  // conversion of 8bit registers to 16bit variable 

   spi_write(0x84);
   LSB_data = spi_read(0x00);
   spi_write(0x86);              // get LSB for Temperature
   MSB_data = spi_read(0x00);
   spi_read(0x00);
   output_high(CSN_SPI);

   ADC_temperature = ((int16) MSB_data << 8) + LSB_data;  // conversion of 8bit registers to 16bit variable 

//   printf("%lX  %lX\r\n", ADC_pressure, ADC_temperature);       

   return (a0 + (b1 + c12 * ADC_temperature) * ADC_pressure + b2 * ADC_temperature );
}

void main()
{
   printf("Start \r\n");
   setup_spi(SPI_MASTER | SPI_MODE_0 | SPI_CLK_DIV_64);
   output_high(CSN_SPI);
   delay_ms(100); 

   MPL_init();

   while(true)
   {
      printf("%f \r\n", MPL_get_pressure());
      delay_ms(100);
   }
}

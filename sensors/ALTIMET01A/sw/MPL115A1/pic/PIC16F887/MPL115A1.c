/*
MPL115A1 SDN - +3.3V (always power on)
MPL115A1 #CS - PIN_C2
MPL115A1 DOUT - PIN_C4
MPL115A1 DIN - PIN_C5
MPL115A1 SCLK - PIN_C3
MPL115A1 GND - GND
MPL115A1 VDD - +3.3V 
*/


// SPI mode definitions.
#define SPI_MODE_0  (SPI_L_TO_H | SPI_XMIT_L_TO_H)
#define SPI_MODE_1  (SPI_L_TO_H)
#define SPI_MODE_2  (SPI_H_TO_L)
#define SPI_MODE_3  (SPI_H_TO_L | SPI_XMIT_L_TO_H)

float a0;      // correctiaon coefficients
float b1;
float b2;
float c12;


void MPL_init()
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

   spi_write(0x8C);              // get MSB for b1
   b1_MSB = spi_read(0x00);
   spi_write(0x8E);              // get LSB for b1
   b1_LSB = spi_read(0x00);

   spi_write(0x90);              // get MSB for b2
   b2_MSB = spi_read(0x00);
   spi_write(0x92);              // get LSB for b2
   b2_LSB = spi_read(0x00);

   spi_write(0x94);              // get MSB for c12
   c12_MSB = spi_read(0x00);
   spi_write(0x96);              // get LSB for c12
   c12_LSB = spi_read(0x00);

   spi_read(0x00);
   output_high(CSN_SPI);
 
 // translate to floating point number

printf("%d %d %d %d %d %d %d %d ",a0_MSB, a0_LSB,b1_MSB, b1_LSB, b2_MSB, b2_LSB, c12_MSB, c12_LSB);
   
   a0 = ((unsigned int16) a0_MSB << 5) + (a0_LSB >> 3) + (a0_LSB & 0x07)/8.0;
   b1 = ((((b1_MSB & 0x1F) * 0x100) + b1_LSB) / 8192.0) - 3;
   b2 = ((((unsigned int16) (b2_MSB - 0x80) << 8) + b2_LSB)/ 16384.0) - 2;
   c12 =(((c12_MSB * 0x100) + c12_LSB)/16777216.0);
}

float MPL_get_pressure()
{   
unsigned int8 LSB_data, MSB_data;
unsigned int16 ADC_pressure, ADC_temperature;
float Pcomp;

   output_low(CSN_SPI);        //Start temperature and pressure conversion
   spi_write(0x24);
   spi_write(0x00);
   output_high(CSN_SPI);

   delay_ms(10);
         
   output_low(CSN_SPI);     // get MSB for Pressure
   spi_write(0x80);
   MSB_data = spi_read(0x00);
   spi_write(0x82);              // get LSB for Pressure
   LSB_data = spi_read(0x00);
   output_high(CSN_SPI);

   ADC_pressure = (((unsigned int16) MSB_data << 8) + LSB_data ) >> 6;  // conversion of 8bit registers to 16bit variable 

   output_low(CSN_SPI);
   spi_write(0x84);
   MSB_data = spi_read(0x00);
   spi_write(0x86);              // get LSB for Temperature
   LSB_data = spi_read(0x00);
   spi_read(0x00);
   output_high(CSN_SPI);

   ADC_temperature = (((unsigned int16) MSB_data << 8) + LSB_data ) >> 6;  // conversion of 8bit registers to 16bit variable 
   
   Pcomp = (a0 + (b1 + c12 * ADC_temperature) * ADC_pressure + b2 * ADC_temperature );  // compute relative compensated pressure

   return (Pcomp * ((115.0 - 50.0)/1023.0) + 50.0);  // return absolute pressure
}

float MPL_get_temperature()
{   
unsigned int8 LSB_data, MSB_data;
unsigned int16 ADC_temperature;

   output_low(CSN_SPI);        //Start temperature and pressure conversion
   spi_write(0x22);
   spi_write(0x00);
   output_high(CSN_SPI);

   delay_ms(10);
         
   output_low(CSN_SPI);
   spi_write(0x84);
   MSB_data = spi_read(0x00);
   spi_write(0x86);              // get LSB for Temperature
   LSB_data = spi_read(0x00);
   spi_read(0x00);
   output_high(CSN_SPI);

   ADC_temperature = (((unsigned int16) MSB_data << 8) + LSB_data ) >> 6;  // conversion of 8bit registers to 16bit variable 
   
   return ( ((float) ADC_temperature - 498.0)/-5.35) + 25.0;  // return temperature in deg C
}


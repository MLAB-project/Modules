void TDC_init()
{
   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0x70);
   output_high(TDC_ENABLE);
}

void TDC_reset()
{
   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0x50);
   output_high(TDC_ENABLE);
}

void TDC_start_cycle()
{
   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0x01);
   output_high(TDC_ENABLE);
}

void TDC_start_temp()
{
   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0x02);
   output_high(TDC_ENABLE);
}

void TDC_start_cal_resonator()
{
   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0x03);
   output_high(TDC_ENABLE);
}

void TDC_start_cal()
{
   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0x04);
   output_high(TDC_ENABLE);
}

unsigned int32 TDC_get_measurement(int num)
{
unsigned int32 ret;

   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0xB0 + num - 1);
   ret=spi_xfer(TDC_stream,0,32);
   output_high(TDC_ENABLE);
   return ret;
}

unsigned int16 TDC_get_status()
{
unsigned int16 ret;

   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0xB4,8);
   ret=spi_xfer(TDC_stream,0,16);
   output_high(TDC_ENABLE);
   return ret;
}

unsigned int8 TDC_get_reg1()
{
unsigned int8 ret;

   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0xB5,8);
   ret=spi_xfer(TDC_stream,0,8);
   output_high(TDC_ENABLE);
   return ret;
}

void TDC_setup_reg1()
{
   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0x81,8);
   spi_xfer(TDC_stream,0x224000,24);   
   output_high(TDC_ENABLE);

   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0xB1);
   output_high(TDC_ENABLE);

   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0xB2);
   output_high(TDC_ENABLE);

   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0xB3);
   output_high(TDC_ENABLE);

   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0xB4);
   output_high(TDC_ENABLE);
}

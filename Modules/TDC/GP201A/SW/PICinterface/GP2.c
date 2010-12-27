void TDC_init()
{
   spi_xfer(TDC_stream,0x70);
}

void TDC_reset()
{
   spi_xfer(TDC_stream,0x50);
}

void TDC_start_cycle()
{
   spi_xfer(TDC_stream,0x01);
}

void TDC_start_temp()
{
   spi_xfer(TDC_stream,0x02);
}

void TDC_start_cal_resonator()
{
   spi_xfer(TDC_stream,0x03);
}

void TDC_start_cal()
{
   spi_xfer(TDC_stream,0x04);
}

unsigned int32 TDC_get_measurement(int num)
{
   spi_xfer(TDC_stream,0xB0 + num - 1);
   return spi_xfer(TDC_stream,0,32);
}

unsigned int16 TDC_get_status()
{
   spi_xfer(TDC_stream,0xB4);
   return spi_xfer(TDC_stream,0,16);
}

unsigned int8 TDC_get_reg1()
{
   spi_xfer(TDC_stream,0xB5);
   return spi_xfer(TDC_stream,0,8);
}

void TDC_setup_reg1()
{
   spi_xfer(TDC_stream,0xB0);
}

void TDC_setup_reg2()
{
   spi_xfer(TDC_stream,0xB1);
}

void TDC_setup_reg3()
{
   spi_xfer(TDC_stream,0xB2);
}

void TDC_setup_reg4()
{
   spi_xfer(TDC_stream,0xB3);
}

void TDC_setup_reg5()
{
   spi_xfer(TDC_stream,0xB4);
}


//struct {
unsigned int8 firenum;
unsigned int8 div_fire;
unsigned int8 calresnum  :2;
unsigned int8 clkhsdiv  ;
unsigned int8 start_clkhs:1;
unsigned int8 portnum    :1;
unsigned int8 Tcycle     :1;
unsigned int8 fakenum    :1;
unsigned int8 selclkT    :1;
unsigned int8 calibrate  :1;
unsigned int8 disautocal :1;
unsigned int8 MRange     :1;
unsigned int8 neg_stop2  :1;
unsigned int8 neg_stop1  :1;
unsigned int8 neg_start  :1;
//}reg0;

//struct {
unsigned int hit2       :4;
unsigned int hit1       :4;
unsigned int fast_init  :1;
unsigned int sc         :1;
unsigned int hitin2     :3;
unsigned int hitin1     :3;
//}reg1;

//struct {
unsigned int en_int     :3;
unsigned int rfedge2    :1;
unsigned int rfedge1    :1;
unsigned int delval1    :3;
//}reg2;

//struct {
unsigned int en_err_val :1;
unsigned int tim0_mr2   :2;
unsigned int32 delval     :7;
//}reg3;

//}TDC_registers;


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

void TDC_update_registers()
{
   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0x81,8);
   spi_xfer(TDC_stream,reg1.*,24);   
   output_high(TDC_ENABLE);

/*   output_low(TDC_ENABLE);
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
   output_high(TDC_ENABLE); */
}

void TDC_set_firenum()
{
   reg0.Tcycle=TDC_TCYCLE_SHORT;
}

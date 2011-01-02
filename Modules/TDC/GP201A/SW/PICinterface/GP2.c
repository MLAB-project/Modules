
//struct {
unsigned int8 firenum=TDC_FIRENUM_0;
unsigned int8 div_fire=TDC_DIV_FIRE_2;
unsigned int8 calresnum=TDC_CALPERIODS_2;
unsigned int8 clkhsdiv=TDC_CLKHSDIV_1;
unsigned int8 start_clkhs=TDC_CLKHS_ON;
unsigned int1 portnum=TDC_TPORTNUM_4;
unsigned int1 Tcycle=TDC_TCYCLE_SHORT;
unsigned int1 fakenum=TDC_TFAKENUM_2;
unsigned int1 selclkT=TDC_TSELCLK_128HS;
unsigned int1 calibrate=TDC_CALIBRATE_EN;
unsigned int1 disautocal=TDC_AUTOCAL_EN;
unsigned int1 MRange=TDC_MRANGE2;
unsigned int1 neg_stop2=TDC_NEG_STOP2;
unsigned int1 neg_stop1=TDC_NEG_STOP1;
unsigned int1 neg_start=TDC_NEG_START;
//}reg0;

//struct {
unsigned int hit2=TDC_MRANGE1_HIT2_NOAC;
unsigned int hit1=TDC_MRANGE1_HIT1_NOAC;
unsigned int1 fast_init=TDC_FAST_INIT_DIS;
unsigned int hitin2=TDC_HITIN2_0;
unsigned int hitin1=TDC_HITIN1_0;
//}reg1;

//struct {
unsigned int en_int=TDC_INT_ALU;
unsigned int1 rfedge2=TDC_CH2EDGE_RIS;
unsigned int1 rfedge1=TDC_CH1EDGE_RIS;
unsigned int32 delval1=0;
//}reg2;

//struct {
unsigned int1 en_err_val=TDC_ERRVAL_DIS;
unsigned int tim0_mr2=TDC_TIM0MR2_16384CLKHS;
unsigned int32 delval2=0;
//}reg3;

//reg4
unsigned int32 delval3=0;

//reg5
unsigned int conf_fire=0;
unsigned int1 en_startnoise=TDC_STARTNOISE_DIS;
unsigned int1 dis_phasenoise=TDC_PHASENOISE_DIS;
unsigned int repeat_fire=TDC_REPEAT_FIRE_0;
unsigned int16 phase_fire;

//}TDC_registers;


void TDC_init()
{
   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0x70,8);
   output_high(TDC_ENABLE);
}

void TDC_reset()
{
   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0x50,8);
   output_high(TDC_ENABLE);
}

void TDC_start_cycle()
{
   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0x01,8);
   output_high(TDC_ENABLE);
}

void TDC_start_temp()
{
   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0x02,8);
   output_high(TDC_ENABLE);
}

void TDC_start_cal_resonator()
{
   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0x03,8);
   output_high(TDC_ENABLE);
}

void TDC_start_cal()
{
   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0x04,8);
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
//update reg0
   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0x80,8);
   spi_xfer(TDC_stream,firenum,4);   
   spi_xfer(TDC_stream,div_fire,4);   
   spi_xfer(TDC_stream,calresnum,2);   
   spi_xfer(TDC_stream,clkhsdiv,2);   
   spi_xfer(TDC_stream,start_clkhs,2);
   spi_xfer(TDC_stream,portnum,1);   
   spi_xfer(TDC_stream,Tcycle,1);   
   spi_xfer(TDC_stream,fakenum,1);   
   spi_xfer(TDC_stream,selclkT,1);   
   spi_xfer(TDC_stream,calibrate,1);   
   spi_xfer(TDC_stream,disautocal,1);   
   spi_xfer(TDC_stream,MRange,1);   
   spi_xfer(TDC_stream,neg_stop2,1);
   spi_xfer(TDC_stream,neg_stop1,1);   
   spi_xfer(TDC_stream,neg_start,1);   
   output_high(TDC_ENABLE);

// update reg1
   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0x81,8);
   spi_xfer(TDC_stream,hit2,4);   
   spi_xfer(TDC_stream,hit1,4);   
   spi_xfer(TDC_stream,fast_init,1);   
   spi_xfer(TDC_stream,1,1);   
   spi_xfer(TDC_stream,hitin2,3);   
   spi_xfer(TDC_stream,hitin1,3);   
   spi_xfer(TDC_stream,0,8);   
   output_high(TDC_ENABLE);

// update reg2
   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0x82);
   spi_xfer(TDC_stream,en_int,3);   
   spi_xfer(TDC_stream,rfedge2,1);   
   spi_xfer(TDC_stream,rfedge1,1);
   spi_xfer(TDC_stream,delval1,19);   
   output_high(TDC_ENABLE);

// update reg3
   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0x83);
   spi_xfer(TDC_stream,0,2);
   spi_xfer(TDC_stream,en_err_val,1);   
   spi_xfer(TDC_stream,tim0_mr2,2);   
   spi_xfer(TDC_stream,delval2,19);   
   output_high(TDC_ENABLE);

// update reg4
   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0x84);
   spi_xfer(TDC_stream,0b00100,5);   
   spi_xfer(TDC_stream,delval3,19);   
   output_high(TDC_ENABLE);

// update reg5
   output_low(TDC_ENABLE);
   spi_xfer(TDC_stream,0x85);
   spi_xfer(TDC_stream,conf_fire,3);   
   spi_xfer(TDC_stream,en_startnoise,1);   
   spi_xfer(TDC_stream,dis_phasenoise,1);   
   spi_xfer(TDC_stream,repeat_fire,3);   
   spi_xfer(TDC_stream,phase_fire,16);   
   output_high(TDC_ENABLE);
}


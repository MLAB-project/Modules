#include "main.h"
#include "HMC5883L.h"

void main()
{
signed int16 X,Y,Z;
  setup_adc_ports(NO_ANALOGS|VSS_VDD);
  setup_adc(ADC_CLOCK_DIV_2);
  setup_spi(SPI_SS_DISABLED);
  setup_timer_0(RTCC_INTERNAL|RTCC_DIV_1);
  setup_timer_1(T1_DISABLED);
  setup_timer_2(T2_DISABLED,0,1);
  setup_ccp1(CCP_OFF);
  setup_comparator(NC_NC_NC_NC);// This device COMP currently not supported by the PICWizard

  set_mag();

  printf("Magnetometr:  \r\n",);
  printf("(c)mlab JACHO 2013:  \r\n",);
  printf("X, Y, Z \r\n",);

  while(true)
  {  
    X = mag_readX();
    Y = mag_readY();
    Z = mag_readZ();
    printf("%4Ld %4Ld %4Ld \r\n", X, Y, Z);
    Delay_ms(50);  
   
  }
}

#include "main.h"
#include "HMC5883L.h"
#include <math.h>

void main()
{
  setup_adc_ports(NO_ANALOGS|VSS_VDD);
  setup_adc(ADC_CLOCK_DIV_2);
  setup_spi(SPI_SS_DISABLED);
  setup_timer_0(RTCC_INTERNAL|RTCC_DIV_1);
  setup_timer_1(T1_DISABLED);
  setup_timer_2(T2_DISABLED,0,1);
  setup_ccp1(CCP_OFF);
  setup_comparator(NC_NC_NC_NC);

  printf("Magnetometr:  \r\n",);
  printf("(c)mlab.cz kaklik 2013:  \r\n",);
  printf("X, Y, Z \r\n",);


// Init the HMC5883L.  Set Mode register for
// continuous measurements.
hmc5883l_write_reg(HMC5883L_CFG_A_REG, 0x18);      // no average, maximal update range
hmc5883l_write_reg(HMC5883L_CFG_B_REG, 0x00);      // minimal range
hmc5883l_write_reg(HMC5883L_MODE_REG, 0x00);

// Continuously read and display the x,y,z results.
// Wait at least 67 ms between reads, re the HMC5883L data sheet.


while(TRUE)
  {

    hmc5883l_read_data();   
    printf("%6Ld %6Ld %6Ld \n\r", compass.x, compass.y, compass.z);
    delay_ms(100);
  }    

}




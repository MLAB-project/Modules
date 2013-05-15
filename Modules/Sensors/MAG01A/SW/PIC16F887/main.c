#include "main.h"
#include "HMC5883L.h"
#include <math.h>

void main()
{
float last,b,anemo_speed;
unsigned int16 anemo_round=0;
unsigned int16 i;


//signed int16 X,Y,Z;
  setup_adc_ports(NO_ANALOGS|VSS_VDD);
  setup_adc(ADC_CLOCK_DIV_2);
  setup_spi(SPI_SS_DISABLED);
  setup_timer_0(RTCC_INTERNAL|RTCC_DIV_1);
  setup_timer_1(T1_DISABLED);
  setup_timer_2(T2_DISABLED,0,1);
  setup_ccp1(CCP_OFF);
  setup_comparator(NC_NC_NC_NC);// This device COMP currently not supported by the PICWizard

// Init the HMC5883L.  Set Mode register for
// continuous measurements.
hmc5883l_write_reg(HMC5883L_CFG_A_REG, 0x18);      // no average, maximal update range
hmc5883l_write_reg(HMC5883L_CFG_B_REG, 0xE0);      // maximal range
hmc5883l_write_reg(HMC5883L_MODE_REG, 0x00);

// Continuously read and display the x,y,z results.
// Wait at least 67 ms between reads, re the HMC5883L data sheet.


  printf("Magnetometr:  \r\n",);
  printf("(c)mlab JACHO 2013:  \r\n",);
  printf("X, Y, Z \r\n",);

/*  while(true)
  {  
    X = mag_readX();
    Y = mag_readY();
    Z = mag_readZ();
    printf("%4Ld %4Ld %4Ld \r\n", X, Y, Z);
    Delay_ms(50);  
   
  }
*/

while(TRUE)
  {

//   for(i=0;i<=10;i++)
//   {
     hmc5883l_read_data();   
   
//     b = atan2((float)compass.y,(float)compass.x); // vypocet azimutu z kartezskych souradnic
//     b = (b/3.141596)*180;  // prevod na stupne
//     b += 180;

//     anemo_speed += (b-last);
//     last=b;
//     delay_ms(10);
//   }
//   anemo_speed=anemo_speed/10;

   printf("%6Ld %6Ld %6Ld \n\r", compass.x, compass.y, compass.z);
//   delay_ms(100);
  }    

}




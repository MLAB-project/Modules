#ifndef MPL115A1_H
#define MPL115A1_H

#include "mbed.h"

/**  barometric pressure and temperature sensor MPL115A1 control class, based on SPI
 *
 * Example:
 * @code
 * #include "mbed.h"
 * #include "MPL115A1.h"
 * 
 * SPI spi(p11,p12,p13);
 * MPL115A1 bar(spi, p14);
 * 
 * Serial pc(USBTX, USBRX);
 * 
 * int main() {
 *     while(1) {
 *         wait(10);
 *         pc.printf("Pressure is %f\n", bar.readPressure());
 *         pc.printf("Temperature is %f\n", bar.readTemperature());
 *     }
 * }
 * @endcode
 */

                         // real addresses, in read_register: address |= 0x80
#define MPL115A1_PRESH    0x00    // 80
#define MPL115A1_PRESL    0x02    // 82
#define MPL115A1_TEMPH    0x04    // 84
#define MPL115A1_TEMPL    0x06    // 86

#define MPL115A1_A0MSB    0x08    // 88
#define MPL115A1_A0LSB    0x0A    // 8A
#define MPL115A1_B1MSB    0x0C    // 8C
#define MPL115A1_B1LSB    0x0E    // 8E
#define MPL115A1_B2MSB    0x10    // 90
#define MPL115A1_B2LSB    0x12    // 92
#define MPL115A1_C12MSB   0x14    // 94
#define MPL115A1_C12LSB   0x16    // 96
#define MPL115A1_C11MSB   0x18    // 98
#define MPL115A1_C11LSB   0x1A    // 9A
#define MPL115A1_C22MSB   0x1C    // 9C
#define MPL115A1_C22LSB   0x1E    // 9E

#define MPL115A1_STARTPRES 0x20 // start pressure measurement
#define MPL115A1_STARTTEMP 0x22 // start temperature measurement
#define MPL115A1_STARTBOTH 0x24 // start both simultaneously

class MPL115A1 {
private:
    SPI& _spi;
    DigitalOut _cs; // chip select, active low
    //DigitalOut sdn; // shutdown pin, high=on, low=off
    
public:
    /** Create a barometer object connected to the SPI bus and specified chip select pin
    *
    * @param spi SPI master object
    * @param ncs chip select pin
    */
    MPL115A1(SPI& spi, PinName ncs);
    /** start measurement, read registers, calculate and return pressure */
    float readPressure();
    /** start measurement, read registers, calculate and return temperature */
    float readTemperature();

private:
    void write_register(uint8_t address, char data);
    char read_register(uint8_t address);

    signed char sia0MSB, sia0LSB;
    signed char sib1MSB, sib1LSB;
    signed char sib2MSB, sib2LSB;
    signed char sic12MSB, sic12LSB;
    signed char sic11MSB, sic11LSB;
    signed char sic22MSB, sic22LSB;
    signed int sia0, sib1, sib2, sic12, sic11, sic22, siPcomp;
    float decPcomp;
    signed long lt1, lt2, lt3, si_c11x1, si_a11, si_c12x2;
    signed long si_a1, si_c22x2, si_a2, si_a1x1, si_y1, si_a2x2;
    unsigned int uiPadc, uiTadc;
    unsigned char uiPH, uiPL, uiTH, uiTL;
};

#endif

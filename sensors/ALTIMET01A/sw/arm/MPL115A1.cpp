/* mbed MPL115A1 (Barometric Pressure Sensor) Library
 *
 * This code is based on application notes and
 * Sparkfun example code, written by Jim Lindblom <jim at sparkfun.com>
 *
 * Copyright (c) 2012 Mitja Kleider
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// TODO: support shutdown pin


#include "MPL115A1.h"

MPL115A1::MPL115A1(SPI& spi, PinName ncs) : _spi(spi), _cs(ncs)
{
    _cs = 1;
    // sdn = 1; // sensor on
    
    // SCL idle low, sample data on rising edge
    _spi.format(8, 0); // 8bit, POL 0, PHA 0
    _spi.frequency(1000000); // 1MHz
}

void MPL115A1::write_register(uint8_t address, char data)
{
    //write any data byte to any single address
    //adds a 0 to the MSB of the address byte (WRITE mode)

    address &= 0x7F;

    _cs = 0;
    wait_ms(1);
    _spi.write(address);
    wait_ms(1);
    _spi.write(data);
    wait_ms(1);
    _cs = 1;
}

char MPL115A1::read_register(uint8_t address)
{
    // returns the contents of any 1 byte register from any address
    // sets the MSB for every address byte (READ mode)

    char byte;

    address |= 0x80;

    _cs = 0;
    _spi.write(address);
    byte = _spi.write(0x00);
    _cs = 1;

    return byte;
}

float MPL115A1::readPressure()
{
    // read pressure, temperature and coefficients, calculate and return absolute pressure [kPa]

    write_register(MPL115A1_STARTBOTH, 0x00); // start temperature and pressure conversions
    wait_ms(10); // AN: data is typically ready after 3ms, DS for both: max. 1ms
    
    // read raw pressure
    uiPH = read_register(MPL115A1_PRESH);
    uiPL = read_register(MPL115A1_PRESL);
    uiTH = read_register(MPL115A1_TEMPH);
    uiTL = read_register(MPL115A1_TEMPL);
    
    uiPadc = (unsigned int) uiPH << 8;
    uiPadc += (unsigned int) uiPL & 0x00FF;
    uiTadc = (unsigned int) uiTH << 8;
    uiTadc += (unsigned int) uiTL & 0x00FF;
    
    // read coefficients, put into 16-bit Variables
    // a0, pressure offset coefficient
    sia0MSB = read_register(MPL115A1_A0MSB);
    sia0LSB = read_register(MPL115A1_A0LSB);
    sia0 = (signed int) sia0MSB << 8;
    sia0 += (signed int) sia0LSB & 0x00FF;
    
    // b1, pressure sensitivity coefficient
    sib1MSB = read_register(MPL115A1_B1MSB);
    sib1LSB = read_register(MPL115A1_B1LSB);
    sib1 = (signed int) sib1MSB << 8;
    sib1 += (signed int) sib1LSB & 0x00FF;
    
    // b2, 1st order temperature offset coefficient (TCO)
    sib2MSB = read_register(MPL115A1_B2MSB);
    sib2LSB = read_register(MPL115A1_B2LSB);
    sib2 = (signed int) sib2MSB << 8;
    sib2 += (signed int) sib2LSB & 0x00FF;
    
    // c12, temperature sensitivity coefficient (TCS)
    sic12MSB = read_register(MPL115A1_C12MSB);
    sic12LSB = read_register(MPL115A1_C12LSB);
    sic12 = (signed int) sic12MSB << 8;
    sic12 += (signed int) sic12LSB & 0x00FF;
    
    // c11, pressure linearity (2nd order) coefficient
    sic11MSB = read_register(MPL115A1_C11MSB);
    sic11LSB = read_register(MPL115A1_C11LSB);
    sic11 = (signed int) sic11MSB << 8;
    sic11 += (signed int) sic11LSB & 0x00FF;
    
    // c22, 2nd order temperature offset coefficient
    sic22MSB = read_register(MPL115A1_C22MSB);
    sic22LSB = read_register(MPL115A1_C22LSB);
    sic22 = (signed int) sic22MSB << 8;
    sic22 += (signed int) sic22LSB & 0x00FF;
    
    // Coefficient 9 equation compensation
    
    // 10bit stored in 16bit, shift right
    uiPadc = uiPadc >> 6;
    uiTadc = uiTadc >> 6;
    
    // Step 1: c11x1 = c11 * Padc
    lt1 = (signed long) sic11;
    lt2 = (signed long) uiPadc;
    lt3 = lt1*lt2;
    si_c11x1 = (signed long) lt3;
    
    // Step 2: a11 = b1 + c11x1
    lt1 = ((signed long)sib1)<<14;
    lt2 = (signed long) si_c11x1;
    lt3 = lt1 + lt2;
    si_a11 = (signed long)(lt3>>14);
    
    // Step 3: c12x2 = c12 * Tadc
    lt1 = (signed long) sic12;
    lt2 = (signed long) uiTadc;
    lt3 = lt1*lt2;
    si_c12x2 = (signed long)lt3;
    
    // Step 4: a1 = a11 + c12x2
    lt1 = ((signed long)si_a11<<11);
    lt2 = (signed long)si_c12x2;
    lt3 = lt1 + lt2;
    si_a1 = (signed long) lt3>>11;
    
    // Step 5: c22x2 = c22*Tadc
    lt1 = (signed long)sic22;
    lt2 = (signed long)uiTadc;
    lt3 = lt1 * lt2;
    si_c22x2 = (signed long)(lt3);
    
    // Step 6: a2 = b2 + c22x2
    lt1 = ((signed long)sib2<<15);
    lt2 = ((signed long)si_c22x2>1);
    lt3 = lt1+lt2;
    si_a2 = ((signed long)lt3>>16);
    
    // Step 7: a1x1 = a1 * Padc
    lt1 = (signed long)si_a1;
    lt2 = (signed long)uiPadc;
    lt3 = lt1*lt2;
    si_a1x1 = (signed long)(lt3);
    
    // Step 8: y1 = a0 + a1x1
    lt1 = ((signed long)sia0<<10);
    lt2 = (signed long)si_a1x1;
    lt3 = lt1+lt2;
    si_y1 = ((signed long)lt3>>10);
    
    // Step 9: a2x2 = a2 * Tadc
    lt1 = (signed long)si_a2;
    lt2 = (signed long)uiTadc;
    lt3 = lt1*lt2;
    si_a2x2 = (signed long)(lt3);
    
    // Step 10: pComp = y1 + a2x2
    lt1 = ((signed long)si_y1<<10);
    lt2 = (signed long)si_a2x2;
    lt3 = lt1+lt2;
    
    // Fixed point result with rounding
    //siPcomp = ((signed int)lt3>>13);
    siPcomp = lt3/8192;
    
    // decPcomp is defined as a floating point number
    // Conversion to decimal value from 1023 ADC count value
    // ADC counts are 0 to 1023, pressure is 50 to 115kPa respectively
    decPcomp = ((65.0/1023.0)*siPcomp)+50;
    
    return decPcomp;
}

float MPL115A1::readTemperature()
{
    // read, calculate and return temperature

    write_register(MPL115A1_STARTTEMP, 0x00); // start temperature conversion
    wait_ms(10); // AN: data is typically ready after 3ms, DS for temp: max. 0.7ms
    
    // read raw temperature
    uiTH = read_register(MPL115A1_TEMPH);
    uiTL = read_register(MPL115A1_TEMPL);
    
    uiTadc = (unsigned int) uiTH << 8;
    uiTadc += (unsigned int) uiTL & 0x00FF;
    
    // 10bit stored in 16bit, shift right
    uiTadc = uiTadc >> 6;
    
    // Tadc is 472 counts at 25degC, -5.35 counts/degC
    // return ((float)uiTadc - 472.0)/(-5.35) + 25
    return (605.75-uiTadc)*0.186916;
}

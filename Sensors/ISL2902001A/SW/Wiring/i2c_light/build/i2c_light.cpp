// I2C Light Sensor

#include <Wire.h>

#define address 0x44 // A0 = L

#include "WProgram.h"
void setup();
void loop();
void setup()
{
  Wire.begin(); // join i2c bus (address optional for master)
  pinMode(3, OUTPUT);  // LED pro blikani, aby bylo videt, ze to neco dela
  pinMode(5, OUTPUT);  // LED pro blikani, aby bylo videt, ze to neco dela
  Serial.begin(9600);  // Zmerena intenzita osvetleni se bude vypisovat na seriovou linku
}

int data = 0;

void loop()
{
  int lux=0;

  Serial.print("lux=");

  // Setup device
  digitalWrite(5, HIGH);

  Wire.beginTransmission(address); 
  Wire.send(0x00);            // sends address
  Wire.send(0b11000000);      // setup (eye light sensing; one time measurement; measurement range 1)
  Wire.endTransmission();     // stop transmitting

  // Delay for measurement
  {
    long n;
    for(n=0;n<66000;n++)
    {    
      digitalWrite(5, LOW);    // set the LED off
      //      delay(500);
      digitalWrite(5, HIGH);   // set the LED on
      delayMicroseconds(100); 
      //      delay(500);
    }
  }


  //  Connect to device and set register address
  Wire.beginTransmission(address); 
  Wire.send(0x00);            // sends address
  Wire.endTransmission();     // stop transmitting
  //  Connect to device and request one byte
  Wire.beginTransmission(address);
  Wire.requestFrom(address, 1);
  data = Wire.receive();
  Wire.endTransmission();     // stop transmitting
  //  Serial.print(data, HEX);

  //  Serial.print(" LSB=");
  //  Connect to device and set register address
  Wire.beginTransmission(address); 
  Wire.send(0x01);            // sends address
  Wire.endTransmission();     // stop transmitting
  //  Connect to device and request one byte
  Wire.beginTransmission(address);
  Wire.requestFrom(address, 1);
  data = Wire.receive();
  Wire.endTransmission();     // stop transmitting
  //  Serial.print(data, HEX);
  lux=data;

  //  Serial.print(" MSB=");  
  //  Connect to device and set register address
  Wire.beginTransmission(address);
  Wire.send(0x02);            // sends address
  Wire.endTransmission();     // stop transmitting
  //  Connect to device and request one byte
  Wire.beginTransmission(address);
  Wire.requestFrom(address, 1);
  data = Wire.receive();
  Wire.endTransmission();     // stop transmitting
  //  Serial.print(data, HEX);
  lux+=data*256;

  /*
  Serial.print((unsigned)lux, DEC);
   
   Serial.print(" luxIR=");
   
   // Setup device
   Wire.beginTransmission(address); 
   Wire.send(0x00);            // sends address
   Wire.send(0b11100000);      // setup (eye light sensing; measurement range 2 [4000 lx])
   Wire.endTransmission();     // stop transmitting
   
   // Delay for measurement
   digitalWrite(3, HIGH);   // set the LED on
   delay(500);
   digitalWrite(3, LOW);    // set the LED off
   delay(500);
   
   
   //  Connect to device and set register address
   Wire.beginTransmission(address); 
   Wire.send(0x00);            // sends address
   Wire.endTransmission();     // stop transmitting
   //  Connect to device and request one byte
   Wire.beginTransmission(address);
   Wire.requestFrom(address, 1);
   data = Wire.receive();
   Wire.endTransmission();     // stop transmitting
   //  Serial.print(data, HEX);
   
   //  Serial.print(" LSB=");
   //  Connect to device and set register address
   Wire.beginTransmission(address); 
   Wire.send(0x01);            // sends address
   Wire.endTransmission();     // stop transmitting
   //  Connect to device and request one byte
   Wire.beginTransmission(address);
   Wire.requestFrom(address, 1);
   data = Wire.receive();
   Wire.endTransmission();     // stop transmitting
   //  Serial.print(data, HEX);
   lux=data;
   
   //  Serial.print(" MSB=");  
   //  Connect to device and set register address
   Wire.beginTransmission(address);
   Wire.send(0x02);            // sends address
   Wire.endTransmission();     // stop transmitting
   //  Connect to device and request one byte
   Wire.beginTransmission(address);
   Wire.requestFrom(address, 1);
   data = Wire.receive();
   Wire.endTransmission();     // stop transmitting
   //  Serial.print(data, HEX);
   lux+=data*256;
   */
  Serial.println((unsigned)lux, DEC);
}



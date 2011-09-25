// I2C Light Sensor

#include <Wire.h>

#define address 0x44 // A0 = L
#define SENSE_VIS 0
#define SENSE_IR  1


void setup()
{
  Wire.begin(); // join i2c bus (address optional for master)
  // I2C pins PD4, PD5
  //
  pinMode(3, OUTPUT);  // LED pro blikani, aby bylo videt, ze to neco dela
  pinMode(5, OUTPUT);  // LED pro blikani, aby bylo videt, ze to neco dela
  Serial.begin(9600);  // Zmerena intenzita osvetleni se bude vypisovat na seriovou linku
}

int data = 0;

void led_blink()
{
   digitalWrite(3, HIGH);   // set the LED on
   delay(500);
   digitalWrite(3, LOW);    // set the LED off
   delay(500);
}


int set_light_sensor(int mode)
{
int command;
  
  switch (mode)
  {
    case SENSE_VIS:
    {
       command=0b11000000;      // setup (eye light sensing; one time measurement; measurement range 1)
       break;
    }

    case SENSE_IR:
    {
       command=0b11100000;      // setup (eye light sensing; measurement range 2 [4000 lx])
       break;
    }
   
    default:
     return 3;   
  }

  // Setup device
  Wire.beginTransmission(address); 
  Wire.send(0x00);            // sends address
  Wire.send(command);      // setup (eye light sensing; one time measurement; measurement range 1)
  Wire.endTransmission();     // stop transmitting
}

int get_light_measurement()
{
int lux=0;

   //  Connect to device and set register address
   Wire.beginTransmission(address); 
   Wire.send(0x01);            // sends address of LSB reagister 
   Wire.endTransmission();     // stop transmitting
   
   //  Connect to device and request one byte
   Wire.beginTransmission(address);
   Wire.requestFrom(address, 1);
   data = Wire.receive();
   Wire.endTransmission();     // stop transmitting
   lux=data;
   
   //  Connect to device and set register address
   Wire.beginTransmission(address);
   Wire.send(0x02);            // sends address of MSB register
   Wire.endTransmission();     // stop transmitting
   
   //  Connect to device and request one byte
   Wire.beginTransmission(address);
   Wire.requestFrom(address, 1);
   data = Wire.receive();
   Wire.endTransmission();     // stop transmitting

   lux+=data*256;  
   return lux; 
}

void loop()
{
  int lux=0;

  set_light_sensor(SENSE_VIS);
  
  // Delay for measurement
  led_blink(); 

  //  Connect to device and set register address
  Wire.beginTransmission(address); 
  Wire.send(0x00);            // sends address (command register)
  Wire.endTransmission();     // stop transmitting
  
  //  Connect to device and request command register settings
  Wire.beginTransmission(address);
  Wire.requestFrom(address, 1);
  data = Wire.receive();
  Wire.endTransmission();     // stop transmitting
  Serial.print(data, BIN);

  Serial.print("lux=");
   Serial.println((unsigned)get_light_measurement(), DEC);


   set_light_sensor(SENSE_IR);
   
   // Delay for measurement 
   led_blink(); 
   
   // data print
   Serial.print("luxIR=");
   Serial.println((unsigned)get_light_measurement(), DEC);
}


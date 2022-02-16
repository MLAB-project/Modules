/* PCRD Japan */

/*
 * SD card attached to SPI bus as follows:
 ** SDcard01B/CMD      MOSI - pin PB3
 ** SDcard01B/DATA0    MISO - pin PB4
 ** SDcard01B/CLK      CLK  - pin PB5
 ** SDcard01B/CD/DATA3 CS   - pin PD4
 
 ** ADCmonoSPI/CONV - pin PD6
 ** ADCmonoSPI/SDO  - pin PD5
 ** ADCmonoSPI/SCK -  pin PD7  shared with LED4
*/

#include <SD.h>

const String filename = "log.csv ";  // filename for logfile

const int ADreset=3; // PD3
const int eint=2;     // PD2
const int LED1=8;     // PB0
const int LED2=9;     // PB1
const int LED3=10;    // PB2
const int LED4=7;     // PD7
const int chipSelect = 4;     // CS is PD4
const int CONV = 6;     // CONV is PD6
const int SDO = 5;     // SDO is PD5
const int ADSCK = 7;     // SCK is PD7

const int CHANNELS=512;  // Number of channels

//unsigned int channelT[CHANNELS];    // recordig buffer
unsigned char channelA[CHANNELS];    // recordig buffer
boolean rise=false;           // flag fo recording time
char inChar;                  // input character from GPS
String dataString = "";       // concantenated string with NMEA messages and measured values
int coll = 0;                 // collons counter in NMEA messages
unsigned int num = 0;         // measurements counter
unsigned int count;           // measurements per 10 s

// 1x 100 us per 10 s UTC synchronised without FIX; 40 configuration bytes
const char cmd[40]={0xB5, 0x62, 0x06, 0x31, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x80, 0x96, 0x98, 0x00, 0xE0, 0xC8, 0x10, 0x00, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x73, 0x00, 0x00, 0x00, 0xC6, 0x51};

// airborne <1g; 40 configuration bytes
const char cmd2[44]={0xB5, 0x62 ,0x06 ,0x24 ,0x24 ,0x00 ,0xFF ,0xFF ,0x06 ,0x03 ,0x00 ,0x00 ,0x00 ,0x00 ,0x10 ,0x27 ,0x00 ,0x00 ,0x05 ,0x00 ,0xFA ,0x00 ,0xFA ,0x00 ,0x64 ,0x00 ,0x2C ,0x01 ,0x00 ,0x3C ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x52 ,0xE8};

// configure GPS
void setupGPS()
{ 
   for (int n=0;n<40;n++) Serial.write(cmd[n]); 
   for (int n=0;n<44;n++) Serial.write(cmd2[n]); 
}

void errorLED()
{
  while(true) 
  {
    digitalWrite(LED4, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(100);               // wait for a second
    digitalWrite(LED4, LOW);    // turn the LED off by making the voltage LOW
    delay(100);               // wait for a second   
  }
}

// function for reading $GPRMC NMEA message
void ReadGPRMC()
{
  // $GPRMC,091451.00,A,4915.64143,N,01441.50397,E,0.053,,090215,,,A*74
  coll = 0;
  while(1)    // wait for $GPRMC
  {
    // get incoming byte:
    while (!Serial.available());
    if (Serial.read() != '$') continue;
    while (!Serial.available());
    if (Serial.read() != 'G') continue;
    while (!Serial.available());
    if (Serial.read() != 'P') continue;
    while (!Serial.available());
    if (Serial.read() != 'R') continue;
    while (!Serial.available());
    if (Serial.read() != 'M') continue;
    while (!Serial.available());
    if (Serial.read() != 'C') continue;
    while (!Serial.available());
    if (Serial.read() != ',') continue;
    break;
  }  
  do
  {
    while (!Serial.available());
    inChar = (char)Serial.read();
    if (inChar == ',') coll++;
    dataString += inChar;
  }
  while (coll < 9);  // read only 9 coma separated values
}

// function for reading $GPGGA NMEA message
void ReadGPGGA()
{
  // $GPGGA,091451.00,4915.64143,N,01441.50397,E,1,09,0.90,443.2,M,44.0,M,,*50
  coll = 0;
  while(1)  // wait for $GPGGA
  {
    while (!Serial.available());
    if (Serial.read() != '$') continue;
    while (!Serial.available());
    if (Serial.read() != 'G') continue;
    while (!Serial.available());
    if (Serial.read() != 'P') continue;
    while (!Serial.available());
    if (Serial.read() != 'G') continue;
    while (!Serial.available());
    if (Serial.read() != 'G') continue;
    while (!Serial.available());
    if (Serial.read() != 'A') continue;
    while (!Serial.available());
    if (Serial.read() != ',') continue;
    break;
  }  
  do
  {
    while (!Serial.available());
    inChar = (char)Serial.read();
    if (inChar == ',') coll++;
    if (coll > 4) dataString += inChar;  // skip first 5 coma separated values
  }
  while (coll < 12); // read only 7 coma separated values
}

void isr()        // interrupt service routine driven from 1PPS from GPS
{
  {
    rise=true;
  }

}

void record()
{
  for (int c=67; c<CHANNELS; c++)
  {
    if (channelA[c]>0)
    {
      digitalWrite(LED4, HIGH);   // LED 16-64
      break;      
    }
  }

  for (int c=33; c<64; c++)
  {
    if (channelA[c]>0)
    {
      digitalWrite(LED3, HIGH);   // LED 9-16
      break;      
    }
  }

  for (int c=17; c<32; c++)
  {
    if (channelA[c]>0)
    {
      digitalWrite(LED2, HIGH);   // LED 5-8
      break;      
    }
  }

  for (int c=0; c<16; c++)
  {
    if (channelA[c]>0)
    {
      digitalWrite(LED1, HIGH);   // LED 0-4
      break;      
    }
  }
     
  dataString = "";        // make a string for assembling the data to log
  //*
  ReadGPRMC();            // read NMEA sentences from GPS
  ReadGPGGA();
  //*/
  // make a string for assembling the data to log:
  dataString += String(num++);
  //dataString += ","; 
  Serial.print(dataString);
  
  // open the file. note that only one file can be open at a time,
  // so you have to close this one before opening another.
  digitalWrite(chipSelect, HIGH);   
  char fileNameCharArray[filename.length()];
  filename.toCharArray(fileNameCharArray, filename.length());
  
  File dataFile;

  dataFile = SD.open(fileNameCharArray, FILE_WRITE);
  if (dataFile) 
  {
    dataFile.print(dataString);
    dataFile.close();
  }  
  else 
  {
    errorLED();
  } 

  for (int i=0; i<(CHANNELS/32); i++)
  {
    dataString = "";
    for (int n=0; n<32; n++)
    {
      dataString += ","; 
      dataString += String(channelA[(i*32)+n]);
    };
    
    dataFile = SD.open(fileNameCharArray, FILE_WRITE);
    if (dataFile) 
    {
      dataFile.print(dataString);
      dataFile.close();
    }  
    else 
    {
      errorLED();
    } 
  }

  dataString = ","; 
  dataString += String(count);
  dataFile = SD.open(fileNameCharArray, FILE_WRITE);
  if (dataFile) 
  {
    dataFile.println(dataString);
    dataFile.close();
  }  
  else 
  {
    errorLED();
  } 

  
  digitalWrite(chipSelect, LOW);   

  //*!!! control print
  //TODO print to I2C display
  Serial.print(":");       
  Serial.print(count);       
  Serial.print("*");       
  for(int j=0;j<36;j++) {Serial.print(channelA[j]); Serial.print(' ');}
  Serial.println();
  //*/

  for (int n=0; n<CHANNELS; n++) // clear recording buffer
  {
    channelA[n]=0;
  }  

  digitalWrite(LED1, LOW);   // LED OFF
  digitalWrite(LED2, LOW);   // LED OFF
  digitalWrite(LED3, LOW);   // LED OFF
  digitalWrite(LED4, LOW);   // LED OFF

}

void setup() 
{
 // Open serial communications and wait for port to open:
  Serial.begin(9600);
  while (!Serial) {;}
  //Serial.println("#cvak");

  pinMode(ADreset, OUTPUT);
  pinMode(eint, INPUT);
  pinMode(SDO, INPUT);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(CONV, OUTPUT);
  //pinMode(SCK, OUTPUT);

  setupGPS();

  //Serial.print("#Initializing SD card...");  // inserting a SD Card always reset the processor and call setup
  // make sure that the default chip select pin is set to
  // output, even if you don't use it:

  // see if the card is present and can be initialized:
  if (!SD.begin(chipSelect)) 
  {
    //Serial.println("Card failed, or not present");
    // don't do anything more:
    errorLED();
    return;
  }
  //Serial.println("card initialized.");

  noInterrupts();          // disable all interrupts
  attachInterrupt(0, isr, RISING);  // initialise interrupt from rising edge of 1PPS

  for (int n=0; n<CHANNELS; n++) // clear recoding buffer
  {
    channelA[n]=0; 
  }

  interrupts();             // enable all interrupts
  
  //Serial.println("#Hmmm");
}

void loop() 
{
  unsigned int val;
  unsigned int treshold = 1;
  
  count = 0;
  while (true)
  {
    count++;
    digitalWrite(ADSCK, HIGH);  
    digitalWrite(CONV, HIGH);  // start AD conversion
    digitalWrite(ADreset, HIGH);  // reset Peack Detector
    digitalWrite(CONV, LOW);   // start SPI
    digitalWrite(ADreset, LOW);  // start Peack Detector
    val=0;
    for (int p=0;p<9;p++)
    {
      digitalWrite(ADSCK, LOW);  // 1 CLK
      digitalWrite(ADSCK, HIGH);  
      val= (val<<1)|digitalRead(SDO);
    }
    digitalWrite(ADSCK, LOW);  // 1 CLK
    
    if (channelA[val] < 255) channelA[val]++;

    if (rise)  // recording time is now
    {
        record();  // make record
        digitalWrite(ADreset, HIGH);  // reset Peack Detector
        rise = false;
        count = 0;
        digitalWrite(ADreset, LOW);  // start Peack Detector
        continue;  // skip this interrupted impuls
    }
  }
}

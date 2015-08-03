/* PCRD */

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

const int detector=3; // PD3
const int eint=2;     // PD2
const int LED1=8;     // PB0
const int LED2=9;     // PB1
const int LED3=10;    // PB2
const int LED4=7;     // PD7
const int chipSelect = 4;     // CS is PD4
const int CONV = 6;     // CONV is PD6
const int SDO = 5;     // SDO is PD5
const int ADSCK = 7;     // SCK is PD7

const int CHANNELS=32;  // Number of channels

unsigned int channelT[CHANNELS];    // recordig buffer
unsigned int channelA[CHANNELS];    // recordig buffer
int interval=0;               // seconds counter
boolean rise=false;           // flag fo recording time
char inChar;                  // input character from GPS
String dataString = "";       // concantenated string with NMEA messages and measured values
int coll = 0;                 // collons counter in NMEA messages
unsigned int i = 0;           // measurements counter

// 1x 100 us per 10 s UTC synchronised; 40 configuration bytes
const char cmd[40]={0xB5, 0x62, 0x06, 0x31, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x80, 0x96, 0x98, 0x00, 0xE0, 0xC8, 0x10, 0x00, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x73, 0x00, 0x00, 0x00, 0xC6, 0x51};

// GPS setup for frequency measurement (acounter)
//const char cmd[40]={0xB5, 0x62, 0x06, 0x31, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x80, 0x84, 0x1E, 0x00, 0xE0, 0xC8, 0x10, 0x00, 0x40, 0x42, 0x0F, 0x00, 0xA0, 0x86, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF7, 0x00, 0x00, 0x00, 0x12, 0x03};

// configure GPS
void setupGPS()
{ 
   for (int n=0;n<40;n++) Serial.write(cmd[n]); 
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
  //if (++interval == 10) // 10 seconds
  {
    rise=true;
    //interval = 0;
  }

}

void record()
{
  for (int c=16; c<CHANNELS; c++)
  {
    if (channelT[c]>0)
    {
      digitalWrite(LED4, HIGH);   // LED 16-64
      break;      
    }
  }

  for (int c=9; c<17; c++)
  {
    if (channelT[c]>0)
    {
      digitalWrite(LED3, HIGH);   // LED 9-16
      break;      
    }
  }

  for (int c=5; c<9; c++)
  {
    if (channelT[c]>0)
    {
      digitalWrite(LED2, HIGH);   // LED 5-8
      break;      
    }
  }

  for (int c=0; c<5; c++)
  {
    if (channelT[c]>0)
    {
      digitalWrite(LED1, HIGH);   // LED 0-4
      break;      
    }
  }
     
  dataString = "";        // make a string for assembling the data to log
  ReadGPRMC();            // read NMEA sentences from GPS
  ReadGPGGA();
  // make a string for assembling the data to log:
  dataString += String(i++);
  //dataString += ","; 
  //Serial.print(dataString);

  for (int n=0; n<CHANNELS; n++)
  {
    dataString += ","; 
    dataString += String(channelT[n]);
    dataString += ","; 
    dataString += String(channelA[n]);
    //Serial.print(channel[n]);
    //Serial.print(',');
  }
  //Serial.println();
  
  // open the file. note that only one file can be open at a time,
  // so you have to close this one before opening another.
  digitalWrite(chipSelect, HIGH);   
  char fileNameCharArray[filename.length()];
  filename.toCharArray(fileNameCharArray, filename.length());
  File dataFile = SD.open(fileNameCharArray, FILE_WRITE);

  // if the file is available, write to it:
  if (dataFile) 
  {
    dataFile.println(dataString);
    dataFile.close();
    // print to the serial port too:
    //!!!Serial.println(dataString);
  }  
  // if the file isn't open, pop up an error:
  else {
    //Serial.println("error opening datalog.CSV");
    errorLED();
  } 
  digitalWrite(chipSelect, LOW);   


  for (int n=0; n<CHANNELS; n++) // clear recording buffer
  {
    channelT[n]=0;
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

  pinMode(detector, INPUT);
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
    channelT[n]=0; 
    channelA[n]=0; 
  }

  interrupts();             // enable all interrupts
  
  //Serial.println("#Hmmm");
}

void loop() 
{
  //byte msb=0,lsb=0;
  unsigned int val;

  while (true)
  {
    unsigned int duration=0;               // pulse duration counter
  
    while (!digitalRead(detector))  // waiting for pulse
    {
      if (rise) break;
      digitalWrite(CONV, HIGH);  // start AD conversion
    }
    while (digitalRead(detector)) 
    {
      if (rise) break;
      if (duration < (CHANNELS-1)) duration++;
    }

    digitalWrite(ADSCK, HIGH);  
    digitalWrite(CONV, LOW);   // start SPI
    val=0;
    for (int p=0;p<8;p++)
    {
      digitalWrite(ADSCK, LOW);  // 1 CLK
      digitalWrite(ADSCK, HIGH);  
      val= (val<<1)|digitalRead(SDO);
    }
    digitalWrite(ADSCK, LOW);  // 1 CLK

    if (rise)  // recording time is now
    {
        record();  // make record
        rise = false;
        continue;  // skip this interrupted impuls
    }

    if (channelT[duration] < 65535) channelT[duration]++;  /// record duration in apropriate channel
    if (channelA[duration] < (65535-val)) channelA[duration]+=val;  /// record amplitude
  }
}

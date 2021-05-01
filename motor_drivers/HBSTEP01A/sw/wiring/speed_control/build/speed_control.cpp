#include <SPI.h>

#include "WProgram.h"
void command(char* buffer, unsigned int len);
void goTo(unsigned int pos);
void setParam(unsigned int reg, unsigned int val, unsigned int len);
void setup();
int readInt();
void loop();
void command(char* buffer, unsigned int len)
{
  for (int i = 0; i < len; i++) {
    delay(10);
    digitalWrite(SS, 0);
    SPI.transfer(buffer[i]);
    digitalWrite(SS, 1);
  }
}

void goTo(unsigned int pos)
{
  char buffer[4];
  buffer[0] = 0x60;
  buffer[1] = pos >> 16;
  buffer[2] = (pos >> 8) & 0xff;
  buffer[3] = pos & 0xff;
  command(buffer, 4);
}

void setParam(unsigned int reg, unsigned int val, unsigned int len)
{
  char buffer[4];
  buffer[0] = reg;
  
  /* BUG: reg? */
  for (int i = 0; i < len; i++)
    buffer[i + 1] = (reg >> (8 * ((len - 1) - i))) & 0xff;
  
  command(buffer, 1 + len);
}

void setup()
{
  Serial.begin(9600);
  SPI.begin(SPI_MASTER, MSBFIRST, SPI_MODE3, SPI_CLOCK_DIV32);
  
  setParam(5, 0xd0, 2); // ACC
  setParam(6, 0xd0, 2); // DEC
  setParam(7, 0, 2); // MAX_SPEED
  Serial.println("Testovaci program pro HBSTEP01A");
}

int readInt()
{
  char line[100];
  int i = 0;
  
  while (true) {
    if (Serial.available()) {
      byte c = Serial.read();
      
      if (c == '\n' || c == '\r') {
        Serial.println();
        line[i] = '\0';
        return atoi(line);
      }
      
      Serial.write(c);
      line[i++] = c;
    }
  }
}

void loop()
{
  int speed = readInt();

  int dir = speed > 0;
  if (!dir)
    speed = -speed;
  
  char buffer[4];
  buffer[0] = 0x50 | dir;
  buffer[1] = (speed >> 16) & 0xff;
  buffer[2] = (speed >> 8) & 0xff;
  buffer[3] = speed & 0xff;
  
  command(buffer, 4);
}


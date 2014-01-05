import serial

ser = serial.Serial('/dev/ttyUSB0', 9600, timeout=1)
print ser.name
ser.write("hello")
http://pyserial.sourceforge.net/shortintro.html
line = ser.readline()   # read a '\n' terminated line
ser.close()


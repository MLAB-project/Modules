set terminal png size 1024,800
set samples 1000
set xlabel "Time [h]"
set ylabel "T [deg C]"
set key under
#set grid on
#set yrange [-1:1]
#set logscale y


set output "Heating_alter.png" 
plot "test_hum.log" using 0:1 with lines title "Temperature", "" using 0:2 with lines title "Humidity", "" using 0:4 with lines title "Heating"

set output "Heating_alter2.png" 
plot "test_hum2.log" using 0:1 with lines title "Temperature", "" using 0:2 with lines title "Humidity", "" using 0:4 with lines title "Heating"


set output "outdoor_test.png" 
plot "TempHum.log" using 1:3 with lines title "Temperature", "" using 1:4 with lines title "Humidity"


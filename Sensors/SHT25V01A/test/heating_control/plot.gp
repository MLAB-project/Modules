set terminal png
set xlabel "Time [h]"
set ylabel "Illuminance [lx]"
set key under
#set yrange [-1:1]
set logscale y



set output "LUX85_rozednivani.png" 
plot "LUX85_rozednivani.TXT" using ($1/3600):2 with lines title "Visible", "" using ($1/3600):3 with lines title "Infrared"

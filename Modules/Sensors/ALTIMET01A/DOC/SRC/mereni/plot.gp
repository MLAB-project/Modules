#set term svg  size 800,640 #enhanced mouse
set terminal png  size 800,640
#set samples 1000
set xlabel "Time [s]"
set ylabel "T [deg C]"
set y2label "P [pres Pa]"
set key under
#set grid on
set xdata time
set timefmt "%s"
set format x "%M:%S"
set logscale y2
set y2tics

set y2range [3000:95000]
#set xrange [500:1500]
set output "Temp.png" 
g(x)=k*x+q*x**2+a
fit g(x) "mereni_tlaku_02122013.log" using 1:10 via k, q, a


plot "mereni_tlaku_02122013.log" using 1:3 with linespoints title "T1", "" using 1:4 with linespoints title "T2", "" using 1:5 with linespoints title "T3", "" using 1:6 with linespoints title "T4", "" using 1:7 with linespoints title "T5", "" using 1:8 with linespoints title "T6", "" using 1:9 with linespoints title "TRef", "" using 1:10 axes x1y2 with linespoints title "P1", "" using 1:11 axes x1y2 with linespoints title "P2", "" using 1:12 axes x1y2 with linespoints title "P3", "" using 1:13 axes x1y2 with linespoints title "P4", "" using 1:14 axes x1y2 with linespoints title "P5", "" using 1:15 axes x1y2 with linespoints title "P6", "" using 1:16 axes x1y2 with linespoints title "PRef", "" using 1:($17*100000) axes x1y2 with linespoints title "PDPI145", g(x)

set output "Pdif.png" 
plot "mereni_tlaku_02122013.log" using 1:($10-$17*100000) with linespoints title "P1", "" using 1:($11-$17*100000) with linespoints title "P2", "" using 1:($12-$17*100000) with linespoints title "P3", "" using 1:($13-$17*100000) with linespoints title "P4", "" using 1:($14-$17*100000) with linespoints title "P5", "" using 1:($15-$17*100000) with linespoints title "P6"


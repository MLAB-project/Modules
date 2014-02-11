#set term svg  size 800,640 #enhanced mouse
set terminal png  size 800,640
#set samples 1000

set ylabel "press DPI145 [Pa]"
set xlabel "press senzory [Pa]"
set output "KorekceTlaku.png" 
set grid
set key under
f1(x)=k1*x+q1; f2(x)=k2*x+q2; f3(x)=k3*x+q3; f4(x)=k4*x+q4; f5(x)=k5*x+q5
fit f1(x) "mereni_tlaku_16122013.log" using ($10):($17*100000) via k1, q1
fit f2(x) "mereni_tlaku_16122013.log" using ($11):($17*100000) via k2, q2
fit f3(x) "mereni_tlaku_16122013.log" using ($12):($17*100000) via k3, q3
fit f4(x) "mereni_tlaku_16122013.log" using ($14):($17*100000) via k4, q4
fit f5(x) "mereni_tlaku_16122013.log" using ($15):($17*100000) via k5, q5
plot "mereni_tlaku_16122013.log" using ($10):($17*100000) with linespoints title "P1", f1(x), "" using ($11):($17*100000) axes x1y1 with linespoints title "P2", f2(x), "" using ($12):($17*100000) axes x1y1 with linespoints title "P3", f3(x), "" using ($14):($17*100000) axes x1y1 with linespoints title "P4", f4(x), "" using ($15):($17*100000) axes x1y1 with linespoints title "P5", f5(x)

set output "KorekceTlakuZoom.png"
set key under
plot [5500:7500] "mereni_tlaku_16122013.log" using ($10):($17*100000) with linespoints title "P1", f1(x), "" using ($11):($17*100000) axes x1y1 with linespoints title "P2", f2(x), "" using ($12):($17*100000) axes x1y1 with linespoints title "P3", f3(x), "" using ($14):($17*100000) axes x1y1 with linespoints title "P4", f4(x), "" using ($15):($17*100000) axes x1y1 with linespoints title "P5", f5(x)



set xlabel "time [s]"

#set y2label "P [pres Pa]"
set key under
#set grid on
set xdata time
set timefmt "%s"
set format x "%M:%S"
#set logscale y2
#set y2tics

#set y2range [3000:95000]
#set xrange [500:1500]
set output "Press.png" 
set ylabel "press [Pa]"
set xlabel "time [s]"


#plot "mereni_tlaku_16122013.log" using 1:3 with linespoints title "T1", "" using 1:4 with linespoints title "T2", "" using 1:5 with linespoints title "T3", "" using 1:6 with linespoints title "T4", "" using 1:7 with linespoints title "T5", "" using 1:8 with linespoints title "T6", "" using 1:9 with linespoints title "TRef", "" using 1:10 axes x1y2 with linespoints title "P1", "" using 1:11 axes x1y2 with linespoints title "P2", "" using 1:12 axes x1y2 with linespoints title "P3", "" using 1:13 axes x1y2 with linespoints title "P4", "" using 1:14 axes x1y2 with linespoints title "P5", "" using 1:15 axes x1y2 with linespoints title "P6", "" using 1:16 axes x1y2 with linespoints title "PRef", "" using 1:($17*100000) axes x1y2 with linespoints title "PDPI145"

plot "mereni_tlaku_16122013.log" using 1:10 axes x1y1 with linespoints title "P1", "" using 1:11 axes x1y1 with linespoints title "P2", "" using 1:12 axes x1y1 with linespoints title "P3", "" using 1:14 axes x1y1 with linespoints title "P5", "" using 1:15 axes x1y1 with linespoints title "P6", "" using 1:($17*100000) axes x1y1 with linespoints title "PDPI145"

set output "Pdif.png" 
plot "mereni_tlaku_16122013.log" using 1:($10-$17*100000) with linespoints title "P1", "" using 1:($11-$17*100000) with linespoints title "P2", "" using 1:($12-$17*100000) with linespoints title "P3", "" using 1:($14-$17*100000) with linespoints title "P5", "" using 1:($15-$17*100000) with linespoints title "P6"





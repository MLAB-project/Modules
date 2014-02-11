set terminal png  size 800,640

set ylabel "alt [m]"
set xlabel "time [min]"
#set output "KorekceTlaku.png" 
#f1(x)=k1*x+q1; f2(x)=k2*x+q2; f3(x)=k3*x+q3; f4(x)=k4*x+q4; f5(x)=k5*x+q5
#fit f1(x) "mereni_tlaku_16122013.log" using ($10):($17*100000) via k1, q1
#fit f2(x) "mereni_tlaku_16122013.log" using ($11):($17*100000) via k2, q2
#fit f3(x) "mereni_tlaku_16122013.log" using ($12):($17*100000) via k3, q3
#fit f4(x) "mereni_tlaku_16122013.log" using ($14):($17*100000) via k4, q4
#fit f5(x) "mereni_tlaku_16122013.log" using ($15):($17*100000) via k5, q5
T0=288.15; tau=-6.5e-3; R=29.271; p0=101325
h1(x)=(T0/tau)*((p0/f1(x))**(R*tau)-1)
h2(x)=(T0/tau)*((p0/f2(x))**(R*tau)-1)
h3(x)=(T0/tau)*((p0/f3(x))**(R*tau)-1)
h4(x)=(T0/tau)*((p0/f4(x))**(R*tau)-1)
h5(x)=(T0/tau)*((p0/f5(x))**(R*tau)-1)

#plot "mereni_tlaku_16122013.log" using ($10):($17*100000) with linespoints title "P1", f1(x), "" using ($11):($17*100000) axes x1y1 with linespoints title "P2", f2(x), "" using ($12):($17*100000) axes x1y1 with linespoints title "P3", f3(x), "" using ($14):($17*100000) axes x1y1 with linespoints title "P4", f4(x), "" using ($15):($17*100000) axes x1y1 with linespoints title "P5", f5(x)



f1(x)=a*x+b*x**2+c 
fit f1(x) "mereni_tlaku_16122013.log" using ($10/1000):(h1($10)) via a, b, c
#fit f2(x) "mereni_tlaku_16122013.log" using ($11):($17*100000) via k2, q2
#fit f3(x) "mereni_tlaku_16122013.log" using ($12):($17*100000) via k3, q3
#fit f4(x) "mereni_tlaku_16122013.log" using ($14):($17*100000) via k4, q4
#fit f5(x) "mereni_tlaku_16122013.log" using ($15):($17*100000) via k5, q5
#tlak-vyska
set output "Tlak_vyska.png"
set ylabel "alt [m]"
set xlabel "press [kPa]"
plot "mereni_tlaku_16122013.log" using ($10/1000):(h1($10)) with linespoints title "s1", "" using ($11/1000):(h2($11)) with linespoints title "s2", "" using ($12/1000):(h3($12)) with linespoints title "s3", "" using ($14/1000):(h4($14)) with linespoints title "s4", "" using ($15/1000):(h5($15)) with linespoints title "s5", f1(x)




#cas-vyska
set output "Stoupani.png" 
set xdata time
set timefmt "%s"
set format x "%H:%M:%S"
set key under
plot "mereni_tlaku_16122013.log" using 1:(h1($10)) with linespoints title "h1", "" using 1:(h2($11)) with linespoints title "h2", "" using 1:(h3($12)) with linespoints title "h3", "" using 1:(h4($14)) with linespoints title "h4", "" using 1:(h5($15)) with linespoints title "h5"



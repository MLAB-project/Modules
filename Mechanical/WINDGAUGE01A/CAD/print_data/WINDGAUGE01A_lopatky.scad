
use <../configuration/lopatky.scad>


include <../configuration.scad>








color("yellow")


translate([0,(-prumer_lopatky/2-delka_uchytu_lopatky-hloubka_uchytu)/2,0])
rotate(a = [0, 90, 0])
lopatka(hloubka_uchytu,sila_uchytu,vyska_uchytu,tolerance_uchytu,prumer_lopatky,sila_materialu_lopatky,delka_uchytu_lopatky,hrana_uchytu_lopatky,prumer_rotoru1,prumer_sroubu);
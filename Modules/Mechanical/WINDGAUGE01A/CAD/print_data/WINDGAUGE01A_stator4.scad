
use <../configuration/stator4.scad>


include <../configuration.scad>








color("yellow")


translate([0,0,vyska_stator4/2])
stator4 (roztec_sroubu,uchyt_prumer_sroubu,vyska_stator4,sila_materialu,uchyt_vyska_matky,uchyt_prumer_orechu,kabel_prumer);

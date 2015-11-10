
use <../configuration/stator3.scad>


include <../configuration.scad>








color("yellow")


translate([0,0,stator3_vyska/2])
stator3(stator3_vyska,prumer_rotoru1,lozisko_vyska,sila_pod_loziskem,sila_materialu,vule1,stator3_sila_steny,stator3_vyska_prekryti,prumer_hlavy_sroubu,stator3_vzdalenost_od_steny,lozisko_vyska,prumer_sroubu,roztec_sroubu,uchyt_prumer_sroubu);


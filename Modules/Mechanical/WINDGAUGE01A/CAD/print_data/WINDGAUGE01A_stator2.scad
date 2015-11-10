
use <../configuration/stator2.scad>


include <../configuration.scad>




color("cyan")



//stator2
color(barva_rotor3)
translate([0,0,(lozisko_vyska+sila_pod_loziskem)/2])

stator2(lozisko_vyska,sila_pod_loziskem,prumer_rotoru1,sila_materialu,vule1,stator3_sila_steny,lozisko_prumer_vnejsi,lozisko_prumer_vnitrni,lozisko_prekryv,
prumer_sroubu,
lozisko_vyska,vzdalenost_der_x,vzdalenost_der_y,vyska_hlavy_sroubu,prumer_hlavy_sroubu,prumer_rotoru1,stator3_vzdalenost_od_steny);


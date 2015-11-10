
use <../configuration/rotor3.scad>


include <../configuration.scad>



barva_rotor3 = "green";


color(barva_rotor3)
translate([0,0,(sila_pod_loziskem+delka_hridele+2)/2])


rotor3 (sila_pod_loziskem,delka_hridele,lozisko_prumer_vnitrni,lozisko_prekryv);


$fn=100; // model faces resolution.
include <../configuration.scad>

use <../SRC/WINDGAUGE02A_R04.scad>




translate([0,0,3/2*S01_sila_materialu])

rotate([0,180, 0])

WINDGAUGE02A_R04 (lozisko_prumer_vnitrni,lozisko_prekryv,S01_sila_materialu,prumer_sroubu);   

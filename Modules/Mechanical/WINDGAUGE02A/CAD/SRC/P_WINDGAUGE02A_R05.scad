$fn=100; // model faces resolution.
include <../configuration.scad>

use <../SRC/WINDGAUGE02A_R05.scad>




translate([0,0,0])

rotate([0,0, 0])

WINDGAUGE02A_R05(vyska_pod_magnetem,magnet_zapusteni,magnet_prumer,vyska_hlavy_sroubu,prumer_hlavy_sroubu,prumer_sroubu,vyska_matky,sirka_matky,R05_sirka_matky,S01_sila_materialu);   

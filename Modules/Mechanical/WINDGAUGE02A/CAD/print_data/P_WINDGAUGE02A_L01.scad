$fn=100; // model faces resolution.
include <../configuration.scad>

use <../SRC/WINDGAUGE02A_L01.scad>


translate([0,0,0])

rotate([0, 90, 0])

WINDGAUGE02A_L01(L01_hloubka_zapusteni,L01_hloubka_zapusteni_drzaku,L01_sila_zapusteni_drzaku,L01_hrana_drzaku_a,L01_hrana_drzaku_b,L01_tolerance_drzaku,L01_delka_uchytu,L01_prumer_lopatky,L01_sila_materialu_lopatky);   

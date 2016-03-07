$fn=100; // model faces resolution.
include <../configuration.scad>
use <../SRC/WINDGAUGE02A_R02.scad>

translate([0,0,(R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku)/2])

WINDGAUGE02A_R02();

            

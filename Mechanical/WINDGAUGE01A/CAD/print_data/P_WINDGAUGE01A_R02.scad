$fn=100; // model faces resolution.
include <../configuration.scad>
use <../SRC/WINDGAUGE02A_R02.scad>

translate([0,0,R01_mezera_mezi_statorem_rotorem])
    WINDGAUGE02A_R02();

            

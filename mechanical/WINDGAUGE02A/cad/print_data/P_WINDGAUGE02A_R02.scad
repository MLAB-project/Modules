include <../configuration.scad>

$fn=100; // model faces resolution.
use <../src/WINDGAUGE02A_R02.scad>

translate([0,0,R01_mezera_mezi_statorem_rotorem])
    WINDGAUGE02A_R02();

            

$fn=100; // model faces resolution.
include <../configuration.scad>

use <../SRC/WINDGAUGE02A_L01.scad>


translate([0,0,0])

rotate([0, 90, 0])

WINDGAUGE02A_L01();   

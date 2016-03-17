$fn=100; // model faces resolution.
include <../configuration.scad>

use <../SRC/WINDGAUGE02A_S01.scad>


translate([0,0,0])
    WINDGAUGE02A_S01();

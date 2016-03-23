$fn=100; // model faces resolution.
include <../configuration.scad>

use <../SRC/WINDGAUGE01A_S01.scad>


translate([0,0,0])
    WINDGAUGE01A_S01();

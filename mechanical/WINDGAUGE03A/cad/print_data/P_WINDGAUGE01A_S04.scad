$fn=100; // model faces resolution.
include <../configuration.scad>

use <../SRC/WINDGAUGE_S04.scad>
use <../SRC/lib/polyScrewThread_r1.scad>

translate([0,0,0])
    rotate([0, 0, 0])
        WINDGAUGE01A_S04();   

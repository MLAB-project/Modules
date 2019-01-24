$fn=100; // model faces resolution.
include <../configuration.scad>

use <../SRC/WINDGAUGE01A_S03.scad>
use <../SRC/polyScrewThread_r1.scad>

translate([0,0,0])
    rotate([0, 0, 0])
        WINDGAUGE01A_S03();   

$fn=100; // model faces resolution.
include <../configuration.scad>

use <../src/WINDGAUGE_S04.scad>
use <../src/lib/polyScrewThread_r1.scad>

translate([0,0,0])
    rotate([0, 0, 0])
        WINDGAUGE01A_S04();   

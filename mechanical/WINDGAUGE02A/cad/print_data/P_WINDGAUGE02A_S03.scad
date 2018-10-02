include <../configuration.scad>

$fn=100; // model faces resolution.

use <../src/WINDGAUGE02A_S03.scad>
use <../src/polyScrewThread_r1.scad>

translate([0,0,0])
    rotate([0, 0, 0])
        WINDGAUGE02A_S03();   

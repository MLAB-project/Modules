$fn=100; // model faces resolution.
include <../configuration.scad>
use <../src/WINDGAUGE_R03.scad>

translate([0,0,0])
    WINDGAUGE03A_R03(draft = false);

            

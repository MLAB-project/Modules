$fn=100; // model faces resolution.
include <../configuration.scad>
use <../src/WINDGAUGE_R01.scad>

translate([0,0,R01_zavit_vyska+1+3])
    rotate([0, 180, 0])
    WINDGAUGE01A_R01();

            

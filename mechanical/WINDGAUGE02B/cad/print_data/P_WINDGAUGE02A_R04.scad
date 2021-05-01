$fn=100; // model faces resolution.
include <../configuration.scad>

use <../src/WINDGAUGE02A_R04.scad>

//neni potřeba
    translate([0,0,3/2*S01_sila_materialu])
        rotate([0,180, 0])
            WINDGAUGE02A_R04 ();   

$fn=100; // model faces resolution.
include <../configuration.scad>

use <../SRC/WINDGAUGE01A_R04.scad>

//neni potřeba
    translate([0,0,0])
        rotate([0,0, 0])
            WINDGAUGE01A_R04 ();   

$fn=100; // model faces resolution.
include <../configuration.scad>
use <../SRC/BOXHOLDER01A_D02.scad>

rotate([0, 0, 0])
    translate([0,0,D02_vyska_uchytky/2])
        BOXHOLDER01A_D02();

            

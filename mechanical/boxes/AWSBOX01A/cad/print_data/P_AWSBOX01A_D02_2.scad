$fn=100; // model faces resolution.
include <../configuration.scad>
use <../SRC/AWSBOX01A_D02_2.scad>

rotate([0, 0, 0])
            
 
translate([0,0,D02_vyska_uchytky/2])
        rotate([180,0,0])
     WINDGAUGE02A_D02_2(6);

            

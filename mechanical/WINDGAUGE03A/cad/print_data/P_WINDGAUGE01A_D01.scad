$fn=100; // model faces resolution.
include <../configuration.scad>


use <../SRC/polyScrewThread_r1.scad>
use <../SRC/WINDGAUGE01A_D01.scad>


PI=3.141592;
 rotate([0, 0, 0])
    translate([0,0,D02_vyska_uchytky/2])
WINDGAUGE01A_D01_2();


    
  

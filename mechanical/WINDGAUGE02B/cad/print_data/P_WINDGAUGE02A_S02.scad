$fn=100; // model faces resolution.
include <../configuration.scad>

use <../src/WINDGAUGE02A_S02.scad>
use <../src/polyScrewThread_r1.scad>


PI=3.141592;

translate([0,0,S01_vyska])
    rotate([180,0, 0])
        WINDGAUGE02A_S02();   

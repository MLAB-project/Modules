$fn=100; // model faces resolution.
include <../configuration.scad>
use <../src/WINDGAUGE_D02.scad>

rotate([0, 0, 0])
    translate([0,0,D01_vyska_spodni_casti_drzaku])
        WINDGAUGE01A_D02();

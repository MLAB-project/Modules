$fn=100; // model faces resolution.
include <../configuration.scad>
use <../SRC/WINDGAUGE02A_R03.scad>

translate([0,0,S01_sila_materialu])
    WINDGAUGE02A_R03();

            

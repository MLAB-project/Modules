$fn=100; // model faces resolution.
include <../configuration.scad>
use <../SRC/WINDGAUGE02A_D02.scad>

rotate([0, -90, 0])
    translate([-D02_dotahova_vzdalenost,0,0])
        WINDGAUGE02A_D02();

            

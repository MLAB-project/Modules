$fn=100; // model faces resolution.
include <../configuration.scad>
use <../src/WINDGAUGE02A_D02.scad>

rotate([0, 0, 0])
    translate([-D02_dotahova_vzdalenost,0,D02_vyska_uchytky/2])
        WINDGAUGE02A_D02_2();

            

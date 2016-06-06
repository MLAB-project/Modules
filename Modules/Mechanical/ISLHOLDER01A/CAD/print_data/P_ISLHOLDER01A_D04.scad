$fn=100; // model faces resolution.
include <../configuration2.scad>
use <../SRC/ISLHOLDER01A_D04.scad>

rotate([0, -90, 0])
    translate([-D02_dotahova_vzdalenost,0,0])
        ISLHOLDER01A_D04();

            

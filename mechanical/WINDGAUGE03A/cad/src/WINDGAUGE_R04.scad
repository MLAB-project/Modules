$fn=40; // model faces resolution.
include <../configuration.scad>
include <./lib/polyScrewThread_r1.scad>
use <WINDGAUGE_R03.scad>

//podložka u ložiska - nahrazena kovovou
WINDGAUGE01A_R04();

//Model lopatky
module WINDGAUGE01A_R04()
{
    // Drop shape - TOP.
    //translate([0,-D/2,V_h]) // original without separation
    translate([0,-1.5*D,V_h])  // temporary separation
        difference()
        {
            drop_shape(2*D);
            translate([0,0,-Lid_t/2])
                drop_shape(2*D - 5);
            translate([-D/2,0,-2*D])
                cube([D,D/2,2*D]);
            pcb_casing();
            //  TODO screw hole
            //translate([0,0,-D/2.5])
            //    rotate([90,0,0])
            //        cylinder (h = 2*D, d = c_t_b , $fn=100);
        }

}



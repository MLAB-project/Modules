include <../configuration.scad>
include <./lib/polyScrewThread_r1.scad>
use <WINDGAUGE_R03.scad>

draft = true;

// Drop shape - TOP.
module WINDGAUGE01A_R04(draft = true)
{
    difference()
    {
        drop_shape(2*R03_wide_D, draft);
        translate([-R03_wide_D, 0, -3*R03_wide_D])
            cube([2*R03_wide_D, R03_wide_D, 4*R03_wide_D]);
    }
}

difference()
{
    // If not draft -> move to print position.
    if (!draft)
        translate([0, R03_wide_D/2, 0])
            rotate([270, 0, 0])
                WINDGAUGE01A_R04(false);
    else
        WINDGAUGE01A_R04();
    // Cut-out cube not needed in this model
    //if (draft)
    //    translate([0, -R03_wide_D, -2*R03_wide_D])
    //        cube(10);
}

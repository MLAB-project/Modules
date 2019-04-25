include <../configuration.scad>
include <./lib/polyScrewThread_r1.scad>
use <WINDGAUGE_R03.scad>

// Drop shape - TOP.
module WINDGAUGE01A_R04(draft = true)
{
    translate([0, R03_wide_D/2, 0])
        rotate([270, 0, 0])
            difference()
            {
                drop_shape(2*R03_wide_D, draft);
                translate([-R03_wide_D, 0, -3*R03_wide_D])
                    cube([2*R03_wide_D, R03_wide_D, 4*R03_wide_D]);
            }
}

WINDGAUGE01A_R04(draft = true);

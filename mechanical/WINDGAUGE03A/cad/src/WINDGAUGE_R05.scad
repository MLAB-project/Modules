include <../configuration.scad>
use <./lib/copyFunctions.scad>

draft = true;

module WINDGAUGE01A_R05(draft = true)
{
    mirror_copy([0, 1, 0])
        difference()
        {
            // Fin
            union()
            {
                translate([-R03_fin_length/2, -R03_fin_height/4, 0])
                        cube([R03_fin_length, R03_fin_height/4, R03_fin_width]);
                translate([-R03_fin_length/4, -R03_fin_height/4, 0])
                        cylinder(h = R03_fin_width, d = R03_fin_height/2);
                translate([-R03_fin_length/4, -R03_fin_height/2, 0])
                        cube([3/4 * R03_fin_length, R03_fin_height/4, R03_fin_width]);
            }
                // Bolt hole
                translate([-R03_fin_length/2 + R03_fin_holder_height/2,
                           -R03_fin_holder_depth + R03_fin_holder_height/2,
                           0])
                    cylinder(h = R03_fin_width, d = M3_bolt_diameter);
        }
}

difference()
{
    // If not draft -> move to print position.
    if (!draft)
        translate([0, 0, 0])
            rotate([0, 0, 0])
                WINDGAUGE01A_R05(false);
    else
        WINDGAUGE01A_R05();
    // Cut-out cube not needed in this model
    //if (draft)
    //    translate([0, -R03_wide_D, -2*R03_wide_D])
    //        cube(2*R03_wide_D);
}

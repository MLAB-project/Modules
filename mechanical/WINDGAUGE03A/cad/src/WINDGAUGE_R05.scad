include <../configuration.scad>
use <./lib/copyFunctions.scad>

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

WINDGAUGE01A_R05(draft = true);

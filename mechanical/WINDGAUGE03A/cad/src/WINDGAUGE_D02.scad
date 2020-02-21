include <../configuration.scad>
include <./lib/polyScrewThread_r1.scad>
use <./lib/copyFunctions.scad>

draft = $preview;
$fn = draft ? 20 : 100; // model faces resolution
PI = 3.141592;
//   |\
//   | \
// c |  \ b
//   |   \
//   |____\
//     a
a1 = (D02_base_diameter - D02_top_ring_outer_diameter)/2;
//a2 = ?; // minimum distance from wall to leave space for nut
c1 = D02_body_height;
c2 = M5_nut_height + global_clearance;
// c1/a1 = c2/a2
// a2 = c2 / (c1 / a1)
wall_distance = (c2 / (c1 / a1));
magnet_offset = (D02_base_diameter/2 - D02_wall_thickness
                 - M5_nut_diameter/2 - wall_distance);

// Anemometer holder
module WINDGAUGE01A_D02(draft = true)
{
    //   | |   Top ring with screw-thread
    //  /   \  Body
    // |_____| Base

    difference()
    {
        union()
        {
            // Screw-thread (for draft draw cylinder instead)
            translate([0, 0, D02_top_ring_height - D02_thread_height])
                if (draft)
                    cylinder(h = D02_thread_height, d = D02_screw_diameter);
                else
                    screw_thread(D02_screw_diameter, 4, 55, D02_thread_height, PI/2, 2);
            // Top ring below screw-thread
            cylinder(h = D02_top_ring_height - D02_thread_height,
                     d = D02_top_ring_outer_diameter);
            //Holder body
            translate([0, 0, -D02_body_height])
                cylinder(h = D02_body_height,
                         d1 = D02_base_diameter,
                         d2 = D02_top_ring_outer_diameter);
            // Base
            translate([0, 0, -D02_body_height - D02_base_height])
                cylinder (h = D02_base_height,
                          d = D02_base_diameter);
        }
        // Top ring Cut-out
        cylinder(h = D02_top_ring_height,
                 d = D02_top_ring_inner_diameter);
        // Body hollow
        translate([0, 0, -D02_body_height])
            cylinder(h=D02_body_height,
                     d1 = D02_base_diameter - 2*D02_wall_thickness,
                     d2 = D02_top_ring_outer_diameter - 2*D02_wall_thickness);
        // Straight body cut-through
        translate([-D02_base_diameter/2, -D02_connector_spacing/2, -D02_body_height])
            cube([D02_base_diameter, D02_connector_spacing,
                  (D02_body_height + D02_base_height)/2]);
        // Round body cut-through
        translate([0, 0, -D02_body_height/2 + D02_base_height/2])
            rotate([0, 90, 0])
                cylinder (h = D02_base_diameter,
                          d = D02_connector_spacing,
                          center = true);
        // Nut hole
        translate([0, 0, -D02_body_height - M6_nut_height])
            cylinder (h = M6_nut_height,
                      d = M6_nut_diameter,
                      $fn = 6);
        // Bolt hole
        translate([0, 0, -D02_body_height - D02_base_height])
            cylinder (h = D02_base_height,
                      d = M6_bolt_diameter);
        // Bolt Magnet holes
        rotate_copy([0, 0, 90])
            rotate_copy([0, 0, 180])
                translate([magnet_offset, 0, -D02_body_height - D02_base_height])
                {
                    // Nut pocket
                    translate([0, 0, D02_base_height - M5_nut_height/2])
                        cylinder (h = 1.5*M5_nut_height,
                                  d = M5_nut_diameter,
                                  $fn = 6);
                    // Magnet base
                    cylinder (h = D02_magnet_base_height,
                              d = D02_magnet_diameter);
                    // Magnet bolt
                    cylinder (h = D02_base_height,
                              d = M5_bolt_diameter);
                }

        // Flat Magnet holes
        rotate([0,0,45])
        rotate_copy([0, 0, 90])
            rotate_copy([0, 0, 180])
                translate([magnet_offset -  D02_flat_magnet_diameter/2, 0, -D02_body_height - D02_base_height+ 2* layer_thickness])
                {
                    // Magnet base
                    cylinder (h = 2*D02_magnet_base_height,
                              d = D02_flat_magnet_diameter);
                }
    }
    // Supportive layer for magnet bolt holes
    rotate_copy([0, 0, 90])
        rotate_copy([0, 0, 180])
            translate([magnet_offset, 0,
                       -D02_body_height - D02_base_height + D02_magnet_base_height])
                cylinder (h = layer_thickness,
                          d = D02_magnet_diameter);

}

difference()
{
    // If not draft -> move to print position.
    if (!draft)
        translate([0, 0, D02_base_height + D02_body_height])
            rotate([0, 0, 0])
                WINDGAUGE01A_D02(false);
    else
        WINDGAUGE01A_D02();
    // Cut-out cube
    if (draft)
        translate([0, 0, -D02_total_height])
            cube(2*D02_total_height);
}

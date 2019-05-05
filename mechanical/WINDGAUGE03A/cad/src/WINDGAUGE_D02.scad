$fn=100; // model faces resolution.
include <../configuration.scad>
include <./lib/polyScrewThread_r1.scad>
use <./lib/copyFunctions.scad>

PI=3.141592;

// Anemometer holder
module WINDGAUGE01A_D02()
{
    //   | |   Top ring with screw-thread
    //  /   \  Body
    // |_____| Base

    // Top ring with screw-thread
    difference()
    {
        union()
        {
            // Screw-thread
            translate([0, 0, D02_top_ring_height - D02_thread_height])
                screw_thread(D02_screw_diameter, 4, 55, D02_thread_height, PI/2, 2);
            // Ring below screw-thread
            cylinder(h = D02_top_ring_height - D02_thread_height,
                     d = D02_top_ring_outer_diameter);
        }
        // Cut-out
        cylinder(h = D02_top_ring_height,
                 d = D02_top_ring_inner_diameter);
    }

    //Holder body
    difference()
    {
        translate([0, 0, -D02_body_height])
            cylinder(h = D02_body_height,
                     d1 = D02_base_diameter,
                     d2 = D02_top_ring_outer_diameter);
        // Body hollow
        translate([0, 0, -D02_body_height])
            cylinder(h=D02_body_height,
                     d1 = D02_base_diameter - 2*D02_wall_thickness,
                     d2 = D02_top_ring_outer_diameter - 2*D02_wall_thickness);
        // Straight cut-through
        translate([-D02_base_diameter/2, -D02_connector_spacing/2, -D02_body_height])
            cube([D02_base_diameter, D02_connector_spacing,
                  (D02_body_height + D02_base_height)/2]);
        // Round cut-through
        translate([0, 0, -D02_body_height/2 + D02_base_height/2])
            rotate([0, 90, 0])
                cylinder (h = D02_base_diameter,
                          d = D02_connector_spacing,
                          center = true);
    }

    // Base
    difference()
    {
        translate([0, 0, -D02_body_height - D02_base_height])
            cylinder (h = D02_base_height,
                      d = D02_base_diameter);
        // Nut hole
        translate([0, 0, -D02_body_height - M6_nut_height])
            cylinder (h = M6_nut_height,
                      d = M6_nut_diameter,
                      $fn = 6);
        // Bolt hole
        translate([0, 0, -D02_body_height - D02_base_height])
            cylinder (h = D02_base_height,
                      d = M6_bolt_diameter);
        // Magnet holes
        rotate_copy([0, 0, 120])
            rotate_copy([0, 0, 120])
                translate([D02_base_diameter/2 - D02_wall_thickness - 1.5*M5_nut_diameter,
                           0, -D02_body_height - D02_base_height])
                {
                    // Nut pocket
                    translate([0, 0, D02_base_height - M5_nut_height/2])
                        cylinder (h = M5_nut_height,
                                  d = M5_nut_diameter,
                                  $fn = 6);
                    // Magnet base
                    cylinder (h = D02_magnet_base_height,
                              d = D02_magnet_diameter);
                    // Magnet bolt
                    cylinder (h = D02_base_height,
                              d = M5_bolt_diameter);
                }
    }

}

difference()
{
    WINDGAUGE01A_D02();
    // Cut-out cube
    translate([0,0,-50])
        cube(100);
}

$fn=100; // model faces resolution.
include <../configuration.scad>
include <./lib/polyScrewThread_r1.scad>

PI=3.141592;
D01_bottom_height = D01_vyska_spodni_casti_drzaku;
S01_thread_height = S01_vyska_spodniho_zavitu;
D01_wall_thickness = D01_sila_setny_spodniho_drzaku;
D01_connector_spacing = D01_sirka_otvoru_pro_konektor;
M6_bolt_diameter = D01_uchytny_sroub_prumer;
M6_nut_height = D01_uchytna_matice_vyska;
M6_nut_diameter = D01_uchytna_matice_sirka + 0.2;

base_height = M6_nut_height + D01_ucyhtna_matice_material_nad;
base_diameter = 2*D01_polomer_zakladny;
body_height = D01_vyska_spodni_casti_drzaku - base_height;
screw_diameter = S01_prumer_vnitrni - S01_tolerance_zavit;
top_ring_outer_diameter = screw_diameter + 2*D01_material_pred_zavitem;
top_ring_inner_diameter = screw_diameter - 2*D01_material_za_zavitem;
top_ring_height = S01_thread_height + D01_material_pod_zavitem;

// Anemometer holder
module WINDGAUGE01A_D02()
{
    // Top ring with screw-thread
    difference()
    {
        union()
        {
            // Screw-thread
            translate([0, 0, top_ring_height - S01_thread_height])
                screw_thread(screw_diameter, 4, 55, S01_thread_height, PI/2, 2);
            // Ring below screw-thread
            cylinder(h = top_ring_height - S01_thread_height,
                     d = top_ring_outer_diameter);
        }
        // Cut-out
        cylinder(h = top_ring_height,
                 d = top_ring_inner_diameter);
    }

    //Holder body
    difference()
    {
        translate([0, 0, -body_height])
            cylinder(h = body_height,
                     d1 = base_diameter,
                     d2 = top_ring_outer_diameter);
        // Body hollow
        translate([0, 0, -body_height])
            cylinder(h=body_height,
                     d1 = base_diameter - 2*D01_wall_thickness,
                     d2 = top_ring_outer_diameter - 2*D01_wall_thickness);
        // Straight cut-through
        translate([-base_diameter/2, -D01_connector_spacing/2, -body_height])
            cube([base_diameter, D01_connector_spacing, (body_height + base_height)/2]);
        // Round cut-through
        translate([0, 0, -body_height/2 + base_height/2])
            rotate([0, 90, 0])
                cylinder (h = base_diameter,
                          d = D01_connector_spacing,
                          center = true);
    }

    // Base
    difference()
    {
        translate([0, 0, -D01_bottom_height])
            cylinder (h = base_height,
                      d = base_diameter);
        // Nut hole
        translate([0, 0, -D01_bottom_height])
            cylinder (h = M6_nut_height,
                      d = M6_nut_diameter,
                      $fn=6);
        // Bolt hole
        translate([0, 0, -D01_bottom_height])
            cylinder (h = base_height,
                      d = M6_bolt_diameter);
    }

}

difference()
{
    WINDGAUGE01A_D02();
    // Cut-out cube
    translate([0,0,-50])
        cube(100);
}

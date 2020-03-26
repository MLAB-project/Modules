include <../configuration.scad>
use <./lib/naca4.scad>
use <./lib/curvedPipe.scad>
use <./lib/copyFunctions.scad>
use <WINDGAUGE_R06.scad>

draft = true;
$fn = draft ? 20 : 100;
slip_ring_z = 2*R03_venturi_tube_height - R03_slip_ring_offset - 6*R03_wide_D;
// length of tube narrowing part
intake_length = ((R03_wide_D - R03_narrow_D) / 2) / tan(15 / 2);
// length of tube widening part
exhaust_length = ((R03_wide_D - R03_narrow_D) / 2) / tan(10 / 2);
// length of wide tube part on bottom and top
wide_body_length = (R03_venturi_tube_height - intake_length - exhaust_length
                    - R03_narrow_D) / 2;

module pipes()
{
    // Cabling
    mid_body_horizontal = (R03_wide_D/2 + R03_narrow_D/2) / 2;
    mid_body_vertical = wide_body_length + exhaust_length + R03_narrow_D/2;
    PCB_y = -R03_wide_D/2 - R03_wall_thickness - R03_PCB_elevation;
    PCB_z = R03_venturi_tube_height - R03_PCB_height*1.1 - 5;
    pipe_elevation = PCB_z - slip_ring_z;
    d = (R03_wide_D + 2*R03_wall_thickness)/2 - R03_narrow_D/2 - R03_wall_thickness;
    cbl_x = 0;
    curvedPipe([[-mid_body_horizontal/2, PCB_y + d + R03_wall_thickness/2, PCB_z + d ],
                [-mid_body_horizontal, -mid_body_horizontal    , PCB_z + d ],
                [-mid_body_horizontal - 1, 0                   , PCB_z - 5 ],
                [-mid_body_horizontal, mid_body_horizontal     , mid_body_vertical ],
                [0                   , mid_body_horizontal     , slip_ring_z       ],
                [0                   , mid_body_horizontal + 10, slip_ring_z       ],
               ],
                5,
                [mid_body_horizontal/1.2, d/2 + 0.1,
                 mid_body_horizontal - 2, d/2 + 0.1],
                d,
                0);
    // Cabling ramp
    translate([0, PCB_y, PCB_z])
        polyhedron
        (
            // PCB casing is split into 3 main parts divided in thirds = R03_PCB_height/3
            // Lower ramp below PCB casing is R03_PCB_height*0.1
            // PCB_z starts at the bottom of the casing ramp.
            points = [ // 0 = top left front
                     [-R03_PCB_width/2 + 1, 0, 2*R03_PCB_height*0.1],
                     // 1 = top right
                     [R03_PCB_width/2 - 1, 0, 2*R03_PCB_height*0.1],
                     // 2 = bottom right
                     [R03_PCB_width/2 - 1, 0, R03_PCB_height*0.1],
                     // 3 = bottom left front
                     [-R03_PCB_width/2 + 1, 0, R03_PCB_height*0.1],
                     // 4 = top left back
                     [-R03_PCB_width/2 + 1, 1.3*d + R03_wall_thickness/2, 2*R03_PCB_height*0.1],
                     // 5 = bottom left back
                     [-R03_PCB_width/2 + 1, 1.3*d + R03_wall_thickness/2, R03_PCB_height*0.1],
                   ],
            faces = [ [0, 1, 2, 3], // front
                      [1, 4, 5, 2], // back
                      [4, 0, 3, 5], // left
                      [0, 4, 1], // top
                      [3, 2, 5], // bottom
                   ]
        );

    //  Venturi upper pipe
    vup_x = 0;
    vup_y_in = 0;
    vup_y_out = vup_y_in - R03_wide_D/2 - R03_wall_thickness;
    vup_z_in = R03_venturi_tube_height - (wide_body_length / 2);
    vup_z_out = R03_venturi_tube_height - R03_PCB_top_rim - R03_sensor_offset;
    curvedPipe([[vup_x, vup_y_in                                      , vup_z_in ],
                [vup_x, vup_y_in - R03_wide_D/2 - R03_wall_thickness/2, vup_z_in ],
                [vup_x, vup_y_out + R03_wall_thickness/2              , vup_z_out],
                [vup_x, vup_y_out                                     , vup_z_out],
               ],
                3,
                [R03_air_tube_diameter/2 + 0.1, R03_air_tube_diameter/2 + 0.1],
                R03_air_tube_diameter,
                0);
    // Sealing ring extension
    sensor_y = vup_y_out - R03_PCB_elevation - R03_PCB_connector_overlay
               + R03_sensor_depth;
    sealing_ring_extension(vup_x, sensor_y, vup_y_out, vup_z_out);

    // Venturi lower pipe
    vlp_x = 0;
    vlp_y_in = 0;
    vlp_y_out = vlp_y_in - R03_wide_D/2 - R03_wall_thickness;
    vlp_z_in = wide_body_length + exhaust_length + (R03_narrow_D / 2);
    vlp_z_out = (R03_venturi_tube_height - R03_PCB_top_rim - R03_sensor_offset
                 - R03_sensor_pitch);
    curvedPipe([[vlp_x, vlp_y_in                                        , vlp_z_in ],
                [vlp_x, vlp_y_in - R03_narrow_D/2 - R03_wall_thickness/2, vlp_z_in ],
                [vlp_x, vlp_y_out + R03_wall_thickness/2                , vlp_z_out],
                [vlp_x, vlp_y_out                                       , vlp_z_out],
               ],
                3,
                [R03_air_tube_diameter/2 + 0.1, R03_air_tube_diameter/2 + 0.1],
                R03_air_tube_diameter,
                0);
    // Sealing ring extension
    sealing_ring_extension(vlp_x, sensor_y, vlp_y_out, vlp_z_out);
}

module drop_shape(drop_length, draft)
{
    difference()
    {
        resize(newsize=[R03_wide_D + 10, R03_wide_D + 11, 0])
        rotate_extrude($fn = draft ? 20 : 200)
            rotate([0, 180, 90])
                difference()
                {
                    polygon(points = airfoil_data(naca=0050, L =drop_length,
                                                  N=draft ? 50 : 200));
                    square(drop_length);
                }
        // Right bolt
        translate([R03_PCB_width/2 + M3_nut_diameter,
                   R03_wide_D/2, -R03_PCB_height/2])
            rotate([90, 0, 0])
                cylinder (h = R03_wide_D, d = M3_bolt_diameter);
        // Right bolt head
        translate([R03_PCB_width/2 + M3_nut_diameter,
                   R03_wall_thickness + M3_nut_height - M3_bolt_length,
                   -R03_PCB_height/2])
            rotate([90, 0, 0])
                cylinder (h = R03_wide_D,
                          d = M3_nut_diameter);
        // Left bolt
        translate([-R03_PCB_width/2 - M3_nut_diameter,
                   R03_wide_D/2, -R03_PCB_height/2])
            rotate([90, 0, 0])
                cylinder (h = R03_wide_D, d = M3_bolt_diameter);
        // Left bolt head
        translate([-R03_PCB_width/2 - M3_nut_diameter,
                   R03_wall_thickness + M3_nut_height - M3_bolt_length,
                   -R03_PCB_height/2])
            rotate([90, 0, 0])
                    cylinder (h = R03_wide_D,
                              d = M3_nut_diameter);
        // PCB casing - Ceiling is moved 1.5xR03_global_clearance upwards due to
        // problems with bridge printing.
        cable_spacing = 3;
        intersection(){
            union()
            {
                translate([-R03_PCB_width/2 - cable_spacing,
                           -R03_PCB_depth - R03_PCB_connector_overlay - R03_PCB_elevation
                           - 1.5*R03_global_clearance,
                           -R03_PCB_height - R03_PCB_top_rim])
                    cube([R03_PCB_width + 2*cable_spacing,
                          R03_PCB_depth + R03_PCB_connector_overlay + R03_PCB_elevation
                          + 1.5*R03_global_clearance,
                          R03_PCB_height + cable_spacing]);
                translate([-R03_PCB_width/2, 0, -R03_PCB_height - R03_PCB_top_rim])
                    polyhedron
                    (
                        points = [ // 0 = bottom right
                                   [R03_PCB_width + cable_spacing, 0,
                                    -R03_PCB_height*0.1 - cable_spacing],
                                   // 1 = bottom left
                                   [-cable_spacing, 0,
                                    -R03_PCB_height*0.1 - cable_spacing],
                                   // 2 = top right front
                                   [R03_PCB_width + cable_spacing,
                                    -R03_PCB_connector_overlay - R03_PCB_elevation, 0],
                                   // 3 = top left front
                                   [-cable_spacing,
                                    -R03_PCB_connector_overlay - R03_PCB_elevation, 0],
                                   // 4 = top right back
                                   [R03_PCB_width + cable_spacing, 0, 0],
                                   // 5 = top left back
                                   [-cable_spacing, 0, 0],
                                 ],
                        faces = [ [3, 5, 4, 2], // top
                                  [1, 3, 2, 0], // front
                                  [0, 4, 5, 1], // back
                                  [0, 2, 4], // right
                                  [1, 5, 3], // left
                                ]
                    );
            }
            cable_rounding_radius = 3;
            translate([-R03_PCB_width/2 -cable_spacing + cable_rounding_radius, 0,
                       -R03_PCB_height*1.1 - R03_PCB_top_rim - cable_spacing
                       + cable_rounding_radius])
                rotate([90,0,0])
                    minkowski(){
                        cylinder (h = R03_PCB_elevation*3,
                                  r=cable_rounding_radius,
                                  center = true, $fn=100);
                        cube([R03_PCB_width + 2*cable_spacing - 2*cable_rounding_radius,
                              1.1*R03_PCB_height - 2*cable_rounding_radius + 2*cable_spacing,
                              R03_PCB_depth + R03_PCB_connector_overlay + R03_PCB_elevation
                              + 1.5*R03_global_clearance - cable_rounding_radius]);
                    }
        }
    }
}

module sealing_ring_extension(x, sensor_y, pipe_y, z)
{
        translate([x, sensor_y, z])
        {
            rotate([90, 0, 0])
                cylinder (h = R03_sensor_depth,
                          d = R03_sensor_diameter);
            translate([0, abs(sensor_y) - abs(pipe_y), 0])
            {

                rotate([90, 0, 0])
                    cylinder (h = abs(sensor_y) - abs(pipe_y),
                              d1 = R03_air_tube_diameter,
                              d2 = R03_sealing_ring_thickness);
            }
        }
}

module WINDGAUGE03A_R03(draft = true)
{
    difference()
    {
        union()
        {
            // Drop shape - BOTTOM with PCB elevation.
            translate([0, -R03_wide_D/2 - R03_wall_thickness, R03_venturi_tube_height])
            {
                difference()
                {
                    drop_shape(2*R03_wide_D, draft);
                    // TOP cutout
                    translate([-R03_wide_D, -R03_wide_D, -2*R03_wide_D])
                        cube([R03_wide_D*2, R03_wide_D, 2*R03_wide_D]);
                }
                    // PCB elevation
                    translate([-R03_PCB_width/2, 0, -R03_PCB_top_rim])
                        intersection(){
                            polyhedron
                            (
                              points = [ // 0 = top left back
                                         [0, 0, 0],
                                         // 1 = top left front
                                         [0,
                                          -R03_PCB_elevation - R03_PCB_connector_overlay,
                                          0],
                                         // 2 = top right back
                                         [R03_PCB_width, 0, 0],
                                         // 3 = top right front
                                         [R03_PCB_width,
                                          -R03_PCB_elevation - R03_PCB_connector_overlay, 0],
                                         // 4 = bottom right back
                                         [R03_PCB_width, 0, -R03_PCB_height*1.1],
                                         // 5 = bottom right front
                                         [R03_PCB_width, -R03_PCB_elevation,
                                          -R03_PCB_height],
                                         // 6 = bottom left back
                                         [0, 0, -R03_PCB_height*1.1],
                                         // 7 = bottom left front
                                         [0, -R03_PCB_elevation, -R03_PCB_height],
                                         // 8 = bottom left sensor back
                                         [0, 0, -R03_PCB_height/3],
                                         // 9 = bottom left sensor front
                                         [0, -R03_PCB_elevation - R03_PCB_connector_overlay,
                                          -R03_PCB_height/3],
                                         // 10 = bottom right sensor back
                                         [R03_PCB_width, 0, -R03_PCB_height/3],
                                         // 11 = bottom right sensor front
                                         [R03_PCB_width,
                                          -R03_PCB_elevation - R03_PCB_connector_overlay,
                                          -R03_PCB_height/3],
                                         // 12 = top left connector back
                                         [0, 0, -R03_PCB_height/3 * 2],
                                         // 13 = top left connector front
                                         [0, -R03_PCB_elevation, -R03_PCB_height/3 * 2],
                                         // 14 = top right connector back
                                         [R03_PCB_width, 0, -R03_PCB_height/3 * 2],
                                         // 15 = top right connector front
                                         [R03_PCB_width, -R03_PCB_elevation,
                                          -R03_PCB_height/3 * 2],
                                       ],
                                        //
                                        // FRONT:   BACK:
                                        // 1 - 3    0 - 2
                                        // |   |    |   |
                                        // 9   11   |   |
                                        // |   |    |   |
                                        // 13  15   |   |
                                        // |   |    |   |
                                        // 7 - 5    |   |
                                        //          6 - 4
                              faces = [ // top bank
                                        [2, 3, 1, 0],
                                        // right bank
                                        [4, 5, 15, 11, 3, 2],
                                        // bottom bank
                                        [6, 7, 5, 4],
                                        // left bank
                                        [0, 1, 9, 13, 7, 6],
                                        // front top
                                        [9, 1, 3, 11],
                                        // front middle
                                        [13, 9, 11, 15],
                                        // front bottom
                                        [7, 13, 15, 5],
                                        // back
                                        [4, 2, 0, 6],
                                      ]
                            );
                            cable_rounding_radius=3;
                            translate([cable_rounding_radius,0,-R03_PCB_height])
                            {
                              rotate([90,0,0])
                                minkowski(){
                                    cylinder (h = R03_PCB_elevation*3,
                                              r=cable_rounding_radius,
                                              center = true, $fn=100);
                                    cube([R03_PCB_width-2*cable_rounding_radius,
                                          R03_PCB_height-cable_rounding_radius,
                                          R03_PCB_elevation]);
                               }
                            }
                        }
            }

            // Main body
            cylinder (h = R03_venturi_tube_height,
                      d = R03_wide_D + 2*R03_wall_thickness);

            hull()
            {
                hull_bottom = slip_ring_z - S01_prumer_vnitrni/2 - 5
                              - R01_vyska_prekryti_statoru - R04_zavit_vyska;
                translate([0, 0, hull_bottom])
                    cylinder (h = R03_venturi_tube_height - hull_bottom,
                              d = R03_wide_D + 2*R03_wall_thickness);
                translate([0, R03_wide_D/2 + 5, slip_ring_z])
                    rotate([-90, 0, 0])
                        cylinder (h = R01_vyska_prekryti_statoru + R04_zavit_vyska + 0.01,
                                  r = S01_prumer_vnitrni/2 + 3.5*S01_sila_materialu
                                      + 2*R03_global_clearance);
            }

            // Fin holders
            rotate_copy([0, 0, 180])
            difference()
            {
                // Holder
                translate([-R03_fin_holder_width/2, 0, 0])
                    cube([R03_fin_holder_width, R03_fin_holder_depth, R03_fin_holder_height]);
                // Bolt hole
                #translate([-R03_fin_holder_width/2,
                           R03_fin_holder_depth - R03_fin_holder_height/2,
                           R03_fin_holder_height/2])
                    rotate([0, 90, 0])
                        cylinder(h = R03_fin_holder_width, d = M3_bolt_diameter);
                // Nut holes
                #mirror_copy([1, 0, 0])
                    translate([R03_fin_holder_width/2 - M3_nut_height,
                               R03_fin_holder_depth - R03_fin_holder_height/2,
                               R03_fin_holder_height/2])
                        rotate([0, 90, 0])
                            cylinder(h = M3_nut_height, d = M3_nut_diameter, $fn=6);
            }

            // Draft pipes (half transparent)
            if (draft)
                #pipes();
        }

        // Air and cabling pipes cut-out
        if (!draft)
            pipes();

        // Fin cut-out
        translate([-R03_fin_width/2, -R03_fin_holder_depth, 0])
            cube([R03_fin_width, 2*R03_fin_holder_depth, 2*R03_fin_holder_height]);

        // Slip-ring opening
        translate([0, R03_wide_D/2 + 5, slip_ring_z])
            rotate([90, 0, 0])
            {
                WINDGAUGE01A_R06();
                // Cabling bay
                //translate([0, 0, 5])
                //    cylinder (h = 5, r = 10);
            }

        // Waterproofing
        translate([0, R03_wide_D/2 + 5, slip_ring_z])
            rotate([-90, 0, 0])
                cylinder (h = R01_vyska_prekryti_statoru + R04_zavit_vyska + 0.01,
                          r = S01_prumer_vnitrni/2 + 2.5*S01_sila_materialu
                              + 2*R03_global_clearance);

        // Venturi wide in
        translate([0, 0, R03_venturi_tube_height - wide_body_length])
            cylinder (h = wide_body_length, d = R03_wide_D);

        // Venturi intake
        translate([0, 0, wide_body_length + exhaust_length + R03_narrow_D])
            cylinder (h = intake_length, d1 = R03_narrow_D, d2 = R03_wide_D);

        // Venturi narrow
        translate([0, 0, wide_body_length + exhaust_length])
            cylinder (h = R03_narrow_D, d = R03_narrow_D);

        // Venturi exhaust
        translate([0, 0, wide_body_length])
            cylinder (h = exhaust_length, d1 = R03_wide_D, d2 = R03_narrow_D);

        // Venturi wide out
        translate([0, 0, 0])
            cylinder (h = wide_body_length, d = R03_wide_D);

        // Left nut cut-out
       translate([-R03_PCB_width/2 - M3_nut_diameter, -R03_wide_D/2,
                   R03_venturi_tube_height - R03_PCB_height/2])
            rotate([270, 90, 0])
            {
                translate([-M3_nut_diameter/2, 0, 0])
                    cube([M3_nut_diameter, R03_wide_D, M3_nut_height]);
                cylinder(h = M3_nut_height,
                         d = M3_nut_diameter, $fn = 6);
            }

        // Right nut cut-out
        translate([R03_PCB_width/2 + M3_nut_diameter,
                   -R03_wide_D/2 + M3_nut_height,
                   R03_venturi_tube_height - R03_PCB_height/2])
            rotate([90, 90, 0])
            {
                translate([-M3_nut_diameter/2, 0, 0])
                    cube([M3_nut_diameter, R03_wide_D, M3_nut_height]);
                cylinder(h = M3_nut_height,
                         d = M3_nut_diameter, $fn = 6);
            }

        // Balance adjustments shelf
        /*translate([-R03_balance_shelf_width/2, R03_wide_D/2 + R03_wall_thickness,
                   slip_ring_z + S01_prumer_vnitrni/2 + 4*S01_sila_materialu])
            cube([R03_balance_shelf_width, R03_balance_shelf_height,
                  R03_venturi_tube_height]);*/
    }
}

difference()
{
    // If not draft -> move to print position.
    if (!draft)
        WINDGAUGE03A_R03(false);
    else
        WINDGAUGE03A_R03(true);
    // Cut-out cube
    if (draft)
        translate([-R03_wide_D, -R03_venturi_tube_height/2, R03_venturi_tube_height/2 + 28])
            cube([R03_wide_D, R03_venturi_tube_height, R03_venturi_tube_height]);
}

include <../configuration.scad>
use <./lib/naca4.scad>
use <./lib/curvedPipe.scad>
use <WINDGAUGE_R06.scad>

wall_thickness = 1.2;
c_t_b = 4;  // Connection tube diameter
PCB_w = 14;  // PCB width
PCB_h = 36;  // PCB height
PCB_d = 5;  // PCB depth
D = max(PCB_w * 2, PCB_h, PCB_d * 4);  // venturi tube base diameter
//D = 25;  // original venturi base diameter
D_Diaphragm = D/2;
V_h = 150;  // Venturi tube height
Lid_t = 5;  // Drop lid thickness
cbl_d = 3;  // Cable opening diameter
sr_off = 10;  // Slip-ring offset

module fins(outer_r, inner_r, wall, height, count, angle, draft) {
    for (i = [1 : count]) {
        rotate([0, 0, i * 360/count])
        translate([-wall / 2, inner_r, 0])
        difference () {
            cube([wall, outer_r - inner_r, height]);

            color("red")
            translate([-1, 0, height])
            rotate([-angle, 0, 0])
            cube([wall + 2, (outer_r - inner_r) + height, height]);
        }
    }
    inner_points = [ for (i = [0 : count - 1]) [sin(i * 360/count) * (outer_r) , cos(i * 360/count) * (outer_r)]];
    // calculate coordinates of external fins polygon
    vertex_angle = (180*(count-2)) / count;   // angle in external fins polygon corner.
    outer_points = [ for (i = [0 : count - 1]) [sin(i * 360/count) * (outer_r + wall/sin(vertex_angle/2)) , cos(i * 360/count) * (outer_r + wall/sin(vertex_angle/2))]];
    polygon_paths = [ [ for (i = [0 : count-1]) i ], [ for (i = [count : 2*count-1]) i ]];

    echo("outer points = ", outer_points);
    echo("inner points = ", inner_points);
    echo("paths = ", polygon_paths);
    echo("vertex_angle = ", vertex_angle);

    linear_extrude(height = height - (tan(angle)*(outer_r - inner_r)))
        polygon(
            points =  concat(outer_points, inner_points),
            paths = polygon_paths
        );
}

module drop_shape(drop_length, draft)
{
    rotate_extrude($fn = draft ? 10 : 200)
        rotate([0,180,90])
            difference()
            {
                polygon(points = airfoil_data(naca=0050, L =drop_length ,
                                              N=draft ? 50 : 200));
                square(150);
            }
}

module pcb_casing()
{
    translate([-PCB_w/2,-D/2-PCB_d*10,V_h-PCB_h-D/3])
        cube([PCB_w,PCB_d*10,PCB_h]);
}


module WINDGAUGE03A_R03(draft = true)
{
    difference()
    {
        union(){
            // Drop shape - BOTTOM with PCB casing.
            translate([0,-D/2,V_h])
                {
                    difference()
                    {
                        drop_shape(2*D, draft);
                        translate([-D/2,-D/2,-2*D])
                            cube([D,D/2,2*D]);
                    }
                    difference()
                    {
                        translate([0,0,-Lid_t/2])
                            drop_shape(2*D-5, draft);
                    }
                }

            cylinder (h = V_h, d = D + 2*wall_thickness, $fn=draft ? 10 : 100);

            translate([0,0,V_h-3*D])
                hull(){
                    cylinder (h = 3*D, d = D + 2*wall_thickness, $fn=draft ? 10 :100);

                    translate([0,D/2,V_h-sr_off-3*D])
                        rotate([-90,0,0])
                            cylinder (h = R01_vyska_preryti_statoru+R04_zavit_vyska+0.01,
                                      r = S01_prumer_vnitrni/2+4*S01_sila_materialu,
                                      $fn=draft ? 10 :100);
                }

        }
        // Prototyping cut-out cube.
//  |        translate([0,-50,V_h-PCB_h-D/3+PCB_d/2])
//  |            cube([100,100,100]);

        // otvor pro narazeni na slip-ring
        translate([0,D/2,2*V_h-sr_off-6*D])
            rotate([90,0,0])
                WINDGAUGE01A_R06();

        //lem proti vode
        translate([0,D/2,2*V_h-sr_off-6*D])
            rotate([-90,0,0])
                cylinder (h = R01_vyska_preryti_statoru+R04_zavit_vyska+0.01,
                          r = S01_prumer_vnitrni/2+3*S01_sila_materialu,
                          $fn=draft ? 10 :100);

        // Venturi upper opening
        translate([0,0,3*D + D_Diaphragm])
            cylinder (h = D, d1 = D_Diaphragm , d2 = D , $fn=draft ? 10 :100);

        // Venturi middle opening
        translate([0,0,0])
            cylinder (h = 6*D, d = D_Diaphragm , $fn=draft ? 10 :100);

        // Venturi lower opening
        translate([0,0,0])
            cylinder (h = 3*D, d1 = D , d2 = D_Diaphragm , $fn=draft ? 10 :100);


        translate([0,0,3*D + D_Diaphragm + D])
            cylinder (h = 2*D,d = D , $fn=draft ? 10 :100);

        pcb_casing();

        // Cabling
        mid=(D/2 + D_Diaphragm/2)/2;
        d = (D/2 - D_Diaphragm/2)/2;
        cbl_x = 0;
        cbl_y = -mid;
        cbl_z = V_h-PCB_h-D/3+d/2;
        curvedPipe([[cbl_x    , cbl_y-2*mid  , cbl_z],
                    [cbl_x    , cbl_y        , cbl_z],
                    [cbl_x-mid, cbl_y        , cbl_z-10],
                    [cbl_x-mid, cbl_y+mid    , cbl_z-10],
                    [cbl_x-mid, cbl_y+2*mid  , cbl_z-10],
                    [cbl_x    , cbl_y+2*mid  , cbl_z-10],
                    [cbl_x    , cbl_y+4*mid  , cbl_z-10],
                   ],
                    6,
                    [mid/5,mid/1.5,0,mid/1.5,mid/5],
                    d,
                    0);

        //  Venturi upper pipe
        vup_x = 0;
        vup_y = 0;
        vup_z = V_h-D/2.5;
        curvedPipe([[vup_x      ,vup_y    ,vup_z],
                    [vup_x      ,vup_y-D/2.2,vup_z],
                    [vup_x-c_t_b,vup_y-D/2.2,vup_z],
                    [vup_x-c_t_b,vup_y-D,vup_z],
                   ],
                    3,
                    [c_t_b/1.5,c_t_b/1.5],
                    c_t_b,
                    0);

        // Venturi lower pipe
        vlp_x = 0;
        vlp_y = 0;
        curvedPipe([[vlp_x      ,vlp_y          ,3*D + D_Diaphragm/2],
                    [vlp_x      ,vlp_y-D/2+c_t_b,3*D + D_Diaphragm/2],
                    [vlp_x+c_t_b,vlp_y-D/2+c_t_b,V_h-D/2.5],
                    [vlp_x+c_t_b,vlp_y-D/2-1    ,V_h-D/2.5],
                   ],
                    3,
                    [c_t_b/1.5,c_t_b/1.5],
                    c_t_b,
                    0);

    }

    fins(2*D, D/2, wall_thickness, 20, 6, 16);

}

WINDGAUGE03A_R03(draft = true);

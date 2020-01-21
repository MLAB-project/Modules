include <configuration.scad>

parts_separation = 0;

//D02 - Anemometer holder
D02_z0 = 0;
translate([0, 0, D02_z0])
    rotate([0, 0, 0])
        import("../amf/WINDGAUGE_D02.stl");

//S02 - Extender
S02_z0 = D02_z0 + D02_total_height - D02_thread_height + parts_separation;
translate([0, 0, S02_z0])
    rotate([0, 0, 0])
        import("../amf/WINDGAUGE_S02.stl");

//S01 - Bearings holder
S01_z0 = S02_z0 + S01_vyska + parts_separation;
translate([0, 0, S01_z0])
    rotate([180, 0, 0])
        import("../amf/WINDGAUGE_S01.stl");

//R03 - Venturi tube
R03_y0 = -2*R03_venturi_tube_height + R03_slip_ring_offset + 6*R03_wide_D;
R03_z0 = S01_z0 + R03_wide_D/2 + 5 + parts_separation;
translate([0, R03_y0, R03_z0])
    rotate([270, 0, 0])
        import("../amf/WINDGAUGE_R03.stl");

//R04 - PCB lid
R04_y0 = R03_venturi_tube_height + R03_y0 - R03_wide_D/2;
R04_z0 = R03_z0 + R03_wide_D/2 + R03_wall_thickness + parts_separation;
translate([0, R04_y0, R04_z0])
    rotate([0, 0, 0])
        import("../amf/WINDGAUGE_R04.stl");

//R05 - Fin
R05_y0 = (-R03_fin_length/2 - R03_venturi_tube_height/2
          + M3_nut_diameter/2 - parts_separation);
R05_z0 = R03_z0;
translate([0, R05_y0, R05_z0])
    rotate([90, 0, 270])
        import("../amf/WINDGAUGE_R05.stl");

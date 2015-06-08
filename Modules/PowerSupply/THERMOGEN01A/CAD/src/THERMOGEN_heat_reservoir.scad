heatsink_xsize = 50;
heatsink_ysize = 50;
heatsink_zsize = 50;

TEG_xsize = 30;
TEG_ysize = 30;
TEG_zsize = 5;

mount_hole = 3.5;
clearance = 0.175;
sealing_ring_width = 3; 
wall_thickness = 10;

height = heatsink_zsize + wall_thickness;


difference () {
    union (){
        cube([heatsink_xsize+2*wall_thickness,heatsink_ysize+2*wall_thickness,heatsink_zsize+wall_thickness]);          // overal plastic brick
//            cube([heatsink_xsize+2*wall_thickness,heatsink_ysize+2*wall_thickness,heatsink_zsize+wall_thickness]);          // overal plastic brick
    }

    translate ([wall_thickness-clearance, wall_thickness-clearance, wall_thickness-clearance])
        cube([heatsink_xsize+2*clearance, heatsink_ysize+2*clearance, heatsink_xsize+2*clearance]);          // hollow for heat sink and heat storage liquid.

    translate ([((heatsink_xsize+2*wall_thickness)-TEG_xsize)/2 - clearance, ((heatsink_ysize+2*wall_thickness)-TEG_ysize)/2 - clearance, 0])
        cube([TEG_xsize+2*clearance, TEG_ysize+2*clearance, wall_thickness]);          // hollow for the thermoelectric generator

    translate ([wall_thickness, wall_thickness, height-sealing_ring_width])
    union () {
        difference () {
            minkowski() {
                cube([heatsink_xsize-sealing_ring_width/2, heatsink_xsize-sealing_ring_width/2, 5]);          // Rib for o-ring. 
                cylinder(r=wall_thickness/2,h=0.1);
            }

            translate ([sealing_ring_width, sealing_ring_width, 0])
            minkowski() {
                cube([heatsink_xsize+sealing_ring_width/2, heatsink_xsize+sealing_ring_width/2, 5]);          // Rib for o-ring. 
                cylinder(r=wall_thickness/2,h=0.1);
            }
        }
    }
/*
    rotate([0,0,-45])       // hole for top part mounting nut
        translate ([ 0, -y_size/3, thickness/3])    
            cube([6, 3, thickness], center = true);

    rotate([90,0,-45])      // hole for top part mounting screw.
        translate ([ 0, 1.8, 0])    
            cylinder (h = thickness + rim_height, r= mount_hole/2, $fn=20);
*/
}

// Heat reservoir cover

translate ([0, 0, 2*height])
    cube([heatsink_xsize+2*wall_thickness,heatsink_ysize+2*wall_thickness,wall_thickness]);


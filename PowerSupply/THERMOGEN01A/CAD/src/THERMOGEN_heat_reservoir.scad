heatsink_xsize = 51.1;
heatsink_ysize = 51.1;
heatsink_zsize = 45;
heatsink_thickness = 2;

TEG_xsize = 41.1;
TEG_ysize = 41.1;
TEG_zsize = 8;

mount_hole = 3.5;       // mounting screw hole diameter
clearance = 0.2;      // spare clearance for printing tolerances. 
sealing_ring_width = 3;     // width of sealing gab under the cover
wall_thickness = 12;    // thickness of the box wall 
volume_encore = 10;     // space added to the size of internar heatsink

height = heatsink_zsize + TEG_zsize+volume_encore;

module box () {

    difference () {
        union (){
            cube([heatsink_xsize+2*wall_thickness+volume_encore,heatsink_ysize+2*wall_thickness+volume_encore,height]);          // overal plastic brick
    //            cube([heatsink_xsize+2*wall_thickness,heatsink_ysize+2*wall_thickness,heatsink_zsize+wall_thickness]);          // overal plastic brick
        }

        translate ([wall_thickness-clearance+volume_encore/2, wall_thickness-clearance+volume_encore/2, TEG_zsize-clearance])
            cube([heatsink_xsize+2*clearance, heatsink_ysize+2*clearance, heatsink_xsize+2*clearance]);          // hollow for heat sink
        
        translate ([wall_thickness, wall_thickness, TEG_zsize+heatsink_thickness])
            cube([heatsink_xsize+2*clearance+volume_encore, heatsink_ysize+2*clearance+volume_encore, heatsink_xsize+2*clearance+volume_encore]);          // hollow for heat storage liquid.

        translate ([((heatsink_xsize+2*wall_thickness+volume_encore)-TEG_xsize)/2 - clearance, ((heatsink_ysize+2*wall_thickness+volume_encore)-TEG_ysize)/2 - clearance, 0])
            cube([TEG_xsize+2*clearance, TEG_ysize+2*clearance, wall_thickness]);          // hollow for the thermoelectric generator

        translate ([((heatsink_xsize+2*wall_thickness+volume_encore)-TEG_xsize)/2, 0, 0])
            cube([4, wall_thickness+volume_encore, TEG_zsize-1]);          // hollow for the thermoelectric generator
        translate ([((heatsink_xsize+2*wall_thickness+volume_encore)-TEG_xsize)/2 +TEG_xsize-4, 0, 0])
            cube([4, wall_thickness+volume_encore, TEG_zsize-1]);          // hollow for the thermoelectric generator
        
        
        translate ([wall_thickness, wall_thickness, height-sealing_ring_width])
        union () {
            difference () {
                minkowski() {
                    cube([heatsink_xsize+volume_encore, heatsink_xsize+volume_encore, sealing_ring_width]);          // Rib for o-ring. 
                    cylinder(r=wall_thickness/2,h=0.1);
                }

                translate ([sealing_ring_width/2, sealing_ring_width/2, 0])
                minkowski() {
                    cube([heatsink_xsize-sealing_ring_width+volume_encore, heatsink_ysize-sealing_ring_width+volume_encore, sealing_ring_width]);          // Rib for o-ring. 
                    cylinder(r=wall_thickness/2,h=0.1);
                }
            }
        }
        
        translate ([ heatsink_xsize+2*wall_thickness-wall_thickness/3+volume_encore, heatsink_xsize+2*wall_thickness+volume_encore-wall_thickness/3, height-wall_thickness/2])
        {
                translate([-4, -3, -1.5])
                cube([wall_thickness, 6, 3], center = false); // hole for top part mounting nut
                translate([0, 0, 1.8])
                cylinder (h = wall_thickness, r= mount_hole/2, $fn=20); // hole for top part mounting screw.
        }

        translate ([wall_thickness/3, wall_thickness/3, height-wall_thickness/2])
        {
                translate([-8, -3, -1.5])
                cube([wall_thickness, 6, 3], center = false); // hole for top part mounting nut
                translate([0, 0, 1.8])
                cylinder (h = wall_thickness, r= mount_hole/2, $fn=20); // hole for top part mounting screw.
        }
        
        translate ([wall_thickness/3, heatsink_xsize+2*wall_thickness+volume_encore-wall_thickness/3, height-wall_thickness/2])
        {
                translate([-8, -3, -1.5])
                cube([wall_thickness, 6, 3], center = false); // hole for top part mounting nut
                translate([0, 0, 1.8])
                cylinder (h = wall_thickness, r= mount_hole/2, $fn=20); // hole for top part mounting screw.
        }

        translate ([ heatsink_xsize+2*wall_thickness-wall_thickness/3+volume_encore, wall_thickness/3,height-wall_thickness/2])
        {
                translate([-4, -3, -1.5])
                cube([wall_thickness, 6, 3], center = false); // hole for top part mounting nut
                translate([0, 0, 1.8])
                cylinder (h = wall_thickness, r= mount_hole/2, $fn=20); // hole for top part mounting screw.
        }

    }
}



// Heat reservoir cover
module cover (){
    translate ([0, 0, 3*height])
    {
            difference () {

                cube([heatsink_xsize+2*wall_thickness+volume_encore,heatsink_ysize+2*wall_thickness+volume_encore,wall_thickness]);
                
                translate ([ heatsink_xsize+2*wall_thickness-wall_thickness/3+volume_encore, wall_thickness/3,0])
                {
                        cylinder (h = wall_thickness, r= mount_hole/2, $fn=20); // hole for top part mounting screw.
                }
                translate ([wall_thickness/3, wall_thickness/3,0])
                {
                        cylinder (h = wall_thickness, r= mount_hole/2, $fn=20); // hole for top part mounting screw.
                }
                translate ([ heatsink_xsize+2*wall_thickness-wall_thickness/3+volume_encore, heatsink_ysize+2*wall_thickness-wall_thickness/3+volume_encore,0])
                {
                        cylinder (h = wall_thickness, r= mount_hole/2, $fn=20); // hole for top part mounting screw.
                }
                translate ([wall_thickness/3, heatsink_ysize+2*wall_thickness-wall_thickness/3+volume_encore,0])
                {
                        cylinder (h = wall_thickness, r= mount_hole/2, $fn=20); // hole for top part mounting screw.
                }
            }
    }
}

//cover ();
box();
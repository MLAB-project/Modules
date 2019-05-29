include <../parameters.scad>

//variable
length_total = 50;
nut_indentation = 4;

difference(){
    translate([0,0,0])
    cylinder(h = length_total, d = M10_nut_diameter, $fn = 6);

    translate([0,0,length_total-nut_indentation-M5_nut_height])
    cylinder(h = M5_nut_height, d = M5_nut_diameter, $fn = 6);

    translate([0,(M10_nut_diameter/4),nut_indentation+M5_nut_height/2])
    cube([M5_nut_diameter,M10_nut_diameter/2,M5_nut_height],center=true);


    translate([0,0,nut_indentation])
    cylinder(h = M5_nut_height, d = M5_nut_diameter, $fn = 6);

    translate([0,(M10_nut_diameter/4),length_total-nut_indentation-M5_nut_height/2])
    cube([M5_nut_diameter,M10_nut_diameter/2,M5_nut_height],center=true);

    translate([0,0,0])
    cylinder(h = length_total, d = M5_screw_diameter, $fn = 50);


}

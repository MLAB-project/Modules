include <../Parameters.scad>
//minimal length_total is 18

//variable
length_total = 50;
nut_indentation = 4;
inner_diameter = 20;

difference(){
    translate([0,0,0])
        cylinder(h = length_total, d = M10_nut_diameter, $fn = 6);

//nut pocket
    rotate([0,0,30]){
        translate([0,0,length_total-nut_indentation-M5_nut_height])
            cylinder(h = M5_nut_height, d = M5_nut_diameter, $fn = 6);

        translate([0,0,nut_indentation])
            cylinder(h = M5_nut_height, d = M5_nut_diameter, $fn = 6);
        }

//insert nut hole
        translate([0,(M10_nut_diameter/4),nut_indentation+M5_nut_height/2])
            cube([M5_nut_diameter-1.252,M10_nut_diameter/2,M5_nut_height],center=true);

        translate([0,(M10_nut_diameter/4),length_total-nut_indentation-M5_nut_height/2])
            cube([M5_nut_diameter-1.252,M10_nut_diameter/2,M5_nut_height],center=true);

//screw hole
        translate([0,0,0])
            cylinder(h = length_total, d = M5_screw_diameter, $fn = 50);

//inner diameter
    rotate([0,0,30]){
        translate([0,0,nut_indentation+M5_nut_height+1])
            cylinder(h = length_total-nut_indentation*2-M5_nut_height*2-2, d = inner_diameter , $fn = 6);
    }
}

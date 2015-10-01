DISPLAY_height = 100; 
DISPLAY_width = 120; 
DISPLAY_depth = 5; 

FP_width = 234;
FP_height = 125;
thickness = 2;
clearance = 0.75;


difference () {
color("green")
    linear_extrude(height = DISPLAY_depth, scale = 0.98)
        square([FP_width, FP_height], center = true);
    
    translate([30,0,0]){
        cube([DISPLAY_width, DISPLAY_height, DISPLAY_depth+10], center= true);
        cube([DISPLAY_width+5, DISPLAY_height+5, DISPLAY_depth], center= true);
    }
    
    translate([0,61,0])  // center top screw
        cylinder(20, d=10, center=true);

    translate([-100,61,0]) // top left screw.
        cylinder(20, d=10, center=true);

    translate([-115.5,40,0]) // top left screw.
        cylinder(20, d=10, center=true);

    translate([-115.5,-40,0]) // top left screw.
        cylinder(20, d=10, center=true);

    translate([-100,-61,0]) // bottom left screw.
        cylinder(20, d=10, center=true);

    translate([0,-61,0])  // center bottom screw
        cylinder(20, d=10, center=true);

    translate([100,61,0]) // top right screw.
        cylinder(20, d=10, center=true);

    translate([115.5,40,0]) // top right screw.
        cylinder(20, d=10, center=true);

    translate([115.5,-40,0]) // top right screw.
        cylinder(20, d=10, center=true);

    translate([100,-61,0]) // bottom right screw.
        cylinder(20, d=10, center=true);

}
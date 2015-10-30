DISPLAY_height = 101; 
DISPLAY_width = 166; 
DISPLAY_depth = 5.4; 
DISPLAY_visible_height = 91.6; 
DISPLAY_visible_width = 158.6; 


FP_width = 234;
FP_height = 125;
FP_thickness = 7;
clearance = 0.75;

use <./../../../../../Library/Graphics/MLAB_logo.scad>


 difference () {

    difference () {
    color("green")
        linear_extrude(height = FP_thickness, scale = 0.98)
            square([FP_width, FP_height], center = true);
        
        translate([-23,0,DISPLAY_depth/2]){
            translate([(-2.4/2),(4.4/2),0])
                cube([DISPLAY_visible_width, DISPLAY_visible_height, DISPLAY_depth+10], center= true);
            cube([DISPLAY_width, DISPLAY_height, DISPLAY_depth], center= true);
        }
     
        
     // Front metal panel mount holes - not mounting of printed pannel  
     //=====================================   
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
    //=======================================
    //Printed panel mount holes.
    ///////////////////////////////////////////////////////////

        translate([5.5, 52, 0])  // center top screw
            cylinder(20, d=3.5, center=true);

        translate([-107.5, 52, 0]) // top left screw.
            cylinder(20, d=3.5, center=true);

        translate([-5.5, 52 ,0]) // top left screw.
            cylinder(20, d=3.5, center=true);

        translate([107.5, 52,0]) // top left screw.
            cylinder(20, d=3.5, center=true);
            
            
            

        translate([-107.5,5,0]) // center left screw.
            cylinder(20, d=3.5, center=true);

        translate([-107.5,-5,0])  // center left screw
            cylinder(20, d=3.5, center=true);

        translate([107.5,5,0]) // top right screw.
            cylinder(20, d=3.5, center=true);

        translate([107.5,-5,0]) // top right screw.
            cylinder(20, d=3.5, center=true);
            
            

        translate([-107.5, -52,0]) // top right screw.
            cylinder(20, d=3.5, center=true);
        translate([-5.5, -52,0]) // bottom right screw.
            cylinder(20, d=3.5, center=true);
        translate([5.5, -52,0]) // bottom right screw.
            cylinder(20, d=3.5, center=true);
        translate([107.5, -52,0]) // top right screw.
            cylinder(20, d=3.5, center=true);

        // MLAB logo on the side
        
        union (){
            translate ([83,30, 6])  // ODROIDs passive components hole.
                scale(v = [0.2, 0.2, 0.2])
                    MLAB_logo_short();
        }            
            
    }
//    translate([100, 0, 0]) // top right screw.     // crop left or right half of the panel to fit it in printer
    translate([-100, 0, 0]) // top right screw.     // crop left or right half of the panel to fit it in printer
        cube(200, 200,  20, center=true);    
}

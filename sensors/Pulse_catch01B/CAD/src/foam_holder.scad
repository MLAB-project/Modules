module foam() {
    color("Yellow") cube([20,6,20]); 
}

module body() {
    color("Red") cube([30,10,25]); 
}
module intersectionBlock() {
    color("Red") cube([16,20,25]); 
}

//hole 40,64

module hole (){
    color("Red") cylinder (h = 10, r=1.52, center = true, $fn=100);
}
module pad(){
    difference() {
        color("Red") cube([50,10,2.5]);
        translate([4.68,5,0]) hole();
        translate([4.68+(10.16*4),5,0]) hole();        
        }
    }
module frame() {
    color ("red")
    translate([10,0,0])
    union(){
        difference() {
            body();
            translate([5,2,5])foam();        
            translate([5,2,10])foam();        
            translate([7,-5,7])intersectionBlock();
            } 
        translate([-10,0,0]) pad();
        }
}
frame();
//translate([-10,0,0]) pad();
//hole();
//pad();


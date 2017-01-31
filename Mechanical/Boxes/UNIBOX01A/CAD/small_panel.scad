
module body() {
    color("Red") cube([110,55,1]); 
}

module bigFrame() {
    color("Red") cube([53,18,10]); 
}

module smallFrame() {
    color("Red") cube([18,14,10]); 
}

module hole() {
    color("blue") cylinder($fn=20, h=10, r=1.5);
}

module object(){
    difference() {
    body();
    translate([10,17,-5]) bigFrame();
    translate([77,10,-5]) smallFrame();
    translate([4,4,-5]) hole();
    translate([4,51,-5]) hole();
    translate([106,4,-5]) hole();
    translate([106,51,-5]) hole();
    }    
}

object();

/*
difference() {
    cube(30, center=true);
    sphere(20);
}
translate([0, 0, 30]) {
    cylinder(h=40, r=10);
}
    */
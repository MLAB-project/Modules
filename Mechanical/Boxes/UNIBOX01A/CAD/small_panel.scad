height = 1.5;

module body() {
    translate([2,2,0])
        minkowski()
        {
            $fn=30;
            color("Red") cube([110-4,55-4,height/2]); 
            cylinder(r=2,h=height/2);
        }    
}

module bigFrame() {
    color("Red") cube([53,18,10]); 
}

module smallFrame() {
    color("Red") cube([18,14,10]); 
}

module hole() {
        color("blue") cylinder($fn=10, h=10, r=1.6);
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

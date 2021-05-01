$fn = 50;

module LCDBoxHolder(){
	translate([0,5,0])union(){
		translate([-1.5,-10,0]) cube([3,45,2]);
		translate([0,0,2]) cylinder(4,1,1);
		translate([0,31,2]) cylinder(4,1,1);
	}
	difference(){
		translate([0,0,0]) union(){
			hull(){
				translate([7.02,0,6]) rotate([90,0,0]) cylinder(5,10/2,10/2);
				translate([-3.14,0,6]) rotate([90,0,0]) cylinder(5,10/2,10/2);
			}
		}
		translate([0,0,2]) union(){
			translate([7.02,0,4]) rotate([90,0,0]) cylinder(5,3/2,3/2);
			translate([-3.14,0,4]) rotate([90,0,0]) cylinder(5,3/2,3/2);
			translate([7.02,0,4]) rotate([90,0,0]) cylinder(1,6/2,6/2);
			translate([-3.14,0,4]) rotate([90,0,0]) cylinder(1,6/2,6/2);
			translate([7.02,2-5,4]) rotate([90,0,0]) cylinder(2,6/2,6/2, $fn=6);
			translate([-3.14,2-5,4]) rotate([90,0,0]) cylinder(2,6/2,6/2, $fn=6);

		}
	}
}

module LCDBoxHolderAB(){
	translate([0,5,0])union(){
		translate([-1.5,-10,0]) cube([3,45,3]);
		translate([0,0,2]) cylinder(4,1,1);
		translate([0,31,2]) cylinder(4,1,1);
	}
	translate([75,5,0])union(){
		translate([-1.5,-10,0]) cube([3,45,3]);
		translate([0,0,2]) cylinder(4,1,1);
		translate([0,31,2]) cylinder(4,1,1);
	}
	difference(){
		translate([0,0,0]) union(){
			translate([-3.14-5,-5,0]) cube([(3.14+5)+10.16*8+(5-3.14), 5, 6]);
			hull(){
				translate([-3.14+10.16*8,0,6]) rotate([90,0,0]) cylinder(5,10/2,10/2);
				translate([-3.14,0,6]) rotate([90,0,0]) cylinder(5,10/2,10/2);
			}
		}
		for(x = [0:8]){
		translate([0,0,2]) union(){
				translate([-3.14+10.16*x,0,4]) rotate([90,0,0]) cylinder(5,3/2,3/2);
				translate([-3.14+10.16*x,0,4]) rotate([90,0,0]) cylinder(1,6/2,6/2);
				translate([-3.14+10.16*x,2-5,4]) rotate([90,0,0]) cylinder(2,6/2,6/2, $fn=6);
			}
		}
	}
}

//mirror([1,0,0])    LCDBoxHolder();
//translate([-50,0,0]) LCDBoxHolder();

translate([-50,0,0]) LCDBoxHolderAB();
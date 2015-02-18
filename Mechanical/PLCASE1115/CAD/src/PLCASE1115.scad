height = 50;
mount_hole = 3.5;
clear = 0.175;
thickness = 1.2;

$fn=20;

module leg () {
    difference () {
        cylinder(r=MLAB_grid/2 + 0.3,h=legs_height);
        cylinder(r=MLAB_grid/2 - 0.3,h=legs_height);
    }
}

difference () {
    minkowski() {
	    cube([150+thickness/2,110+thickness/2,height+thickness/2]);          // base plastics brick
        cylinder(r=5,h=0.1);
    }
    translate ([thickness, thickness, 0])
        minkowski() {
                cube([150-thickness, 110-thickness, height]);          // hollow
            cylinder(r=5,h=0.1);
        }

    translate ([thickness/2, thickness/2, 0])
        difference () {
            minkowski() {
                    cube([150+clear, 110+clear, 5]);          // hollow for BASE1115
                cylinder(r=5,h=0.1);
            }
            /// TODO Fixing cilinders teeths
        }
}


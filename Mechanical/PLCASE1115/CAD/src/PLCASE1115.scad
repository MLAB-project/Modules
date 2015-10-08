height = 50;
mount_hole = 3.5;
clear = 0.175;
thickness = 1.2;
baseboard_thickness = 2;
teeth_width = 8;
teeth_count = 6;
teeth_size = 1;

$fn=20;

module leg () {
    difference () {
        cylinder(r=MLAB_grid/2 + 0.3,h=legs_height);
        cylinder(r=MLAB_grid/2 - 0.3,h=legs_height);
    }
}
																			// teeth
		for(count = [1:teeth_count]){
			position = 150/(teeth_count+1)*count;
			#translate ([position-teeth_width/2+1,-5+thickness/2,0]) cube([teeth_width-1, teeth_size, 5-baseboard_thickness]);
			translate ([position-teeth_width/2+1,110+5-thickness/2,0]) cube([teeth_width-1, teeth_size, 5-baseboard_thickness]);
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
				cube([150-thickness/2+clear, 110-thickness/2+clear, 5]);          // hollow for BASE1115
				cylinder(r=5,h=0.1);
			}
		}
		for(count = [1:teeth_count]){												// teeth space
			position = 150/(teeth_count+1)*count;
			translate ([position-teeth_width/2,-5-thickness,0]) cube([1,110+10+2*thickness,5]);
			translate ([position+teeth_width/2,-5-thickness,0]) cube([1,110+10+2*thickness,5]);
		}
}

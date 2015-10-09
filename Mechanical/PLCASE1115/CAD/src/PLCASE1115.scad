height = 50;
mount_hole = 3.5;
clear = 0.175;
thickness = 1.2;
baseboard_thickness = thickness;

teeth_width = 8;
teeth_count = 3;
teeth_size = 1;

panel_A_width = 80;
panel_A_height = 45;
panel_A_thickeness = 1;

panel_B_width = 0;				// not implemented yet
panel_B_height = 0;
panel_B_thickeness = 0;

$fn=20;

module leg () {
    difference () {
        cylinder(r=MLAB_grid/2 + 0.3,h=legs_height);
        cylinder(r=MLAB_grid/2 - 0.3,h=legs_height);
    }
}


for(count = [1:teeth_count]){										// teeth
	position = 150/(teeth_count+1)*count;
	translate ([position-teeth_width/2+1,-5+thickness/2,0]) cube([teeth_width-1, teeth_size, 5-baseboard_thickness]);
	translate ([position-teeth_width/2+1,110+5-thickness/2,0]) cube([teeth_width-1, teeth_size, 5-baseboard_thickness]);
	//#translate ([position-teeth_width/2+1,110+5-thickness/2,0]) cylinder(teeth_size, teeth_width);
}


difference () {
	minkowski() {
		cube([150+thickness/2,110+thickness/2,height+thickness/2]);          // base plastics brick
		cylinder(r=5,h=0.1);
	}
	union(){
	
	translate([-5,5+(100-panel_A_width)/2,0])											// Panel A space
		#cube([thickness,panel_A_width,panel_A_height+5]);
	
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
		/*for(count = [1:teeth_count]){												// teeth space
			position = 150/(teeth_count+1)*count;
			translate ([position-teeth_width/2,-5-thickness,0]) cube([1,110+10+2*thickness,5]);
			translate ([position+teeth_width/2,-5-thickness,0]) cube([1,110+10+2*thickness,5]);
		}*/
	}
}



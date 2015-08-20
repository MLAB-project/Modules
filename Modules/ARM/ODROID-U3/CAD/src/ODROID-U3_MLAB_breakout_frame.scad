
pedestal_height = 13;
mount_hole = 3.5;
clear = 0.175;
nut_size = 6.6;

module ramp(width, depth, height) {
    angle = atan(height / depth);
    
    difference () {
        cube([width, depth, height]);
    
        //color("red")
        rotate([angle, 0, 0])
        translate([-1, 0, 0])
        cube([width + 2, depth * 2, height]);
    }
}



difference () {
//        translate ([-1,-16,0])
	cube([50,100,pedestal_height]);

	//mount holes for ODROID U3
	translate ([4.5,4.5 + 76, 1])
        rotate([0,0,90])
            cylinder (h = 6 ,r= nut_size/2 + clear, $fn=6);
    translate ([4.5,4.5 + 76, 2])
        difference () {
            cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);
            translate ([-mount_hole/2,-mount_hole/2, 1.2])
                rotate([27,0,0]) cube([5,50,5]);
        };
    
	translate ([4.5 + 41, 4.5 + 76,1])
        rotate([0,0,90])
            cylinder (h = 6,r= nut_size/2 + clear, $fn=6);
    translate ([4.5 + 41, 4.5 + 76, 2])
        difference () {
            cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);
            translate ([-mount_hole/2,-mount_hole/2, 1.2])
                rotate([27,0,0]) cube([5,50,5]);
        };
        
/// Two holes for other side of ODROID-U3 PCB. 
    translate ([4.5,4.5,0])
        cylinder (h = 6, r= (nut_size+clear)/2, $fn=6);
    translate ([4.5,4.5,6.2])
        cylinder (h = pedestal_height, r= 3.6/2, $fn=10);
    
	translate ([4.5+41,4.5,0])
        cylinder (h = 6, r= (nut_size+clear)/2, $fn=6);
	translate ([4.5+41,4.5,6.2])
        cylinder (h = pedestal_height, r= 3.6/2, $fn=10);

    rotate([30,0,0])
        translate ([12,5.8, -3.0])  // ODROID eMMC adapter pocket 
            cube([25,2,15]);
                
        
// MLAB grid holes
        for (j = [0 : 7], i = [1 : 6]) {
                translate ([4.5 + j*10.16, 4.5 + i*10.16,0])
                cylinder (h = 3, r= (nut_size+clear)/2, $fn=6);
                translate ([4.5 + j*10.16, 4.5 + i*10.16, 3.2])  // one solid layer for slicer (the holes will be pierced on demand )
                cylinder (h = pedestal_height /3, r= mount_hole/2, $fn=10);
                translate ([4.5 + j*10.16, 4.5 + i*10.16, 6.3])
                cylinder (h = 10, r= nut_size/2, $fn=6);
        }

        ////////////////////////////////////
	translate ([4,6, pedestal_height - 4])  // ODROIDs passive components hole. 
	cube([42,27,5]);
	translate ([13, 2 , pedestal_height - 1])  // two small resistors on botom side.
	cube([3,3,5]);
	translate ([22, 30 , pedestal_height - 4])  // USB over voltage protection.
	cube([21,5,5]);
        
        
       	translate ([0, 41 , pedestal_height - 3.5]) // HOLE for ODROD's , SD card and eMMC.
	cube([48,32,5]);
       	translate ([0, 38.5 , pedestal_height - 4.5]) // HOLE for ODROD's jack connector
	cube([15,9,5]);
       	translate ([0, 65 , pedestal_height - 3.5]) // HOLE for ODROD's , SD card and eMMC.
	cube([17,13,5]);

        ////////////////////////////////////////
        
////  lightening central holes
        
	translate ([10,10, 0])  // ODROIDs passive components hole. 
	cube([30,19.5,pedestal_height ]);        
        
	translate ([10,41, 0])  // ODROIDs passive components hole. 
	cube([30,30,pedestal_height ]);        
        
//////   
//      MLAB electrical adapter part
///////
difference () {
 	translate ([8,74.9,pedestal_height - 11])	// Central mount hole
	cube([34,17.1,pedestal_height - 8.5]);
        translate ([25,85.78,0])
        cylinder (h = 30, r= nut_size*0.7, $fn=20);
}

 	translate ([0,84, pedestal_height - 8.5])	// Holes for MLAB's adapter 5V power connector.
	cube([50,20,20]);

 	translate ([42,84,pedestal_height - 11])	// Holes for MLAB's adapter 5V power connector.
	cube([34,8,pedestal_height - 8.5]);

 	translate ([8,92,pedestal_height - 11])	// Holes for MLAB's adapter IO connectors.
	cube([34,8,pedestal_height - 8.5]);

 
	translate ([0,74.9, pedestal_height - 8.5])	// Hole for MLAB  PCB
	cube([50,25.1,2]);
 	translate ([7.5,77,pedestal_height - 8.5])	// Hole For connectors above the adapter PCB
	cube([35.5,17.1,10]);

        translate ([0,74.9, pedestal_height - 6.5])
        ramp(50, 50, 25);
/////// Elecrical adapter PCB mount holes

        translate ([25,85.78,0])
        cylinder (h = 3, r= (nut_size+clear)/2, $fn=6);
        translate ([25,85.78,3.2])
        cylinder (h = pedestal_height + clear,r= mount_hole/2, $fn=10);

        translate ([4.68,85.78 + 10.16,0])
        cylinder (h = 3, r= (nut_size+clear)/2, $fn=6);
        translate ([4.68,85.78 + 10.16,3.2])
        cylinder (h = pedestal_height + clear,r= mount_hole/2, $fn=10);

        translate ([45.32,85.78 + 10.16,0])
        cylinder (h = 3, r= (nut_size+clear)/2, $fn=6);
        translate ([45.32,85.78 + 10.16,3.2])
        cylinder (h = pedestal_height + clear,r= mount_hole/2, $fn=10);

}

/// Support material
/*
        color("Blue",0.5)
	//translate ([0,74.9, pedestal_height - 8.5])	// Hole for MLAB  PCB
	cube([50,70,30]);
*/
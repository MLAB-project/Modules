
pedestal_height = 13;
mount_hole = 3.5;
clear = 0.175;
nut_size = 6.6;

difference () {
//        translate ([-1,-16,0])
	cube([50,100,pedestal_height]);

	//mount holes for ODROID U3
//	translate ([3.5,3.5,5])
//	cylinder (h = pedestal_height + clear,r= mount_hole/2, $fn=10);

	translate ([4.5,4.5 + 76 ,0])
        rotate([0,0,90])
	cylinder (h = pedestal_height ,r= nut_size/2 + clear, $fn=6);

//	translate ([3.5+41,3.5,0])
//	cylinder (h = pedestal_height + clear,r= mount_hole/2, $fn=10);
	translate ([4.5+41,4.5 + 76,0])
        rotate([0,0,90])
	cylinder (h = pedestal_height,r= nut_size/2 + clear, $fn=6);


/// Two holes for other side of ODROID-U3 PCB.  Code is not used because the position of holes is practically identical with position of MLAB holes in grid. 
//        translate ([3.5,3.5+76,0])
//	cylinder (h = pedestal_height + clear,r= mount_hole/2, $fn=10);
//	translate ([3.5+41,3.5+76,0])
//	cylinder (h = pedestal_height + clear,r= mount_hole/2, $fn=10);
 

// MLAB grid holes

        for (i = [0 : 6]) {
            for (j = [0 : 7]) {
                translate ([4.5 + j*10.16, 4.5 + i*10.16,0])
                cylinder (h = 3, r= (nut_size+clear)/2, $fn=6);
                translate ([4.5 + j*10.16, 4.5 + i*10.16, 3.2])  // one solid layer for slicer (the holes will be pierced on demand )
                cylinder (h = pedestal_height /3, r= mount_hole/2, $fn=10);
                translate ([4.5 + j*10.16, 4.5 + i*10.16, 6.3])
                cylinder (h = 10, r= nut_size/2, $fn=6);
            }
        }

        ////////////////////////////////////
	translate ([0, 40 , pedestal_height - 4.5]) // HOLE for ODROD's jack connector, SD card and eMMC.
	cube([48,35,5]);

	translate ([4,6, pedestal_height - 4.5])  // ODROIDs passive components hole. 
	cube([42,27,5]);
        ////////////////////////////////////////
        
////  lightening central holes
        
	translate ([11,11, 0])  // ODROIDs passive components hole. 
	cube([28,19,pedestal_height ]);        
        
	translate ([11,42, 0])  // ODROIDs passive components hole. 
	cube([28,27,pedestal_height ]);        
        
//////   
//      MLAB electrical adapter part
///////
difference () {
 	translate ([8,74.9,pedestal_height - 11])	// Holes for MLAB's adapter connectors.
	cube([34,17.1,20]);
        translate ([25,85.78,0])
        cylinder (h = 30, r= nut_size*0.7, $fn=20);
}

 	translate ([42,84,pedestal_height - 11])	// Holes for MLAB's adapter connectors.
	cube([34,8,20]);

 	translate ([8,92,pedestal_height - 11])	// Holes for MLAB's adapter connectors.
	cube([34,8,20]);

 
	translate ([-2,74.9, pedestal_height - 8.3])	// Hole for MLAB  PCB
	cube([55,25.1,20]);

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



use <./../../../../../Library/Graphics/MLAB_logo.scad>

pedestal_height = 13;   // designed for use the MLAB standard 12mm screws.
mount_hole = 3.5;
clear = 0.175;
nut_size = 6.6;

MLAB_grid_xoffset = 3.6;
MLAB_grid_yoffset = 1.5;

difference () {
//        translate ([-1,-16,0])
	cube([58,87,pedestal_height]);

	//mount holes for ODROID

    translate ([4.5, 4.5,0])
        cylinder (h = 6, r= (nut_size+clear)/2, $fn=6);
    translate ([4.5, 4.5, 6.2])  // one solid layer for slicer (the holes will be pierced on demand )
        cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

    translate ([4.5 + 49, 4.5,0])
        cylinder (h = 6, r= (nut_size+clear)/2, $fn=6);
    translate ([4.5 + 49, 4.5, 6.2])  // one solid layer for slicer (the holes will be pierced on demand )
        cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

    translate ([4.5, 4.5 + 58,0])
        cylinder (h = 6, r= (nut_size+clear)/2, $fn=6);
    translate ([4.5, 4.5 + 58, 6.2])  // one solid layer for slicer (the holes will be pierced on demand )
        cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

    translate ([4.5 + 49, 4.5 + 58,0])
        cylinder (h = 6, r= (nut_size+clear)/2, $fn=6);
    translate ([4.5 + 49, 4.5 + 58, 6.2])  // one solid layer for slicer (the holes will be pierced on demand )
        cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

    ////////////////////////////////////
	translate ([1, 66 , pedestal_height - 4.5]) // HOLE for ODROD's USB and Ethernet connectors
	   cube([54,15.5,5]);

	translate ([15, 14 , pedestal_height - 3.5]) // HOLE for ODROD's Passive components 
	   cube([35.5,46,5]);

	translate ([6, 31.5 , pedestal_height - 3.5]) // eMMc Card 
	   cube([14,20,5]);

	translate ([19, 54 , pedestal_height - 3.5]) // SD Card 
	   cube([30,20,5]);

	translate ([2, 8 , pedestal_height - 1.7]) // IO connector
	   cube([4.5,50.5,5]);

	translate ([37,3, pedestal_height - 3])  // ODROID serial connector 
	   cube([10,2,5]);
    
    rotate([30,0,0])
        translate ([15,5.8, -3.0])  // ODROID eMMC adapter pocket 
            cube([25,2,15]);

    translate ([9,3.5, pedestal_height - 3])  // ODROID IR receiver
	   cube([7.5,2,5]);

    translate ([19,10, pedestal_height - 5])  // Heatsink mount holes
        cylinder (h = 6, r= 3, $fn=10);
    translate ([39,61.6, pedestal_height - 5])  // Heatsink mount holes
        cylinder (h = 6, r= 3, $fn=10);

    ////////////////////////////////////////

// MLAB grid holes

    for (j = [0 : 5], i = [1 : 5]) {
        translate ([MLAB_grid_xoffset + j*10.16, MLAB_grid_yoffset + i*10.16,0])
            cylinder (h = 3, r= (nut_size+clear)/2, $fn=6);
        translate ([MLAB_grid_xoffset + j*10.16, MLAB_grid_yoffset + i*10.16, 3.2])  // one solid layer for slicer (the holes will be pierced on demand )
            cylinder (h = pedestal_height /3, r= mount_hole/2, $fn=10);
        translate ([MLAB_grid_xoffset + j*10.16, MLAB_grid_yoffset + i*10.16, 6.0])
            cylinder (h = 10, r= nut_size/2, $fn=6);
    }

    for (j = [0 : 5], i = [7 : 8]) {
        translate ([MLAB_grid_xoffset + j*10.16, MLAB_grid_yoffset + i*10.16,0])
            cylinder (h = 3, r= (nut_size+clear)/2, $fn=6);
        translate ([MLAB_grid_xoffset + j*10.16, MLAB_grid_yoffset + i*10.16, 3.2])  // one solid layer for slicer (the holes will be pierced on demand )
            cylinder (h = pedestal_height /3, r= mount_hole/2, $fn=10);
        translate ([MLAB_grid_xoffset + j*10.16, MLAB_grid_yoffset + i*10.16, 6.0])
            cylinder (h = 10, r= nut_size/2, $fn=6);
    }

        
        
        
////  lightening central holes
        
	translate ([9,16, 0])  // ODROIDs passive components hole. 
	   cube([40,43,pedestal_height ]);        
        
	translate ([10,67, 0])  // ODROIDs passive components hole. 
	   cube([38,11,pedestal_height ]);        
        
// MLAB logo on the side
    union (){
        translate ([29,0.5, 6.5])  // ODROIDs passive components hole.
            rotate ([90,0,0])
                scale(v = [0.4, 0.4, 0.4])
                    MLAB_logo_long();
    }
}


pedestal_height = 13;   // designed for use the MLAB standard 12mm screws.
mount_hole = 3.5;
clear = 0.175;
nut_size = 6.6;

MLAB_grid_xoffset = 7.36;
MLAB_grid_yoffset = 5.61;
MLAB_grid = 10.16;

ODROID_holes_offset = 5.25;
ODROID_holes_xdistance = 86;
ODROID_holes_ydistance = 82;

difference () {
	cube([96,92.5,pedestal_height]);          // base plastics brick

	//mount holes for ODROID 86x82mm

        translate ([ODROID_holes_offset, ODROID_holes_offset,0])
        cylinder (h = 6, r= (nut_size+clear)/2, $fn=6);
        translate ([ODROID_holes_offset, ODROID_holes_offset, 6.2])  // one solid layer for slicer (the holes will be pierced on demand )
        cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

        translate ([ODROID_holes_offset + ODROID_holes_xdistance, ODROID_holes_offset, 0])
        cylinder (h = 6, r= (nut_size+clear)/2, $fn=6);
        translate ([ODROID_holes_offset + ODROID_holes_xdistance, ODROID_holes_offset, 6.2])  // one solid layer for slicer (the holes will be pierced on demand )
        cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

        translate ([ODROID_holes_offset, ODROID_holes_offset + ODROID_holes_ydistance,0])
        cylinder (h = 6, r= (nut_size+clear)/2, $fn=6);
        translate ([ODROID_holes_offset, ODROID_holes_offset + ODROID_holes_ydistance, 6.2])  // one solid layer for slicer (the holes will be pierced on demand )
        cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

        translate ([ODROID_holes_offset + ODROID_holes_xdistance, ODROID_holes_offset + ODROID_holes_ydistance,0])
        cylinder (h = 6, r= (nut_size+clear)/2, $fn=6);
        translate ([ODROID_holes_offset + ODROID_holes_xdistance, ODROID_holes_offset + ODROID_holes_ydistance, 6.2])  // one solid layer for slicer (the holes will be pierced on demand )
        cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

/////////////////////////////////////////
//      holes for components at the bottom side of the PCB.

	translate ([15.5, 84 , pedestal_height - 3]) // IO connector
	cube([64, 6, 5]);
        
        translate ([3, 9, pedestal_height - 3.5])  // USB connector
	cube([18,33,5]);


        translate ([9, 2.1 , pedestal_height - 3.5]) // HOLE for ODROD's USB and Ethernet connectors
	cube([73,27,5]);

	translate ([66, 0 , pedestal_height - 3.5]) // HOLE for ODROD's Passive components and power wires to MLAB UNIPOWER module. 
	cube([20,79,5]);

	translate ([0, 54 , pedestal_height - 3]) // Jack connectors
	cube([30,28,5]);


	translate ([22, 43 , pedestal_height - 3.5]) // eMMc Card 
	cube([27,18,5]);

        ////////////////////////////////////////

// MLAB grid holes
        grid_list = [for (j = [MLAB_grid_xoffset : MLAB_grid: 90], i = [MLAB_grid_yoffset :MLAB_grid: 95]) if (!(j>80 && i>80) && !(j<10 && i<10) && !(j<10 && i>80) && !(j>80 && i<10) ) [j, i] ];
        for (j = grid_list) {
                translate (concat(j, [0]))
                cylinder (h = 3, r= (nut_size+clear)/2, $fn=6);
                translate (concat(j, [3.2]))  // one solid layer for slicer (the holes will be pierced on demand )
                cylinder (h = pedestal_height /3, r= mount_hole/2, $fn=10);
                translate (concat(j, [6.0]))
                cylinder (h = 10, r= nut_size/2, $fn=6);
        }
        
        
////  lightening central holes
        
	translate ([12.5,10, 0])  
	cube([71,22,pedestal_height ]);        
        
	translate ([12.5,42, 0])  
	cube([71,40,pedestal_height ]);        

}



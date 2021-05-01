
pedestal_height = 13;   // designed for use the MLAB standard 12mm screws.
x_size = 125;
y_size = 74;
mount_hole = 3.5;
//nut_size = 6.8;  //size suitable for PLA material
nut_size = 6.7;  //size suitable for ABS material
clear = 0.175;
MLAB_grid = 10.16;

x_holes = floor((x_size-4) / MLAB_grid);
y_holes = floor((y_size-3) / MLAB_grid);

MLAB_grid_xoffset = (x_size - (x_holes * MLAB_grid))/2;
MLAB_grid_yoffset = (y_size - (y_holes * MLAB_grid))/2;

ODROID_holes_offset = 5.25;
ODROID_holes_xdistance = (117.7+110.5)/2;
ODROID_holes_ydistance = (67.4+59.7)/2;

difference () {
	cube([x_size, y_size ,pedestal_height]);          // base plastics brick

	//mount holes for Galileo

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

	translate ([10, 2 , pedestal_height - 4])
        cube([x_size-21, y_size-5, 5]);

	translate ([5, 10.5, pedestal_height - 4])
        cube([x_size-9, y_size-21, 5]);

	translate ([x_size - 5, 32 , pedestal_height - 4])  // Hole for ICSP connector
        cube([4,11, 5]);

    translate ([96.5, y_size - 2.5 - 1, pedestal_height - 4])  // hole for capacitor at bottom side of the pcb
        cube([5, 2, 5]);

        ////////////////////////////////////////

// MLAB grid holes
        grid_list = [for (j = [MLAB_grid_xoffset : MLAB_grid: x_size], i = [MLAB_grid_yoffset :MLAB_grid: y_size]) 
            if (!(j>(x_size-10) && i>(y_size-10)) && !(j<10 && i<10) && !(j<10 && i>(y_size-10)) && !(j>(x_size-10)  && i<10) ) [j, i] ];
        for (j = grid_list) {
                translate (concat(j, [0]))
                cylinder (h = 3, r= (nut_size+clear)/2, $fn=6);
                translate (concat(j, [3.2]))  // one solid layer for slicer (the holes will be pierced on demand )
                cylinder (h = pedestal_height /3, r= mount_hole/2, $fn=10);
                translate (concat(j, [6.0]))
                cylinder (h = 10, r= nut_size/2, $fn=6);
        }
        
        
////  lightening central holes
        
	translate ([33,3, 0])  
	cube([49,y_size -3 -3,pedestal_height ]);        

 	translate ([12,11, 0])  
	cube([x_size-24,y_size-22,pedestal_height ]);                     
}


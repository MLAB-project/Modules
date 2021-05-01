
pedestal_height = 13;   // designed for use the MLAB standard 12mm screws.
mount_hole = 3.5;
clear = 0.175;
nut_size = 6.6;
inch = 25.4; // dimensions of mesa card are documented in inches therefore a conversion is needed.
MLAB_grid = 10.16;
x_size = 4 * inch;
y_size = 4 * inch;

x_holes = floor((x_size - 10) / MLAB_grid);
y_holes = floor((y_size - 20) / MLAB_grid);

MLAB_grid_xoffset = (x_size - (x_holes * MLAB_grid))/2;
MLAB_grid_yoffset = (y_size - (y_holes * MLAB_grid))/2;

7i90HD_holes_offset = 0.15 * inch;
7i90HD_holes_xdistance = 3.7 * inch;
7i90HD_holes_ydistance = 3.7 * inch;

difference () {
	cube([x_size, y_size,pedestal_height]);          // base plastics brick

	//mount holes for 7i90HD

        translate ([7i90HD_holes_offset, 7i90HD_holes_offset,0])
        cylinder (h = 6, r= (nut_size+clear)/2, $fn=6);
        translate ([7i90HD_holes_offset, 7i90HD_holes_offset, 6.2])  // one solid layer for slicer (the holes will be pierced on demand )
        cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

        translate ([7i90HD_holes_offset + 7i90HD_holes_xdistance, 7i90HD_holes_offset, 0])
        cylinder (h = 6, r= (nut_size+clear)/2, $fn=6);
        translate ([7i90HD_holes_offset + 7i90HD_holes_xdistance, 7i90HD_holes_offset, 6.2])  // one solid layer for slicer (the holes will be pierced on demand )
        cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

        translate ([7i90HD_holes_offset, 7i90HD_holes_offset + 7i90HD_holes_ydistance,0])
        cylinder (h = 6, r= (nut_size+clear)/2, $fn=6);
        translate ([7i90HD_holes_offset, 7i90HD_holes_offset + 7i90HD_holes_ydistance, 6.2])  // one solid layer for slicer (the holes will be pierced on demand )
        cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

        translate ([2.35 * inch, 7i90HD_holes_offset + 7i90HD_holes_ydistance,0])               // middle holes
        cylinder (h = 6, r= (nut_size+clear)/2, $fn=6);
        translate ([2.35 * inch, 7i90HD_holes_offset + 7i90HD_holes_ydistance, 6.2])  // one solid layer for slicer (the holes will be pierced on demand )
        cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

        translate ([2.35 * inch, 7i90HD_holes_offset, 0])               // middle holes
        cylinder (h = 6, r= (nut_size+clear)/2, $fn=6);
        translate ([2.35 * inch, 7i90HD_holes_offset, 6.2])  // one solid layer for slicer (the holes will be pierced on demand )
        cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

        translate ([7i90HD_holes_offset + 7i90HD_holes_xdistance, 7i90HD_holes_offset + 7i90HD_holes_ydistance,0])
        cylinder (h = 6, r= (nut_size+clear)/2, $fn=6);
        translate ([7i90HD_holes_offset + 7i90HD_holes_xdistance, 7i90HD_holes_offset + 7i90HD_holes_ydistance, 6.2])  // one solid layer for slicer (the holes will be pierced on demand )
        cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

/////////////////////////////////////////
//      holes for components at the bottom side of the PCB.

	translate ([0, 17 , pedestal_height - 3]) // RS422 IO connector
	cube([17, 18, 5]);
        
        translate ([1, 42 , pedestal_height - 3]) // W3 jumper
        cube([3, 8, 5]);

        translate ([49, 2 , pedestal_height - 3]) // W6 jumper
        cube([3, 8, 5]);

        translate ([49, 91 , pedestal_height - 3]) // W1 jumper
        cube([3, 8, 5]);

        translate ([57, 18 , pedestal_height - 3]) // P1 jumper
        cube([6, 65, 5]);

        translate ([76, 18 , pedestal_height - 3]) // P2 jumper
        cube([6, 65, 5]);

        translate ([93.5, 18 , pedestal_height - 3]) // P3 jumper
        cube([6, 65, 5]);

        translate ([4, 9 , pedestal_height - 3]) // P7 Power connector
        cube([4, 7, 5]);

        translate ([5, 56 , pedestal_height - 3]) // P4 interface connector
        cube([6, 34, 5]);
        ////////////////////////////////////////

// MLAB grid holes
        grid_list = [for (j = [MLAB_grid_xoffset : MLAB_grid: x_size - MLAB_grid_xoffset], i = [MLAB_grid_yoffset :MLAB_grid: y_size - MLAB_grid_yoffset ])
        if (!(j>10 && i>20 && j<90 && i<90)) // exception for board mount holes
        [j, i] ]; 
        for (j = grid_list) {
                translate (concat(j, [0]))
                cylinder (h = 3, r= (nut_size+clear)/2, $fn=6);
                translate (concat(j, [3.2]))  // one solid layer for slicer (the holes will be pierced on demand )
                cylinder (h = pedestal_height /3, r= mount_hole/2, $fn=10);
                translate (concat(j, [6.0]))
                cylinder (h = 10, r= nut_size/2, $fn=6);
        }
        
        
////  lightening central holes
        
	translate ([11,15, 0])  
	cube([45,72,pedestal_height ]);        
        
//	translate ([12.5,42, 0])  
//	cube([71,40,pedestal_height ]);        

}



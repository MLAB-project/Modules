
pedestal_height = 13;   // designed for use the MLAB standard 12mm screws.
x_size = 87;
y_size = 58;
mount_hole = 3.5;
nut_size = 6.8;
nut_size25 = 6.1;
MLAB_grid = 10.16;

x_holes = floor(x_size / MLAB_grid);
y_holes = floor(y_size / MLAB_grid);

MLAB_grid_xoffset = (x_size - (x_holes * MLAB_grid))/2;
MLAB_grid_yoffset = (y_size - (y_holes * MLAB_grid))/2;

difference () {
	cube([x_size, y_size ,pedestal_height]);          // base plastics brick

	//mount holes for Raspberry Pi model A/B 

        translate ([26.5, 19, 0])
        rotate([0,0,90])
            cylinder (h = 6, r= nut_size25/2, $fn=6);
        translate ([26.5, 19, 6.2])  // one solid layer for slicer (the holes will be pierced on demand )
        cylinder (h = pedestal_height, r= 3.0/2, $fn=30);

        translate ([81, 44.5, 0])
        rotate([0,0,90])
            cylinder (h = 6, r= nut_size25/2, $fn=6);
        translate ([81, 44.5, 6.2])  // one solid layer for slicer (the holes will be pierced on demand )
        cylinder (h = pedestal_height, r= 3.0/2, $fn=30);

        ////////////////////////////////////////

// MLAB grid holes
        grid_list = [for (j = [MLAB_grid_xoffset : MLAB_grid: 86], i = [MLAB_grid_yoffset :MLAB_grid: 55]) 
            if (!(j>20 && i>10 && j<50 && i<50) && !(j>75 && i>40 && j<90 && i<50) ) // exception for Raspberry mount holes
            [j, i] ];
            
        for (j = grid_list) {
                translate (concat(j, [0]))
                cylinder (h = 3, r= nut_size/2, $fn=6);
                translate (concat(j, [3.2]))  // one solid layer for slicer (the holes will be pierced on demand )
                cylinder (h = pedestal_height /3, r= mount_hole/2, $fn=30);
                translate (concat(j, [6.0]))
                cylinder (h = 10, r= nut_size/2, $fn=6);
        }    
    
/////////////////////////////////////////
//      holes for components at the bottom side of the PCB.

   difference () {
	translate ([2, 2 , pedestal_height - 3]) // 
	cube([83, 54, 3]);
	
        translate ([26.5, 19, pedestal_height - 5]) // Raspberry  screw mount pile
        cylinder (h = pedestal_height, r= 4, $fn=20);

        translate ([77, 40.5, pedestal_height - 5]) // Raspberry  screw mount brick
	cube([20,8,5]);
    }
	translate ([0, 14 , pedestal_height - 4]) // SD Card 
	cube([20,30.5,5]);

////  lightening central holes
        
	translate ([8, 8, 0])  
	cube([14.5,y_size - 16,pedestal_height ]);  

        translate ([30.5,8, 0])  
	cube([47, y_size - 16,pedestal_height ]);        
}



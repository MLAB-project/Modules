use <./../../../../../Library/Graphics/MLAB_logo.scad>

pedestal_height = 13;   // designed for use the MLAB standard 12mm screws.
mount_hole = 3.5;
clear = 0.175;
nut_size = 6.6;
MLAB_grid = 10.16;
x_size = 61;
y_size = 85;

x_holes = floor((x_size - 10) / MLAB_grid);
y_holes = floor((y_size - 20) / MLAB_grid);


MLAB_grid_xoffset = (x_size - (x_holes * MLAB_grid))/2;
MLAB_grid_yoffset = (y_size - (y_holes * MLAB_grid))/2;

x_mount_dist = (55 + 49)/2;
y_mount_dist = (79 + 73)/2;

difference () {
	cube([x_size, y_size ,pedestal_height]);          // base plastics brick

	//mount holes for ODROID

        translate ([4.5, 4.5,0])
        cylinder (h = 6, r= (nut_size+clear)/2, $fn=6);
        translate ([4.5, 4.5, 6.2])  // one solid layer for slicer (the holes will be pierced on demand )
        cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

        translate ([4.5 + x_mount_dist, 4.5,0])
        cylinder (h = 6, r= (nut_size+clear)/2, $fn=6);
        translate ([4.5 + x_mount_dist, 4.5, 6.2])  // one solid layer for slicer (the holes will be pierced on demand )
        cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

        translate ([4.5, 4.5 + y_mount_dist,0])
        cylinder (h = 6, r= (nut_size+clear)/2, $fn=6);
        translate ([4.5, 4.5 + y_mount_dist, 6.2])  // one solid layer for slicer (the holes will be pierced on demand )
        cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

        translate ([4.5 + x_mount_dist, 4.5 + y_mount_dist,0])
        cylinder (h = 6, r= (nut_size+clear)/2, $fn=6);
        translate ([4.5 + x_mount_dist, 4.5 + y_mount_dist, 6.2])  // one solid layer for slicer (the holes will be pierced on demand )
        cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

        ////////////////////////////////////

	translate ([3, 7 , pedestal_height - 3.5]) // HOLE for ODROD's Passive components 
	cube([53,73,5]);

	translate ([0, 24 , pedestal_height - 3.5]) // eMMc Card 
	cube([14,17,5]);

	translate ([2, 40 , pedestal_height - 3.5]) // eMMc Card 
	cube([14,10.5,5]);


	translate ([39.5,81, pedestal_height - 3])  // ODROID serial connector 
	cube([10,2,5]);
    
    rotate([30,0,0])
        translate ([27,5.8, -3.0])  // ODROID eMMC adapter pocket 
            cube([25,2,15]);

    translate ([22,4, pedestal_height - 5])  // Heatsink mount holes
    cylinder (h = 6, r= 3, $fn=10);


        ////////////////////////////////////////

// MLAB grid holes

        grid_list = [for (j = [MLAB_grid_xoffset : MLAB_grid: x_size - MLAB_grid_xoffset], i = [MLAB_grid_yoffset :MLAB_grid: y_size - MLAB_grid_yoffset ]) 
            //if (!(j>20 && i>10 && j<50 && i<50) && !(j>75 && i>40 && j<90 && i<50) ) // exception for board mount holes
            [j, i] ];
            
        for (j = grid_list) {
                translate (concat(j, [0]))
                cylinder (h = 3, r= nut_size/2, $fn=6);
                translate (concat(j, [3.2]))  // one solid layer for slicer (the holes will be pierced on demand )
                cylinder (h = pedestal_height /3, r= mount_hole/2, $fn=30);
                translate (concat(j, [6.0]))
                cylinder (h = 10, r= nut_size/2, $fn=6);
        }   

        
        
        
////  lightening central holes
        
	translate ([9,9, 0])  // ODROIDs passive components hole. 
	cube([43,67,pedestal_height ]);          
        
// MLAB logo on the side
    union (){
        translate ([29,0.5, 6.5])  // ODROIDs passive components hole.
            rotate ([90,0,0])
                scale(v = [0.4, 0.4, 0.4])
                    MLAB_logo_long();
    }
}


pedestal_height = 5;   // designed for use the MLAB standard 12mm screws.
mount_hole = 3.5;
clear = 0.175;
nut_size = 6.6;
mil = 25.4/1000;
MLAB_grid = 400*mil;

difference () {
        translate ([-190*mil, -190*mil, 0])
	cube([50.292,70.612,pedestal_height]);

	difference(){
        translate ([-190*mil + 1, -190*mil + 2, 2.5])
            cube([47.292,66.612,pedestal_height]);

        translate ([-190*mil, -190*mil, 0])
            cube([MLAB_grid -10*mil,MLAB_grid -10*mil,pedestal_height]);

        translate ([4*MLAB_grid - 190*mil, -190*mil, 0])
            cube([MLAB_grid -10*mil ,MLAB_grid -10*mil,pedestal_height]);

        translate ([4*MLAB_grid - 190*mil, 6*MLAB_grid -190*mil, 0])
            cube([MLAB_grid -10*mil ,MLAB_grid -10*mil,pedestal_height]);

        translate ([-190*mil, 6*MLAB_grid -190*mil, 0])
            cube([MLAB_grid-10*mil,MLAB_grid-10*mil ,pedestal_height]);
               
                //insulating wall
   		translate ([20-190*mil, -190*mil, 0])
            cube([1,70,pedestal_height]);
   		translate ([22-190*mil, -190*mil, 0])
            cube([1,70,pedestal_height]);        
	}

        ////////////////////////////////////////

// MLAB grid holes

   translate ([0, 0, 0])
   cylinder (h = 3, r= (nut_size+clear)/2, $fn=6);
   translate ([0, 0, 3.2])  // one solid layer for slicer (the holes will be pierced on demand )
   cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

   translate ([4*MLAB_grid, 0, 0])
   cylinder (h = 3, r= (nut_size+clear)/2, $fn=6);
   translate ([4*MLAB_grid, 0, 3.2])  // one solid layer for slicer (the holes will be pierced on demand )
   cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);


   translate ([0, 6*MLAB_grid, 0])
   cylinder (h = 3, r= (nut_size+clear)/2, $fn=6);
   translate ([0, 6*MLAB_grid, 3.2])  // one solid layer for slicer (the holes will be pierced on demand )
   cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

   translate ([4*MLAB_grid, 6*10.16, 0])
   cylinder (h = 3, r= (nut_size+clear)/2, $fn=6);
   translate ([4*MLAB_grid, 6*10.16, 3.2])  // one solid layer for slicer (the holes will be pierced on demand )
   cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

}



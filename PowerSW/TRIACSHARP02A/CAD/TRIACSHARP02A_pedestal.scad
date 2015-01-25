
pedestal_height = 5;   // designed for use the MLAB standard 12mm screws.
mount_hole = 3.5;
clear = 0.175;
nut_size = 6.6;


difference () {
	cube([50.292,70.612,pedestal_height]);

	translate ([1, 1,2.5])
	difference(){
		cube([48.292,68.612,pedestal_height]);

		cube([8,8,pedestal_height]);

   		translate ([48.292 - 8, 0, 0])
		cube([8,8,pedestal_height]);

   		translate ([48.292 - 8, 68.612 - 8, 0])
		cube([8,8,pedestal_height]);

   		translate ([0, 68.612 - 8, 0])
		cube([8,8,pedestal_height]);
	}

        ////////////////////////////////////////

// MLAB grid holes

   translate ([4.572, 4.572,0])
   cylinder (h = 3, r= (nut_size+clear)/2, $fn=6);
   translate ([4.572, 4.572, 3.2])  // one solid layer for slicer (the holes will be pierced on demand )
   cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

   translate ([4.572 + 4*10.16, 4.572,0])
   cylinder (h = 3, r= (nut_size+clear)/2, $fn=6);
   translate ([4.572 + 4*10.16, 4.572, 3.2])  // one solid layer for slicer (the holes will be pierced on demand )
   cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);


   translate ([4.572, 4.572 + 6*10.16, 0])
   cylinder (h = 3, r= (nut_size+clear)/2, $fn=6);
   translate ([4.572, 4.572 + 6*10.16, 3.2])  // one solid layer for slicer (the holes will be pierced on demand )
   cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

   translate ([4.572 + 4*10.16, 4.572 + 6*10.16, 0])
   cylinder (h = 3, r= (nut_size+clear)/2, $fn=6);
   translate ([4.572 + 4*10.16, 4.572 + 6*10.16, 3.2])  // one solid layer for slicer (the holes will be pierced on demand )
   cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);

}



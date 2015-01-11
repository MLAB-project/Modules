
pedestal_height = 12.39;
mount_hole = 3.5;
clear = 0.175;
nut_size = 6.5;

difference () {
        translate ([-1,-1,0])
	cube([50,85,pedestal_height]);

	//mount holes for ODROID U3
//	translate ([3.5,3.5,5])
//	cylinder (h = pedestal_height + clear,r= mount_hole/2, $fn=10);

	translate ([3.5,3.5,0])
        rotate([0,0,90])
	cylinder (h = 5 + clear,r= nut_size/2, $fn=6);

//	translate ([3.5+41,3.5,0])
//	cylinder (h = pedestal_height + clear,r= mount_hole/2, $fn=10);
	translate ([3.5+41,3.5,0])
        rotate([0,0,90])
	cylinder (h = 5 + clear,r= nut_size/2, $fn=6);


/// Two holes for other side of ODROID-U3 PCB.  Code is not used because the position of holes is practically identical with position of MLAB holes in grid. 
//        translate ([3.5,3.5+76,0])
//	cylinder (h = pedestal_height + clear,r= mount_hole/2, $fn=10);
//	translate ([3.5+41,3.5+76,0])
//	cylinder (h = pedestal_height + clear,r= mount_hole/2, $fn=10);
 

// MLAB grid holes

        for (i = [1 : 7]) {
            for (j = [0 : 7]) {
                translate ([3.68 + j*10.16, 10.16-1.78 + i*10.16,0])
                cylinder (h = 2.5, r= (nut_size+clear)/2, $fn=6);
                translate ([3.68 + j*10.16, 10.16-1.78 + i*10.16, 2.7])  // one solid layer for slicer (the holes will be pierced on demand )
                cylinder (h = pedestal_height /3, r= mount_hole/2, $fn=10);
                translate ([3.68 + j*10.16, 10.16-1.78 + i*10.16, 6])
                cylinder (h = 10, r= nut_size/2, $fn=6);
            }
        }


 	translate ([7,-2,0])	// Holes for MLAB's adapter connectors.
	cube([34,11.1,20]);

	translate ([-2,-2, 4.7])	// Hole for MLAB  PCB
	cube([55,11.1,20]);
        
        
        ////////////////////////////////////
	translate ([1,9 , pedestal_height - 4.5]) // HOLE for ODROD's jack connector
	cube([50,35,5]);

	translate ([3,50, pedestal_height - 4.5])
	cube([42,27,5]);


}

pedestal_height = 12.39;
mount_hole = 3.2;
clear = 0.175;

difference () {
        translate ([-1,0,0])
	cube([50,83,pedestal_height]);

	//mount holes
	translate ([3.5,3.5,5])
	cylinder (h = pedestal_height + clear,r= mount_hole/2, $fn=10);
	translate ([3.5,3.5,0])
	cylinder (h = 5 + clear,r= 5.8/2, $fn=6);

	translate ([3.5+41,3.5,0])
	cylinder (h = pedestal_height + clear,r= mount_hole/2, $fn=10);
	translate ([3.5+41,3.5,0])
	cylinder (h = 5 + clear,r= 5.8/2, $fn=6);


//	translate ([3.5,3.5+76,0])
//	cylinder (h = pedestal_height + clear,r= mount_hole/2, $fn=10);
//	translate ([3.5,3.5+76,0])
//	cylinder (h = 3 + clear,r= 5.8/2, $fn=6);


//	translate ([3.5+41,3.5+76,0])
//	cylinder (h = pedestal_height + clear,r= mount_hole/2, $fn=10);
//	translate ([3.5+41,3.5+76,0])
//	cylinder (h = 3 + clear,r= 5.8/2, $fn=6);
    
        for (i = [0 : 7]) {
            for (j = [0 : 7]) {
                translate ([3.68 + j*10.16, 10.16-1.78 + i*10.16,0])
                cylinder (h = 2.5, r= 5.8/2, $fn=6);
                translate ([3.68 + j*10.16, 10.16-1.78 + i*10.16, 2.7])  // one solid layer for slicer (the holes will be pierced on demand )
                cylinder (h = pedestal_height /3, r= mount_hole/2, $fn=10);
                translate ([3.68 + j*10.16, 10.16-1.78 + i*10.16, 6])
                cylinder (h = 10, r= 5.8/2, $fn=6);
            }
        }



	// mechanical holes for odroid componetns
	translate ([6,0, pedestal_height - 6]) // ODROID connectors
	cube([35,6,6.5]);

//	translate ([0,0, pedestal_height - 8])	// Hole for PCB
//	cube([48,9.1,2]);

	translate ([-2,0, pedestal_height - 8])	// Hole for PCB
	cube([55,9.1,20]);
 
	translate ([1,9, pedestal_height - 3])
	cube([46,36,5]);

	translate ([30,9, pedestal_height - 4])
	cube([30,35,5]);

	translate ([30,37, pedestal_height - 4.5]) // HOLE 	for jack connector
	cube([30,7,5]);

	translate ([3,50, pedestal_height - 3])
	cube([42,27,5]);


}
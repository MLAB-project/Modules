
pedestal_height = 2;   // designed for use the MLAB standard 12mm screws.
mount_hole = 3.5;
clear = 0.175;

MLAB_grid_xoffset = 4.2;
MLAB_grid_yoffset = 4.2;
MLAB_grid = 10.16;

legs_height = 5;

$fn=20;

module leg () {
    difference () {
        cylinder(r=MLAB_grid/2 + 0.3,h=legs_height);
        cylinder(r=MLAB_grid/2 - 0.3,h=legs_height);
    }
}

difference () {
    minkowski()
    {
	cube([150,150,pedestal_height]);          // base plastics brick
        cylinder(r=5,h=0.1);
    }
    // MLAB grid holes
    grid_list = [for (j = [MLAB_grid_xoffset : MLAB_grid: 150], i = [MLAB_grid_yoffset :MLAB_grid: 150]) [j, i] ];
    for (j = grid_list) {
            translate (concat(j, [0]))
            cylinder (h = 2*pedestal_height, r= mount_hole/2);
    }
}
/*
translate ([MLAB_grid_xoffset, MLAB_grid_yoffset, 2])
leg(); 

translate ([MLAB_grid_xoffset + 14*MLAB_grid, MLAB_grid_yoffset, 2])
leg(); 

translate ([MLAB_grid_xoffset + 14*MLAB_grid, MLAB_grid_yoffset + 10*MLAB_grid, 2])
leg(); 

translate ([MLAB_grid_xoffset + 7*MLAB_grid, MLAB_grid_yoffset + 5*MLAB_grid, 2])
leg(); 

translate ([MLAB_grid_xoffset, MLAB_grid_yoffset + 10*MLAB_grid, 2])
leg(); 
*/
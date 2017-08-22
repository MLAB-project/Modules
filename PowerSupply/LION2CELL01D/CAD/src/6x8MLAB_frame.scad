
x_holes = 6;
y_holes = 8;
pedestal_height = 9;   // designed for use the MLAB standard 20mm screws.

MLAB_grid = 10.16;
thickness = 1;          // thickness of bottom belt
pile_radius = 4;        // radius of pile around screw
x_size = x_holes * MLAB_grid ;
y_size = y_holes * MLAB_grid ;
mount_hole = 3.5;
//nut_size = 6.8;  //size suitable for PLA material
nut_size = 6.7;  //size suitable for ABS material
clear = 0.175;





MLAB_grid_xoffset = MLAB_grid/2;
MLAB_grid_yoffset = MLAB_grid/2;

grid_list = [for (j = [MLAB_grid_xoffset : MLAB_grid: x_size], i = [MLAB_grid_yoffset :MLAB_grid: y_size]) 
if ((j>(x_size-10) && i>(y_size-10)) || (j<10 && i<10) || (j<10 && i>(y_size-10)) || (j>(x_size-10) && i<10) ) [j, i] ];


//------------ Safety grid parameters---------------------------

nY = 8;
nX = 6;


meshX=x_size-4*pile_radius;
meshY=y_size-4*pile_radius;

// width of solid part of grid
meshSolid=1.2;

meshSpaceX = (meshX - meshSolid*nX)/nX;
meshSpaceY = (meshY - meshSolid*nY)/nY;


difference () {
    union () {
        for (j = grid_list) {
            translate (concat(j, [0]))
            cylinder (h = pedestal_height, r= pile_radius, $fn=20);
        }

            translate ([MLAB_grid_xoffset , MLAB_grid_yoffset , 0])
                minkowski() {
                cube([x_size - 2*(MLAB_grid/2 - pile_radius) - 2*pile_radius, y_size - 2*(MLAB_grid/2 - pile_radius) - 2*pile_radius, thickness]);          // base plastics brick
                cylinder(r=pile_radius,h=0.1);
            }
    }
    
    translate ([2*pile_radius, 2*pile_radius, 0]) // central hole in module support
        cube([x_size-4*pile_radius, y_size-4*pile_radius, 2*thickness]);          

    // MLAB grid holes
    for (j = grid_list) {
            translate (concat(j, [0]))
            cylinder (h = 3, r= (nut_size+clear)/2, $fn=6);
            translate (concat(j, [3.2]))  // one solid layer for slicer (the holes will be pierced on demand )
            cylinder (h = pedestal_height, r= mount_hole/2, $fn=10);
    }    


}

translate ([2*pile_radius, 2*pile_radius, 0]) // central hole in module support
    union()
    {
        for (i=[1:nX-1]) {
                 translate([i*(meshSolid+meshSpaceX) - meshSolid/2,0,0]) cube(size=[meshSolid, meshY, thickness],center=false);
        }

        for (i=[1:nY-1]) {
                translate([0,i*(meshSolid+meshSpaceY) - meshSolid/2,0]) cube(size=[meshX, meshSolid, thickness],center=false);

        }
    }


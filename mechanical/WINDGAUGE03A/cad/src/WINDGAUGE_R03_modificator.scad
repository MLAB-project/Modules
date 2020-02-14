include <../configuration.scad>
use <./lib/naca4.scad>
use <./lib/curvedPipe.scad>
use <./lib/copyFunctions.scad>
use <WINDGAUGE_R06.scad>

draft = true;
$fn = draft ? 20 : 100;
slip_ring_z = 2*R03_venturi_tube_height - R03_slip_ring_offset - 6*R03_wide_D;
// length of tube narrowing part
intake_length = ((R03_wide_D - R03_narrow_D) / 2) / tan(23 / 2);
// length of tube widening part
exhaust_length = ((R03_wide_D - R03_narrow_D) / 2) / tan(15 / 2);
// length of wide tube part on bottom and top
wide_body_length = (R03_venturi_tube_height - intake_length - exhaust_length
                    - R03_narrow_D) / 2;

module WINDGAUGE03A_R03_modificator(draft = true)
{
  translate([-2*R03_wide_D, -2*R03_wide_D, slip_ring_z])
      cube([4*R03_wide_D, 4*R03_wide_D, 2*R03_wide_D]);
}


// weight ballancing modificator
WINDGAUGE03A_R03_modificator();

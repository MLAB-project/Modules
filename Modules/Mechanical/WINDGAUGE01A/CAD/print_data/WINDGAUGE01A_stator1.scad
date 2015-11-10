
use <../configuration/stator1.scad>


include <../configuration.scad>



color("cyan")
translate([0,0,stator1_sila/2])

stator1(stator1_sila,lozisko_prumer_vnejsi,sirka_matky,lozisko_prumer_vnitrni,lozisko_prekryv,prumer_sroubu);




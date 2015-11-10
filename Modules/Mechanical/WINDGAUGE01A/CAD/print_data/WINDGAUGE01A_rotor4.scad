
use <../configuration/rotor3.scad>

include <../configuration.scad>

barva_rotor4 = "yellow";





color(barva_rotor4)
translate([0,0,(vyska_pod_magnetem+magnet_zapusteni)/2])
rotate(a = [0, 0, 0]) 
rotor4 (vyska_pod_magnetem,magnet_zapusteni,magnet_prumer,vyska_hlavy_sroubu,prumer_hlavy_sroubu,prumer_sroubu);




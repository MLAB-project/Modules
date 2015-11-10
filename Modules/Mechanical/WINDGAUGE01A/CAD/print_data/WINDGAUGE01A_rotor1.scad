use <../configuration/rotor1.scad>


include <../configuration.scad>



barva_rotor1 = "cyan";



color(barva_rotor1)
translate([0,0,(vyska_rotoru1-hloubka_prekryti)/2+hloubka_prekryti])
rotate(a = [180, 0, 0]) 
rotor1(prumer_rotoru1,vyska_rotoru1,prumer_sroubu,vyska_matky,prumer_orechu,sila_materialu,sila_materialu_vule,hloubka_prekryti,hloubka_uchytu,sila_uchytu,vyska_uchytu,tolerance_uchytu);



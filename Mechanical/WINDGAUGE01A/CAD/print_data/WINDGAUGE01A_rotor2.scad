
use <../configuration/rotor2.scad>


include <../configuration.scad>



barva_rotor2 = "red";







color(barva_rotor2)
translate([0,0,vyska_rotoru2/2])
rotate(a = [180, 0, 0]) 
rotor2 (vyska_rotoru2,prumer_rotoru1,vyska_kryti,sila_materialu,stator1_sila,vyska_matky,vzdalenost_rot_stat,lozisko_prumer_vnitrni,lozisko_prekryv,sila_pod_loziskem,delka_hridele,lozisko_vyska,sirka_matky_tol,sirka_matky,hloubka_uchytu,vyska_rotoru1,prumer_sroubu,vyska_matky,prumer_orechu,vzdalenost_rot_stat2,sirka_matky_tol);

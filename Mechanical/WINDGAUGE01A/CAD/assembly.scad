use <configuration/rotor1.scad>
use <configuration/rotor2.scad>
use <configuration/rotor3.scad>
use <configuration/stator1.scad>
use <configuration/stator2.scad>
use <configuration/stator3.scad>
use <configuration/stator4.scad>
use <configuration/lopatky.scad>
use <configuration/kryt_rotoru.scad>

include <configuration.scad>



barva_rotor1 = "cyan";
barva_rotor2 = "red";
barva_rotor3 = "green";
barva_rotor4 = "yellow";

posunuti_dilu=0; //posunuti dilu od sebe


translate([0,0,posunuti_dilu*4+(vyska_rotoru1-hloubka_prekryti)/2+vyska_uchytu+tolerance_uchytu+vyska_rotoru2])
kryt_rotoru(prumer_rotoru1,sila_materialu,prumer_sroubu);



color(barva_rotor1)

translate([0,0,posunuti_dilu*3+(vyska_rotoru1-hloubka_prekryti)/2+vyska_uchytu+tolerance_uchytu+vyska_rotoru2/2])
rotor1(prumer_rotoru1,vyska_rotoru1,prumer_sroubu,vyska_matky,prumer_orechu,sila_materialu,sila_materialu_vule,hloubka_prekryti,hloubka_uchytu,sila_uchytu,vyska_uchytu,tolerance_uchytu);


color(barva_rotor2)
translate([0,0,0])
rotor2 (vyska_rotoru2,prumer_rotoru1,vyska_kryti,sila_materialu,stator1_sila,vyska_matky,vzdalenost_rot_stat,lozisko_prumer_vnitrni,lozisko_prekryv,sila_pod_loziskem,delka_hridele,lozisko_vyska,sirka_matky_tol,sirka_matky,hloubka_uchytu,vyska_rotoru1,prumer_sroubu,vyska_matky,prumer_orechu,vzdalenost_rot_stat2,sirka_matky_tol);


color(barva_rotor3)
translate([0,0,-posunuti_dilu*3-(vyska_rotoru2/2+vyska_matky+vzdalenost_rot_stat+stator1_sila+(lozisko_vyska+sila_pod_loziskem)+((sila_pod_loziskem+delka_hridele+2)/2)-sila_pod_loziskem)])


rotor3 (sila_pod_loziskem,delka_hridele,lozisko_prumer_vnitrni,lozisko_prekryv);

color(barva_rotor4)
translate([0,0,-posunuti_dilu*4-(vyska_rotoru2/2+vyska_matky+vzdalenost_rot_stat+stator1_sila+(lozisko_vyska+sila_pod_loziskem)+((sila_pod_loziskem+delka_hridele+2))-sila_pod_loziskem+(vyska_pod_magnetem+magnet_zapusteni)/2)])
rotate(a = [0, 180, 0]) 
rotor4 (vyska_pod_magnetem,magnet_zapusteni,magnet_prumer,vyska_hlavy_sroubu,prumer_hlavy_sroubu,prumer_sroubu);







color(barva_rotor3)
translate([0,0,-posunuti_dilu-(vyska_rotoru2/2+vyska_matky+vzdalenost_rot_stat+stator1_sila/2)])

stator1(stator1_sila,lozisko_prumer_vnejsi,sirka_matky,lozisko_prumer_vnitrni,lozisko_prekryv,prumer_sroubu);



//stator2
color(barva_rotor3)
translate([0,0,-posunuti_dilu*2-(vyska_rotoru2/2+vyska_matky+vzdalenost_rot_stat+stator1_sila+(lozisko_vyska+sila_pod_loziskem)/2)])

stator2(lozisko_vyska,sila_pod_loziskem,prumer_rotoru1,sila_materialu,vule1,stator3_sila_steny,lozisko_prumer_vnejsi,lozisko_prumer_vnitrni,lozisko_prekryv,
prumer_sroubu,
lozisko_vyska,vzdalenost_der_x,vzdalenost_der_y,vyska_hlavy_sroubu,prumer_hlavy_sroubu,prumer_rotoru1,stator3_vzdalenost_od_steny);


color(barva_rotor3)
translate([0,0,-posunuti_dilu*6-(vyska_rotoru2/2+vyska_matky+vzdalenost_rot_stat+stator1_sila+stator3_vyska/2)])
stator3(stator3_vyska,prumer_rotoru1,lozisko_vyska,sila_pod_loziskem,sila_materialu,vule1,stator3_sila_steny,stator3_vyska_prekryti,prumer_hlavy_sroubu,stator3_vzdalenost_od_steny,lozisko_vyska,prumer_sroubu,roztec_sroubu,uchyt_prumer_sroubu);


//stator4

translate([0,0,-posunuti_dilu*7-(vyska_rotoru2/2+vyska_matky+vzdalenost_rot_stat+stator1_sila+stator3_vyska+vyska_stator4/2)])
rotate(a = [180, 0, 0])
stator4 (roztec_sroubu,uchyt_prumer_sroubu,vyska_stator4,sila_materialu,uchyt_vyska_matky,uchyt_prumer_orechu,kabel_prumer);


//lopatky

//lopatka 1
rotate(a = [0, 0, 90])
translate([sila_uchytu/2,-prumer_lopatky/2-delka_uchytu_lopatky-hloubka_uchytu-prumer_rotoru1/2+hloubka_uchytu,posunuti_dilu+vyska_rotoru2/2+vyska_uchytu/2])

lopatka(hloubka_uchytu,sila_uchytu,vyska_uchytu,tolerance_uchytu,prumer_lopatky,sila_materialu_lopatky,delka_uchytu_lopatky,hrana_uchytu_lopatky,prumer_rotoru1,prumer_sroubu);

//lopatka 2
rotate(a = [0, 0, 210])
translate([sila_uchytu/2,-prumer_lopatky/2-delka_uchytu_lopatky-hloubka_uchytu-prumer_rotoru1/2+hloubka_uchytu,posunuti_dilu+vyska_rotoru2/2+vyska_uchytu/2])

lopatka(hloubka_uchytu,sila_uchytu,vyska_uchytu,tolerance_uchytu,prumer_lopatky,sila_materialu_lopatky,delka_uchytu_lopatky,hrana_uchytu_lopatky,prumer_rotoru1,prumer_sroubu);

//lopatka 3
rotate(a = [0, 0, 330])
translate([sila_uchytu/2,-prumer_lopatky/2-delka_uchytu_lopatky-hloubka_uchytu-prumer_rotoru1/2+hloubka_uchytu,posunuti_dilu+vyska_rotoru2/2+vyska_uchytu/2])

lopatka(hloubka_uchytu,sila_uchytu,vyska_uchytu,tolerance_uchytu,prumer_lopatky,sila_materialu_lopatky,delka_uchytu_lopatky,hrana_uchytu_lopatky,prumer_rotoru1,prumer_sroubu);





//SLOUPKY
//------------------------------------------------------------
//sloupek 1

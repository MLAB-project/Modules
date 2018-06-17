$fn=40; // model faces resolution.
include <../configuration.scad>

include <polyScrewThread_r1.scad>

//Držák na konektor RJ11

S03_mezera_pod_modulem = 3;
sloupek_hloubka = 5; 
sloupek_sirka = 10;
drazka_hloubka = 2;
drazka_sirka = 5;

PI=3.141592;
module WINDGAUGE02A_S03()
    {
    difference()
        {
        translate([0,0,0])
            cylinder (h = S01_sila_drzaku_RJ11, r=(S01_prumer_vnitrni)/2-S01_hloubka_zavitu/2-0.3, $fn=100); 
            
        translate([0,0,S01_sila_drzaku_RJ11/2])           
            cube([S01_hrana_A_RJ11,S01_hrana_B_RJ11,S01_sila_drzaku_RJ11+0.01],center=true);

        //otvor až ke kraji
        translate([0,((S01_prumer_vnitrni)/2-S01_hloubka_zavitu/2+0.5)/2,S01_sila_drzaku_RJ11/2])
            cube([S01_hrana_A_RJ11,(S01_prumer_vnitrni)/2-S01_hloubka_zavitu/2+0.5,S01_sila_drzaku_RJ11+0.01],center=true);
        }
        
        // desticka pro pridelani modulu..
     difference(){
         translate([-senzor_sirka/2, -10, S01_sila_drzaku_RJ11])
            cube([senzor_sirka,3,S03_mezera_pod_modulem+senzor_delka]);
         
         translate([-(S01_hrana_A_RJ11+3)/2, -10, S01_sila_drzaku_RJ11])
            cube([S01_hrana_A_RJ11+3,3,S03_mezera_pod_modulem]);
         
         translate([10.16, 0, S01_sila_drzaku_RJ11+10.16*0.5+S03_mezera_pod_modulem])
            rotate([90, 0, 0]) cylinder(d=prumer_sroubu, h=50);
         translate([-10.16, 0, S01_sila_drzaku_RJ11+10.16*0.5+S03_mezera_pod_modulem])
            rotate([90, 0, 0]) cylinder(d=prumer_sroubu, h=50);
         translate([10.16, 0, S01_sila_drzaku_RJ11+10.16*3.5+S03_mezera_pod_modulem])
            rotate([90, 0, 0]) cylinder(d=prumer_sroubu, h=50);
         translate([-10.16, 0, S01_sila_drzaku_RJ11+10.16*3.5+S03_mezera_pod_modulem])
            rotate([90, 0, 0]) cylinder(d=prumer_sroubu, h=50);
         }
     difference(){
         translate([-sloupek_sirka/2, -10-sloupek_hloubka, S01_sila_drzaku_RJ11])
            cube([sloupek_sirka, sloupek_hloubka ,S03_mezera_pod_modulem+senzor_delka]);
         
         translate([-drazka_sirka/2, -10-sloupek_hloubka*2+drazka_hloubka, S01_sila_drzaku_RJ11])
            cube([drazka_sirka, sloupek_hloubka ,S03_mezera_pod_modulem+senzor_delka+0.3]);
        
     }

    }

// Kontrolni valec. Vse jim musi projit
//#% cylinder(h=S01_vyska, d=(S01_prumer_vnitrni)-1-1.5*S01_hloubka_zavitu);
  
WINDGAUGE02A_S03(); 


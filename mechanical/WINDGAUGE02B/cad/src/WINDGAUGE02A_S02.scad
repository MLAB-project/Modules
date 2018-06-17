$fn=100; // model faces resolution.
include <../configuration.scad>
include <polyScrewThread_r1.scad>

PI=3.141592;

//Hlavní válec

WINDGAUGE02A_S02();

module WINDGAUGE02A_S02()
{
    difference()
    {            
        union() 
        {           
            //základní válec
            cylinder (h = S01_prechod_vyska, r=(S01_prumer_vnitrni)/2+S01_sila_materialu, $fn=100);
            cylinder (h = S01_vyska, r=(S01_prumer_vnitrniB)/2+S01_sila_materialu, $fn=100);
            translate([0,0,S01_prechod_vyska])
                cylinder (h = S01_prechod_delka, r1=(S01_prumer_vnitrni)/2+S01_sila_materialu, r2=(S01_prumer_vnitrniB)/2+S01_sila_materialu, $fn=100);

        }
        
        //horní závit
        translate([0,0,S01_vyska-S01_vyska_horni_zavit])
            screw_thread(S01_prumer_vnitrniB,S01_hloubka_zavitu,55,S01_vyska_horni_zavit+5,PI/2,2);     
       
        //otvor na drzak rj11            
        translate([0,0,S01_vyska_spodniho_zavitu+S01_sila_drzaku_RJ11-0.3])
            cylinder(  2*S01_sila_drzaku_RJ11, d1=(S01_prumer_vnitrni)-1-1.5*S01_hloubka_zavitu,d2=(S01_prumer_vnitrni), $fn=100);
        
        translate([0,0,S01_vyska_spodniho_zavitu])
            cylinder (h = S01_sila_drzaku_RJ11-0.3, r=(S01_prumer_vnitrni)/2-S01_hloubka_zavitu/2+0.5, $fn=100); 
         
        //spodní závit
        translate([0,0,-5])
            screw_thread((S01_prumer_vnitrni),S01_hloubka_zavitu,55,S01_vyska_spodniho_zavitu+5+0.01,PI/2,2); 

        //otvor skrz
        otvor_a = S01_vyska_spodniho_zavitu+3*S01_sila_drzaku_RJ11-0.3;
        translate([0,0, otvor_a])
            cylinder (h = S01_prechod_vyska-(otvor_a), r=(S01_prumer_vnitrni)/2, $fn=100);       
        translate([0,0, S01_prechod_vyska])
            cylinder (h = S01_prechod_delka, d1=S01_prumer_vnitrni, d2=S01_prumer_vnitrniB, $fn=100);       
              
            cylinder (h = S01_vyska-S01_vyska_horni_zavit, r=(S01_prumer_vnitrniB)/2, $fn=100);       
        
    } 
} 

























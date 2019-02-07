$fn=40; // model faces resolution.
include <../configuration.scad>
include <./lib/polyScrewThread_r1.scad>

PI=3.141592;

//Hlavní válec

WINDGAUGE01A_S02();

module WINDGAUGE01A_S02()
{
    difference()
    {            
        union() 
        {           
            //základní válec
            cylinder (h = S01_vyska, r=(S01_prumer_vnitrni)/2+S01_sila_materialu, $fn=100);

            

        }
        
        //horní závit
        translate([0,0,S01_vyska-S01_vyska_horni_zavit])
            screw_thread(S01_prumer_vnitrni,S01_hloubka_zavitu,55,S01_vyska_horni_zavit+5,PI/2,2);     
       
        //otvor na drzak rj11            
        translate([0,0,S01_vyska_spodniho_zavitu+S01_sila_drzaku_RJ11-0.3])
            cylinder(  2*S01_sila_drzaku_RJ11, d1=(S01_prumer_vnitrni)-1-1.5*S01_hloubka_zavitu,d2=(S01_prumer_vnitrni)  );
        
        translate([0,0,S01_vyska_spodniho_zavitu])
            cylinder (h = S01_sila_drzaku_RJ11-0.3, r=(S01_prumer_vnitrni)/2-S01_hloubka_zavitu/2+0.5, $fn=100); 
         
        //spodní závit
        translate([0,0,-5])
            screw_thread((S01_prumer_vnitrni),S01_hloubka_zavitu,55,S01_vyska_spodniho_zavitu+5+0.01,PI/2,2); 

        //otvor skrz
        translate([0,0,S01_vyska_spodniho_zavitu+3*S01_sila_drzaku_RJ11-0.3])
            cylinder (h = S01_vyska-S01_vyska_horni_zavit-(S01_vyska_spodniho_zavitu+3*S01_sila_drzaku_RJ11-0.3), r=(S01_prumer_vnitrni)/2, $fn=100);       
        
    } 
} 

























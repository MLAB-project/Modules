$fn=40; // model faces resolution.
include <../configuration.scad>


include <./lib/polyScrewThread_r1.scad>

PI=3.141592;

//Držák anemometru

module WINDGAUGE01A_D02()
{
difference()
    {
    union()  
        { 
          
        //zavit
        translate([0,0,D01_material_pod_zavitem])       
            screw_thread(S01_prumer_vnitrni-S01_tolerance_zavit,4,55,S01_vyska_spodniho_zavitu,PI/2,2);            

        //spodní valec
        translate([0,0,D01_material_pod_zavitem/2])
            cylinder (h = D01_material_pod_zavitem, r=(S01_prumer_vnitrni-S01_tolerance_zavit+D01_material_pred_zavitem*2)/2, center = true, $fn=100);


      //spodní část držáku
      translate([0,0,-(D01_vyska_spodni_casti_drzaku-D01_sila_setny_spodniho_drzaku)])    
  cylinder(h=D01_vyska_spodni_casti_drzaku-D01_sila_setny_spodniho_drzaku, r1=D01_polomer_zakladny, r2=(S01_prumer_vnitrni-S01_tolerance_zavit+D01_material_pred_zavitem*2)/2, center=false, $fn=100); 
      
     translate([0,0,-D01_vyska_spodni_casti_drzaku])
            cylinder (h = D01_sila_setny_spodniho_drzaku,r=D01_polomer_zakladny, center = false, $fn=100); 


      
           

        }

    //otvor
    translate([0,0,(D01_material_pod_zavitem+S01_vyska_spodniho_zavitu)/2])
        cylinder (h = D01_material_pod_zavitem+S01_vyska_spodniho_zavitu+0.02, r=((S01_prumer_vnitrni-S01_tolerance_zavit)-2*D01_material_za_zavitem)/2, center = true, $fn=100);

translate([0,0,-(D01_vyska_spodni_casti_drzaku-D01_sila_setny_spodniho_drzaku)])    
  cylinder(h=D01_vyska_spodni_casti_drzaku-D01_sila_setny_spodniho_drzaku, r1=D01_polomer_zakladny-D01_sila_setny_spodniho_drzaku, r2=(S01_prumer_vnitrni-S01_tolerance_zavit+D01_material_pred_zavitem*2)/2-D01_sila_setny_spodniho_drzaku, center=false, $fn=100);


    }
}
 difference()
    {
WINDGAUGE01A_D02();
        translate([0,0,-50])  
cube(100,false);
}
    
  

$fn=100; // model faces resolution.
include <../configuration.scad>
include <./lib/polyScrewThread_r1.scad>
PI=3.141592;

//Drzak rotoru se závitem

  
         

WINDGAUGE01A_R02();

module WINDGAUGE01A_R02()
{
    
     difference()
    {  
    union()
    {
     
        //kužel na závit
    cylinder(h=R02_zavit_vyska, r1=S01_prumer_vnitrni/2+5*S01_sila_materialu, r2=R03_prumer_zavitu/2+S01_sila_materialu, center=false,$fn=100); 
      
  

  //kvádr pod tyčí
    translate([-R02_hrana_drzaku/2,-(R02_delka_vyrovnnavaci_tyce+R03_prumer_zavitu/2+S01_sila_materialu),0])
            cube([R02_hrana_drzaku,R02_delka_vyrovnnavaci_tyce+R03_prumer_zavitu/2+S01_sila_materialu,R02_sila_materialu_pod_tyci],center=false);  
    
    //prední tyč
translate([0,0,5])
rotate([-90, 0, 180])
difference()
    {      
translate([0,0,0])
    cylinder (h = R02_delka_vyrovnnavaci_tyce+R03_prumer_zavitu/2+S01_sila_materialu, r=R02_hrana_drzaku/2, $fn=100); 
   
translate([-R02_hrana_drzaku/2,0,-0.01])
            cube([R02_hrana_drzaku,R02_hrana_drzaku,R02_delka_vyrovnnavaci_tyce+R03_prumer_zavitu/2+S01_sila_materialu+0.02],center=false); 
    }  
        

//spodní tyč pod křídlem
translate([-R02_hrana_drzaku/2,0,0])
            cube([R02_hrana_drzaku,R02_delka_kridla+(S01_prumer_vnitrni/2+5*S01_sila_materialu)-R02_hrana_drzaku/2,S01_sila_materialu],center=false);
  
    //zakulacení spodní tyče
    translate([0,R02_delka_kridla+(S01_prumer_vnitrni/2+5*S01_sila_materialu)-R02_hrana_drzaku/2,0])
    cylinder (h = S01_sila_materialu, r=R02_hrana_drzaku/2, $fn=100);  

//ližiny pro křídlo

  
   translate([-(R02_sila_materialu_kridla+R02_sila_materialu_kridla_tolerance)/2,0,0])
             rotate ([0,-90,0])
            linear_extrude (height = S01_sila_materialu, convexity = 10)
                polygon(points=[[0,R03_prumer_zavitu/2],[R02_zavit_vyska, R03_prumer_zavitu/2],[R02_zavit_vyska,R02_delka_kridla+(S01_prumer_vnitrni/2+5*S01_sila_materialu)-R02_hrana_drzaku/2],[0,R02_delka_kridla+(S01_prumer_vnitrni/2+5*S01_sila_materialu)-R02_hrana_drzaku/2]]);   
         
        
        
     translate([S01_sila_materialu+(R02_sila_materialu_kridla+R02_sila_materialu_kridla_tolerance)/2,0,0])
             rotate ([0,-90,0])
            linear_extrude (height = S01_sila_materialu, convexity = 10)
                polygon(points=[[0,R03_prumer_zavitu/2],[R02_zavit_vyska, R03_prumer_zavitu/2],[R02_zavit_vyska,R02_delka_kridla+(S01_prumer_vnitrni/2+5*S01_sila_materialu)-R02_hrana_drzaku/2],[0,R02_delka_kridla+(S01_prumer_vnitrni/2+5*S01_sila_materialu)-R02_hrana_drzaku/2]]);   
    }    
 
    //odečet závitu
   translate([0,0,-10])
                screw_thread((R03_prumer_zavitu),S01_hloubka_zavitu,55,R04_zavit_vyska+R02_zavit_vyska+R01_zavit_vyska+10,PI/2,2);        
        
   //otvor na hlavu šroubu
   
    
     
   translate([-(prumer_hlavy_sroubu+1)/2,-(R02_delka_vyrovnnavaci_tyce+R03_prumer_zavitu/2)+S01_sila_materialu,-0.01])
            cube([prumer_hlavy_sroubu+1,vyska_hlavy_sroubu+1,R02_sila_materialu_pod_tyci+prumer_hlavy_sroubu/2+0.5],center=false); 
 
    //otvor na sroub - valec
    translate([0,-(R02_delka_vyrovnnavaci_tyce+R03_prumer_zavitu/2)-(S01_sila_materialu)-0.01,R02_sila_materialu_pod_tyci])
    rotate([-90, 0, 0])
    
cylinder (h = S01_sila_materialu+0.01, r=prumer_sroubu/2+0.2, $fn=100); 
    
    //otvor na sroub - valec pro zasunutí hlavy šroubu
    translate([0,-(R02_delka_vyrovnnavaci_tyce+R03_prumer_zavitu/2)-0.01,R02_sila_materialu_pod_tyci])
    rotate([-90, 0, 0])
    
cylinder (h = S01_sila_materialu+0.5, r=prumer_hlavy_sroubu/2+0.3, $fn=100); 
    
    //otvor pro vsunutí sroubu
    
translate([-(prumer_sroubu+0.2)/2,-(R02_delka_vyrovnnavaci_tyce+R03_prumer_zavitu/2)-S01_sila_materialu-0.01,-0.01])
            cube([prumer_sroubu+0.2,2*S01_sila_materialu+0.2,R02_sila_materialu_pod_tyci],center=false); 

//otvor na šroub držící směrovku


translate([(2*S01_sila_materialu+2*R02_sila_materialu_kridla)/2,S01_prumer_vnitrni/2+5*S01_sila_materialu+10,(R02_zavit_vyska-S01_sila_materialu)/2+S01_sila_materialu])
rotate ([0,-90,0])
            cylinder (h = 2*S01_sila_materialu+2*R02_sila_materialu_kridla+0.01, r=prumer_sroubu/2+0.2, $fn=100);  
            
            
translate([(2*S01_sila_materialu+2*R02_sila_materialu_kridla)/2,S01_prumer_vnitrni/2+5*S01_sila_materialu+10+R02_vzdalenost_der,(R02_zavit_vyska-S01_sila_materialu)/2+S01_sila_materialu])
rotate ([0,-90,0])
            cylinder (h = 2*S01_sila_materialu+2*R02_sila_materialu_kridla+0.01, r=prumer_sroubu/2+0.2, $fn=100);             

//ořez vyvažovací části v prosotru závitu
translate([0,0,R02_zavit_vyska])
cylinder (h = R02_hrana_drzaku, r=R03_prumer_zavitu/2+S01_sila_materialu+0.5, $fn=100); 

}
}
 

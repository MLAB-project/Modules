$fn=40; // model faces resolution.
include <../configuration.scad>


include <polyScrewThread_r1.scad>

PI=3.141592;




//Držák ložisek, rotoru, senzoru

module WINDGAUGE01A_R05()
    {
    difference()
    {   
  //základní tvar      
  minkowski()
    {
	cube([R05_delka_kridla,R05_vyska_kridla,R02_sila_materialu_kridla/2]);          
        cylinder(r=R02_zavit_vyska/2,h=R02_sila_materialu_kridla/2);
    }
    
  //otvory pro šroub
  translate([0,0,-0.01])
            cylinder (h = R02_sila_materialu_kridla+1, r=prumer_sroubu/2+0.2, $fn=100);    
    
      translate([R02_vzdalenost_der,0,-0.01])
            cylinder (h = R02_sila_materialu_kridla+1, r=prumer_sroubu/2+0.2, $fn=100);     
    
 translate([-R02_zavit_vyska/2,R05_vyska_kridla/2+R02_zavit_vyska/2+0.01,-0.01])    
    cube([R05_vyska_kridla/2,R05_vyska_kridla/2,R02_sila_materialu_kridla+0.02]);
    
    }
    
    //kolo
     translate([R05_vyska_kridla/2-R02_zavit_vyska/2,R05_vyska_kridla/2+R02_zavit_vyska/2,0]) 
    cylinder(r=R05_vyska_kridla/2,h=R02_sila_materialu_kridla);
        }
include <manufactury_conf.scad>
include <../configuration.scad>
use <MLAB_logo.scad>

sloupek ();


//Funkce pro generovani sloupku
module sloupek() {

difference () {
    translate([-(prumer_matice+2*tloustka_bocnice-2*radidus_hrany)/2,-(prumer_matice+2*tloustka_bocnice-2*radidus_hrany)/2,0])
minkowski()
    {
	cube([prumer_matice+2*tloustka_bocnice-2*radidus_hrany,prumer_matice+2*tloustka_bocnice-2*radidus_hrany,vyska_matice+2*tloustka_bocnice]);          // base plastics brick
        cylinder(r=radidus_hrany,h=0.1);
    }
 
   translate([0,0,vyska_matice+2*tloustka_bocnice+0.1-tloustka_bocnice/2+0.2])  
  cylinder((tloustka_bocnice), d=(prumer_sroubu), center=true);    
    
 cylinder((vyska_matice+2*tloustka_bocnice), d=(prumer_sroubu), center=true);   
    
    
    //otvor na matici
     translate([0,tloustka_bocnice/2-posuv_dorazu/2,(vyska_matice+2*tloustka_bocnice)/2])  
              
        cube([prumer_matice, prumer_matice+posuv_dorazu+tloustka_bocnice,vyska_matice], center = true);
    
    }

difference () {
   translate([-(prumer_matice+2*tloustka_bocnice)/2,-(prumer_matice+2*tloustka_bocnice)/2,-vyska_podpery])
rotate([0, 0, 45])
    
cylinder(vyska_podpery,0,sqrt(2*((prumer_matice+2*tloustka_bocnice)*(prumer_matice+2*tloustka_bocnice))),$fn=4);
  
   
  
    
   difference () {



	translate([-((sqrt(2*((prumer_matice+2*tloustka_bocnice)*(prumer_matice+2*tloustka_bocnice))*2))),-((sqrt(2*((prumer_matice+2*tloustka_bocnice)*(prumer_matice+2*tloustka_bocnice))*2))),-vyska_podpery])
 cube([2*(sqrt(2*((prumer_matice+2*tloustka_bocnice)*(prumer_matice+2*tloustka_bocnice))*2)),2*(sqrt(2*((prumer_matice+2*tloustka_bocnice)*(prumer_matice+2*tloustka_bocnice))*2)),vyska_podpery+0.1]);
  
  translate([-(prumer_matice+2*tloustka_bocnice-2*radidus_hrany)/2,-(prumer_matice+2*tloustka_bocnice-2*radidus_hrany)/2,-vyska_podpery+0.05])
       
minkowski()
    {
	cube([prumer_matice+2*tloustka_bocnice-2*radidus_hrany,prumer_matice+2*tloustka_bocnice-2*radidus_hrany,vyska_podpery+0.01]);          // base plastics brick
        cylinder(r=radidus_hrany,h=0.1);
    }
 }   
   
   
   
    
   } 
   
   
 

 }   







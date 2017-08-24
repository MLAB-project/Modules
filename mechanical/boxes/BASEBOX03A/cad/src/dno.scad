use <text/Write.scad>
use <MLAB_logo.scad>
use <sloupek.scad>
use <plbase.scad>
include <manufactury_conf.scad>
include <../configuration.scad>

dno(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje1,vzdalenost_od_okraje2,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice);

//Bočnice
//------------------------------------------------------------


module dno(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje1,vzdalenost_od_okraje2,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice){

difference () {
    union()
        {
        translate([-((pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje2)/2,-vzdalenost_od_okraje1,vyska_bocnice/2])
        rotate(a=[180,0,90])        
            translate([radidus_hrany,radidus_hrany,0])
                translate([-tloustka_bocnice,-tloustka_bocnice,0])
        
    //obvod
      difference () {


translate([-tloustka_bocnice,-tloustka_bocnice,0])   
 minkowski()
        {
            cube([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje1-2*radidus_hrany+4*tloustka_bocnice,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje2-2*radidus_hrany+4*tloustka_bocnice,vyska_bocnice+tloustka_plbase]);          // base plastics brick
            cylinder(r=radidus_hrany,h=0.01);
 } 
translate([-dno_vule,-dno_vule,-dno_sila_materialu]) 
   
        minkowski()
        {
            cube([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje1-2*radidus_hrany+2*tloustka_bocnice+2*dno_vule,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje2-2*radidus_hrany+2*tloustka_bocnice+2*dno_vule,vyska_bocnice+tloustka_plbase+0.2]);          // base plastics brick
            cylinder(r=radidus_hrany,h=0.01);
        }   

        translate([tloustka_bocnice-radidus_hrany+dno_spodni_rantl,tloustka_bocnice-radidus_hrany+dno_spodni_rantl,-0.1])    
            
                cube([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje1-2*dno_spodni_rantl,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje2-2*dno_spodni_rantl,vyska_bocnice+tloustka_plbase+0.2]);        
 
  
        
    }     
      
   
    

 
//uchyt 1
 translate([(-(pocet_der2)*vzdalenost_der)/2-vzdalenost_od_okraje2-Uchyt_radius/2-Uchyt_x+0.5,-vzdalenost_od_okraje1+vzdalenost_der/2,-vyska_bocnice/2-tloustka_plbase])
dno_uchyt();
 
 //uchyt 2
 translate([((pocet_der2)*vzdalenost_der)/2+vzdalenost_od_okraje2+tloustka_bocnice+Uchyt_radius-0.5,-vzdalenost_od_okraje1+vzdalenost_der/2,-vyska_bocnice/2-tloustka_plbase])
dno_uchyt();

//uchyt 3
 translate([(-(pocet_der2)*vzdalenost_der)/2-vzdalenost_od_okraje2-Uchyt_radius/2-Uchyt_x+0.5,(pocet_der1)*vzdalenost_der+vzdalenost_od_okraje1-Uchyt_y+Uchyt_radius-vzdalenost_der/2,-vyska_bocnice/2-tloustka_plbase])
dno_uchyt();
 
 //uchyt 4
 translate([((pocet_der2)*vzdalenost_der)/2+vzdalenost_od_okraje2+tloustka_bocnice+Uchyt_radius-0.5,(pocet_der1)*vzdalenost_der+vzdalenost_od_okraje1-Uchyt_y+Uchyt_radius-vzdalenost_der/2,-vyska_bocnice/2-tloustka_plbase])
dno_uchyt();
 
 }

//----------------------------------------------------
//LOGO MLAB 
/*  
translate([(5-(pocet_der2)*vzdalenost_der)/2,0,0])
            translate ([0, -vzdalenost_od_okraje-tloustka_bocnice*1/2,0])  // 
                rotate([0, 90, 270])
                    scale(v = [logo_sirka, logo_vyska, 0.3])
                        MLAB_logo_short();
*/



//plbase odecet na kryt
  translate([0,0,vyska_bocnice/2-tloustka_plbase/2+0.05])
    rotate(a=[0,0,0])
    {
    plbase_vrchni_kryt_pro_odecet(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje1,vzdalenost_od_okraje2,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice,0,tloustka_plbase+0.1);
    }


//odstranění vrchního přebytku
     translate([0,-20+(pocet_der2+1)*vzdalenost_der/2,vyska_bocnice/2-tloustka_plbase/2+0.05-vyska_bocnice/2+dno_vyska_ramecku])
  cube([(pocet_der2+3)*vzdalenost_der+2*vzdalenost_od_okraje2-2*radidus_hrany+4*tloustka_bocnice,(pocet_der1+3)*vzdalenost_der+2*vzdalenost_od_okraje1-2*radidus_hrany+4*tloustka_bocnice,vyska_bocnice+tloustka_plbase], true);   


//začištění vnitřku
    
    translate([-((pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje2)/2,-vzdalenost_od_okraje1,vyska_bocnice/2])
        rotate(a=[180,0,90])        
            translate([radidus_hrany,radidus_hrany,0])
                translate([-tloustka_bocnice,-tloustka_bocnice,0])
    
    translate([-dno_vule,-dno_vule,-dno_sila_materialu]) 
   
        minkowski()
        {
            cube([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje1-2*radidus_hrany+2*tloustka_bocnice+2*dno_vule,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje2-2*radidus_hrany+2*tloustka_bocnice+2*dno_vule,vyska_bocnice+tloustka_plbase+0.2]);          // base plastics brick
            cylinder(r=radidus_hrany,h=0.01);
        } 
      
      
        //otvory na výčnělky horní      

  translate([-((pocet_der2+3)*vzdalenost_der+vzdalenost_od_okraje2+tloustka_bocnice+Uchyt_radius-0.5)/2,-vzdalenost_od_okraje1+vzdalenost_der/2-Uchyt_radius-0.5,-vyska_bocnice/2-tloustka_plbase+tloustka_plbase+dno_sila_materialu+dno_vule_na_matky])


cube([((pocet_der2+3)*vzdalenost_der)+vzdalenost_od_okraje2+tloustka_bocnice+Uchyt_radius-0.5,Uchyt_y+1,tloustka_plbase+dno_sila_materialu+dno_vule_na_matky]);  
        
  translate([-((pocet_der2+3)*vzdalenost_der+vzdalenost_od_okraje2+tloustka_bocnice+Uchyt_radius-0.5)/2,(pocet_der1)*vzdalenost_der+vzdalenost_od_okraje1-Uchyt_y-vzdalenost_der/2-0.5,-vyska_bocnice/2-tloustka_plbase+tloustka_plbase+dno_sila_materialu+dno_vule_na_matky])      
     
   cube([((pocet_der2+3)*vzdalenost_der)+vzdalenost_od_okraje2+tloustka_bocnice+Uchyt_radius-0.5,Uchyt_y+1,tloustka_plbase+dno_sila_materialu+dno_vule_na_matky]);    
        
}
}




//uchyt();

module dno_uchyt(){
    difference () {
minkowski()
    {
	cube([Uchyt_x-2*Uchyt_radius,Uchyt_y-2*Uchyt_radius,tloustka_plbase+dno_sila_materialu+dno_vule_na_matky]);          // base plastics brick
        cylinder(r=Uchyt_radius,h=0.1);
    }


    
////otvor na sroub
translate([(Uchyt_x)/2-Uchyt_radius,(Uchyt_y)/2-Uchyt_radius,(Uchyt_vyska_mat+M3_vyska_hlavy)/2])  
cylinder(h=Uchyt_vyska_mat+M3_vyska_hlavy+0.6, r=M3_prumer/2, center=true);     
 
translate([(Uchyt_x)/2-Uchyt_radius,(Uchyt_y)/2-Uchyt_radius,-0.01])     
cylinder (h = M3_vyska_matky+0.01, r= (M3_sirka_matky+0.2)/2, $fn=6);
 }   
  } 
  
  
     
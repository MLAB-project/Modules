use <text/Write.scad>
include <manufactury_conf.scad>
include <../configuration.scad>
/*
pocet_der1=5;
pocet_der2=3;
radidus_hrany=5;
vzdalenost_der=10.16;
vzdalenost_od_okraje=8.8;
prumer_sroubu=3.3;

tloustka_plbase=2;
prekryti_der=0.3;

vyska_nozicky=5;

vyska_hlavy = 3.5;
prumer_hlavy=6;
*/

//PLBASE ZAKLADNI
//------------------------------------------------------------
module plbase(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der,tloustka_bocnice){

difference () {
//union () {
translate([radidus_hrany,radidus_hrany,0])
minkowski()
    {
	cube([(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice,tloustka_plbase]);          // base plastics brick
        cylinder(r=radidus_hrany,h=0.1);
    }
    

for (i = [0:1:pocet_der1-1]) {
      for (a = [0:1:pocet_der2-1]) {  
          
    translate([vzdalenost_od_okraje+vzdalenost_der*i+tloustka_bocnice,vzdalenost_od_okraje+vzdalenost_der*a+tloustka_bocnice, (tloustka_plbase-prekryti_der)/2])  // center top screw
        cylinder(((tloustka_plbase-prekryti_der)), d=prumer_sroubu, center=true); 
      }
      }
 
      
}
}



//MODEL NOZICKY PRO PLBASE
//-----------------------------------------------------------
//průmer nozicky je roven vzdalenost_der
module nozicka (vzdalenost_der,vyska_nozicky,prumer_sroubu,vyska_hlavy,prumer_hlavy)
{
    difference () {
translate([0,0,-vyska_nozicky/2]) 
cylinder((vyska_nozicky), d=vzdalenost_der, center=true); 
translate([0,0,-(vyska_nozicky-vyska_hlavy/2)])       
cylinder((vyska_hlavy), d=prumer_hlavy, center=true); 
translate([0,0,-vyska_nozicky/2]) 
cylinder((vyska_nozicky), d=prumer_sroubu, center=true);       
}
}



//PLBASE S NOZICKAMA
//-----------------------------------------------------------
module plbase_s_nozickama(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der,vyska_nozicky,vyska_hlavy,prumer_hlavy){
    
 plbase(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der); 
  
translate([vzdalenost_od_okraje,vzdalenost_od_okraje, (tloustka_plbase)])  // center top screw
    rotate(a=[180,0,0])
        nozicka (vzdalenost_der,vyska_nozicky,prumer_sroubu,vyska_hlavy,prumer_hlavy);   
      
translate([vzdalenost_od_okraje+(pocet_der1-1)*vzdalenost_der,vzdalenost_od_okraje, tloustka_plbase])  // center top screw
    rotate(a=[180,0,0])
      nozicka (vzdalenost_der,vyska_nozicky,prumer_sroubu,vyska_hlavy,prumer_hlavy);  

translate([vzdalenost_od_okraje+(pocet_der1-1)*vzdalenost_der,vzdalenost_od_okraje+(pocet_der2-1)*vzdalenost_der, (tloustka_plbase)])  // center top screw
    rotate(a=[180,0,0])
   nozicka (vzdalenost_der,vyska_nozicky,prumer_sroubu,vyska_hlavy,prumer_hlavy);  
      
translate([vzdalenost_od_okraje,vzdalenost_od_okraje+(pocet_der2-1)*vzdalenost_der, (tloustka_plbase)])  // center top screw
    rotate(a=[180,0,0])
    nozicka (vzdalenost_der,vyska_nozicky,prumer_sroubu,vyska_hlavy,prumer_hlavy);          
 
    
    }
    
    

//PLBASE SE ZAPUSTENIM SROUBU
//------------------------------------------------------
module plbase_zapustene_srouby(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,vyska_hlavy,prekryti_der,prumer_hlavy){
difference () {    
 plbase(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,(vyska_hlavy+1.5),prekryti_der);   

translate([vzdalenost_od_okraje,vzdalenost_od_okraje, 1.5+(vyska_hlavy/2)])  // center top screw
        cylinder(((vyska_hlavy+0.5)), d=prumer_hlavy, center=true);  
      
translate([vzdalenost_od_okraje+(pocet_der1-1)*vzdalenost_der,vzdalenost_od_okraje, 1.5+(vyska_hlavy/2)])  // center top screw
        cylinder(((vyska_hlavy+0.5)), d=prumer_hlavy, center=true);  

translate([vzdalenost_od_okraje+(pocet_der1-1)*vzdalenost_der,vzdalenost_od_okraje+(pocet_der2-1)*vzdalenost_der, 1.5+(vyska_hlavy/2)])  // center top screw
        cylinder(((vyska_hlavy+0.5)), d=prumer_hlavy, center=true); 
      
translate([vzdalenost_od_okraje,vzdalenost_od_okraje+(pocet_der2-1)*vzdalenost_der, 1.5+(vyska_hlavy/2)])  // center top screw
        cylinder(((vyska_hlavy+0.5)), d=prumer_hlavy, center=true);   

}
}


//PLBASE S NOZICKAMA polovicni pro tisk
//-----------------------------------------------------------
module plbase_s_nozickama_polovicni(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der,vyska_nozicky,vyska_hlavy,prumer_hlavy){

difference()  
  {  
 plbase(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der); 
   
     
translate([-1,-1, -1])
       
 cube([(pocet_der1+1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany,1+((pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany)/2,tloustka_plbase+15]); 
  }  
  


translate([vzdalenost_od_okraje+(pocet_der1-1)*vzdalenost_der,vzdalenost_od_okraje+(pocet_der2-1)*vzdalenost_der, (tloustka_plbase)])  // center top screw
    rotate(a=[180,0,0])
   nozicka (vzdalenost_der,vyska_nozicky,prumer_sroubu,vyska_hlavy,prumer_hlavy);  
      
translate([vzdalenost_od_okraje,vzdalenost_od_okraje+(pocet_der2-1)*vzdalenost_der, (tloustka_plbase)])  // center top screw
    rotate(a=[180,0,0])
    nozicka (vzdalenost_der,vyska_nozicky,prumer_sroubu,vyska_hlavy,prumer_hlavy);     

         
 
    
    }

//PLBASE polovicni pro tisk
//-----------------------------------------------------------
module plbase_polovicni(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der,vyska_nozicky,vyska_hlavy,prumer_hlavy){

difference()  
  {  
 plbase(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der); 
   
     
translate([-1,-1, -1])
       
 cube([(pocet_der1+1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany,1+((pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany)/2,tloustka_plbase+15]); 
  }  
  
   
    }
    
    
//PLBASE ZAKLADNI - bez der s napisem produktu
//------------------------------------------------------------
module plbase_bez_der_napis(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der,box_jmeno,tloustka_bocnice){



difference () {
//union () {
translate([radidus_hrany,radidus_hrany,0])
minkowski()
    {
	cube([(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice,tloustka_plbase]);          // base plastics brick
        cylinder(r=radidus_hrany,h=0.1);
    }
 translate([radidus_hrany,radidus_hrany,0])   
translate([ ((pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany)/2+tloustka_bocnice, ((pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany)/2+tloustka_bocnice, tloustka_plbase/2+1]) 
    rotate([0,0,0])
      write(box_jmeno,h=10,t=tloustka_plbase-1, space= 1.1, font = "Letters.dxf",center=true);

 
translate([vzdalenost_od_okraje+tloustka_bocnice,vzdalenost_od_okraje+tloustka_bocnice, (tloustka_plbase/2)])  // center top screw
        cylinder(((tloustka_plbase+0.3)), d=prumer_sroubu, center=true);  
      
translate([vzdalenost_od_okraje+tloustka_bocnice+(pocet_der1-1)*vzdalenost_der,vzdalenost_od_okraje+tloustka_bocnice, (tloustka_plbase/2)])  // center top screw
        cylinder(((tloustka_plbase+0.3)), d=prumer_sroubu, center=true);  

translate([vzdalenost_od_okraje+tloustka_bocnice+(pocet_der1-1)*vzdalenost_der,vzdalenost_od_okraje+tloustka_bocnice+(pocet_der2-1)*vzdalenost_der, (tloustka_plbase/2)])  // center top screw
        cylinder(((tloustka_plbase+0.3)), d=prumer_sroubu, center=true); 
      
translate([vzdalenost_od_okraje+tloustka_bocnice,vzdalenost_od_okraje+tloustka_bocnice+(pocet_der2-1)*vzdalenost_der, (tloustka_plbase/2)])  // center top screw
        cylinder(((tloustka_plbase+0.3)), d=prumer_sroubu, center=true);       





      
}
}


//PLBASE ZAKLADNI - bez der
//------------------------------------------------------------
module plbase_bez_der(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der,tloustka_bocnice){



difference () {
//union () {
translate([radidus_hrany,radidus_hrany,0])
minkowski()
    {
	cube([(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice,tloustka_plbase]);          // base plastics brick
        cylinder(r=radidus_hrany,h=0.1);
    }
 

  





      
}
}


//PLbase vrchní
//------------------------------------------------------------


module plbase_vrchni_kryt(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice,plbase_tolerance_horni){

difference () {
  //  translate([0,((pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje+2*tloustka_bocnice)/2,0])
      cube([(pocet_der2+2)*vzdalenost_der+2*vzdalenost_od_okraje+2*tloustka_bocnice,(pocet_der1+2)*vzdalenost_der+2*vzdalenost_od_okraje+2*tloustka_bocnice,tloustka_plbase],true);  

    
union()
    {
translate([-((pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje)/2,-vzdalenost_od_okraje,vyska_bocnice/2])
rotate(a=[180,0,90])        
translate([radidus_hrany,radidus_hrany,0])
        translate([-tloustka_bocnice,-tloustka_bocnice,0])
        
 //obvod
 difference () {


minkowski()
    {
	cube([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice,vyska_bocnice+tloustka_plbase]);          // base plastics brick
        cylinder(r=radidus_hrany,h=0.1);
    }
translate([tloustka_bocnice,tloustka_bocnice,-0.1])     
minkowski()
    {
	cube([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany-2*plbase_tolerance_horni,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany-2*plbase_tolerance_horni,vyska_bocnice+tloustka_plbase+0.2]);          // base plastics brick
        cylinder(r=radidus_hrany,h=0.1);
    }
 
  
  
    
translate([-radidus_hrany-tloustka_bocnice-3*plbase_tolerance_horni,-radidus_hrany-tloustka_bocnice-3*plbase_tolerance_horni,-0.2])   
 cube([vzdalenost_der/2+tloustka_bocnice+plbase_tolerance_horni,vzdalenost_der/2+tloustka_bocnice+plbase_tolerance_horni,vyska_bocnice+tloustka_plbase+0.4]);
 
 
 translate([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje-radidus_hrany+2*tloustka_bocnice-vzdalenost_der/2,-radidus_hrany-tloustka_bocnice-3*plbase_tolerance_horni,-0.2]) 
 cube([vzdalenost_der/2+tloustka_bocnice+plbase_tolerance_horni,vzdalenost_der/2+tloustka_bocnice+plbase_tolerance_horni,vyska_bocnice+tloustka_plbase+0.4]);
 
 
 translate([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje-radidus_hrany+2*tloustka_bocnice-vzdalenost_der/2,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje-radidus_hrany+2*tloustka_bocnice-vzdalenost_der/2,-0.2]) 
 cube([vzdalenost_der/2+tloustka_bocnice+plbase_tolerance_horni,vzdalenost_der/2+tloustka_bocnice+plbase_tolerance_horni,vyska_bocnice+tloustka_plbase+0.4]);
 
    
       translate([-radidus_hrany-tloustka_bocnice-3*plbase_tolerance_horni,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje-radidus_hrany+2*tloustka_bocnice-vzdalenost_der/2,-0.2]) 
 cube([vzdalenost_der/2+tloustka_bocnice+plbase_tolerance_horni,vzdalenost_der/2+tloustka_bocnice+plbase_tolerance_horni,vyska_bocnice+tloustka_plbase+0.4]);  
  

   
   }
   
   
   
      
        //pro vyboceni sloupku
      
      translate([-((pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje)/2,-vzdalenost_od_okraje,vyska_bocnice/2])
rotate(a=[180,0,90])        
translate([radidus_hrany,radidus_hrany,0])
        translate([-2*tloustka_bocnice,-2*tloustka_bocnice,0])
difference () {

translate([-(5)*vzdalenost_der/2,-(5)*vzdalenost_der/2,0])
minkowski()
    {
	cube([(pocet_der1+5)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+4*tloustka_bocnice,(pocet_der2+5)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+4*tloustka_bocnice,vyska_bocnice+tloustka_plbase]);          // base plastics brick
        cylinder(r=radidus_hrany,h=0.1);
    }
translate([tloustka_bocnice,tloustka_bocnice,-0.2])    
minkowski()
    {
          
        
	cube([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice-2*plbase_tolerance_horni,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice-2*plbase_tolerance_horni,vyska_bocnice+tloustka_plbase+0.4]);          // base plastics brick
        cylinder(r=radidus_hrany,h=0.1);
    }
    
   
    
        
    
 } 
  }   
//SLOUPKY
//------------------------------------------------------------
//sloupek 1

translate([(-(pocet_der2)*vzdalenost_der)/2-tloustka_bocnice-plbase_tolerance_horni,-tloustka_bocnice-plbase_tolerance_horni,-tloustka_plbase])

 cylinder(r=prumer_sroubu/2,h=6*tloustka_plbase);

//sloupek 2

translate([((pocet_der2)*vzdalenost_der)/2+tloustka_bocnice-plbase_tolerance_horni,-tloustka_bocnice-plbase_tolerance_horni,-tloustka_plbase])
rotate(a=[0,0,90])
 cylinder(r=prumer_sroubu/2,h=6*tloustka_plbase);

//sloupek 3

translate([((pocet_der2)*vzdalenost_der)/2+tloustka_bocnice-plbase_tolerance_horni, (pocet_der1)*vzdalenost_der+tloustka_bocnice-plbase_tolerance_horni,-tloustka_plbase])
rotate(a=[0,0,180])
 cylinder(r=prumer_sroubu/2,h=6*tloustka_plbase);

//sloupek 4

translate([-((pocet_der2)*vzdalenost_der)/2-tloustka_bocnice-plbase_tolerance_horni, (pocet_der1)*vzdalenost_der+tloustka_bocnice-plbase_tolerance_horni,-tloustka_plbase])
rotate(a=[0,0,270])
 cylinder(r=prumer_sroubu/2,h=6*tloustka_plbase);
        
    

                





}
}

plbase_vrchni_kryt_pro_odecet(pocet_der1-1,pocet_der2-1,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice,-0.2,tloustka_plbase); 

//PLbase vrchní - pro odecet
//------------------------------------------------------------


module plbase_vrchni_kryt_pro_odecet(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice,plbase_tolerance_horni,tloustka_plbase){

 

    


 union()
     { 
 difference()
     {  
        //pro vyboceni sloupku
      
      translate([-((pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje)/2,-vzdalenost_od_okraje,tloustka_plbase/2])
rotate(a=[180,0,90])        
translate([radidus_hrany,radidus_hrany,0])
        translate([-2*tloustka_bocnice,-2*tloustka_bocnice,0])

translate([tloustka_bocnice+hrana_bocnice+plbase_tolerance_horni,tloustka_bocnice+hrana_bocnice+plbase_tolerance_horni,0])    
minkowski()
    {
          
        
	cube([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice-2*plbase_tolerance_horni-2*hrana_bocnice,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice-2*plbase_tolerance_horni-2*hrana_bocnice,tloustka_plbase]);          // base plastics brick
        cylinder(r=radidus_hrany,h=0.1);
    }
    
   
    
        
    
  
     
//SLOUPKY
//------------------------------------------------------------
//sloupek 1

  
    translate([(-(pocet_der2)*vzdalenost_der)/2-vzdalenost_od_okraje+prumer_matice/2,-vzdalenost_od_okraje+prumer_matice/2,-tloustka_plbase/2-0.2])

 cylinder(r=prumer_sroubu/2,h=6*tloustka_plbase);

//sloupek 2

 translate([((pocet_der2)*vzdalenost_der)/2+vzdalenost_od_okraje-prumer_matice/2,-vzdalenost_od_okraje+prumer_matice/2,-tloustka_plbase/2-0.2])
rotate(a=[0,0,90])
 cylinder(r=prumer_sroubu/2,h=6*tloustka_plbase);

//sloupek 3

translate([((pocet_der2)*vzdalenost_der)/2+vzdalenost_od_okraje-prumer_matice/2, (pocet_der1)*vzdalenost_der+vzdalenost_od_okraje-prumer_matice/2,-tloustka_plbase/2-0.2])
rotate(a=[0,0,180])
 cylinder(r=prumer_sroubu/2,h=6*tloustka_plbase);

//sloupek 4

translate([-((pocet_der2)*vzdalenost_der)/2-vzdalenost_od_okraje+prumer_matice/2, (pocet_der1)*vzdalenost_der+vzdalenost_od_okraje-prumer_matice/2,-tloustka_plbase/2-0.2])
rotate(a=[0,0,270])
 cylinder(r=prumer_sroubu/2,h=6*tloustka_plbase);
        
 //nápis   
 
 translate([0,0,0])   
translate([ 0, ((pocet_der1-1)*vzdalenost_der+vzdalenost_od_okraje+2*tloustka_bocnice)/2, tloustka_plbase/2-(tloustka_plbase-1)/2+0.01]) 
    rotate([0,0,0])
      write(box_jmeno,h=10,t=tloustka_plbase-1, space= 1.1, font = "Letters.dxf",center=true);



 }

}

}

 
$fn=40; // model faces resolution.

RJ12_otvor_velikost_x=12.85;
RJ12_otvor_velikost_y=2*18.4;
RJ12_otvor_sila_materialu=3.8;
RJ12_vzdalenost_od_okraje=5;
RJ12_sire_konektoru=15;
RJ12_rozestup_mezi_konektory=3.5;
sila_materialu=1.2;
roztec_der=10.16;
pocet_der_v_ose_y=2;
pocet_der_v_ose_x=6;
snizeni_rozmeru_desky=0.254;
RJ_pocet_konektoru=2;

prumer_sroubu=3.2;

//konektor();
drzak();

module drzak(){

for(a = [0 : 1 : RJ_pocet_konektoru-1])
  {  
      translate([a*(RJ12_sire_konektoru+RJ12_rozestup_mezi_konektory)+roztec_der-snizeni_rozmeru_desky,0,0]) 
     konektor(); 
      
      
}

deska();
 }
 
 
module konektor(){
//bocní vyztuhy
    
   translate([sila_materialu/2,0,0])
    rotate ([0,-90,0])
            linear_extrude (height = sila_materialu, convexity = 10)
                polygon(points=[[sila_materialu,RJ12_vzdalenost_od_okraje+RJ12_otvor_sila_materialu],[RJ12_otvor_velikost_y+sila_materialu, RJ12_vzdalenost_od_okraje+RJ12_otvor_sila_materialu],[sila_materialu,roztec_der*pocet_der_v_ose_y-2*snizeni_rozmeru_desky],[sila_materialu,roztec_der*pocet_der_v_ose_y-2*snizeni_rozmeru_desky]]); 
   
     translate([RJ12_sire_konektoru+RJ12_rozestup_mezi_konektory+sila_materialu/2,0,0])
    rotate ([0,-90,0])
            linear_extrude (height = sila_materialu, convexity = 10)
                polygon(points=[[sila_materialu,RJ12_vzdalenost_od_okraje+RJ12_otvor_sila_materialu],[RJ12_otvor_velikost_y+sila_materialu, RJ12_vzdalenost_od_okraje+RJ12_otvor_sila_materialu],[sila_materialu,roztec_der*pocet_der_v_ose_y-2*snizeni_rozmeru_desky],[sila_materialu,roztec_der*pocet_der_v_ose_y-2*snizeni_rozmeru_desky]]);  


translate([0,0,0])
difference () {
	cube([RJ12_sire_konektoru+RJ12_rozestup_mezi_konektory,roztec_der*pocet_der_v_ose_y-2*snizeni_rozmeru_desky,sila_materialu+RJ12_otvor_velikost_y]);   

//tvorba odstupu konektoru od okraje desky
translate([-0.005,-0.005,sila_materialu])
cube([RJ12_sire_konektoru+RJ12_rozestup_mezi_konektory+0.01,RJ12_vzdalenost_od_okraje+0.005,RJ12_otvor_velikost_y+0.01]);     
  
  
    
    translate([(RJ12_sire_konektoru+RJ12_rozestup_mezi_konektory-RJ12_otvor_velikost_x)/2,0,sila_materialu])
    //otvor na konektor
    cube([RJ12_otvor_velikost_x,roztec_der*pocet_der_v_ose_y-2*snizeni_rozmeru_desky+0.01,sila_materialu+RJ12_otvor_velikost_y+0.01]);
 
    
    //odstarněni materialu za drzakem
        translate([-0.005,RJ12_otvor_sila_materialu+RJ12_vzdalenost_od_okraje,sila_materialu])
  
  cube([RJ12_sire_konektoru+RJ12_rozestup_mezi_konektory+0.01,roztec_der*pocet_der_v_ose_y-2*snizeni_rozmeru_desky,sila_materialu+RJ12_otvor_velikost_y]);    
   }
    
    }
    
      module deska(){
        difference () {
        //základní materiál
        cube([roztec_der*pocet_der_v_ose_x-2*snizeni_rozmeru_desky,roztec_der*pocet_der_v_ose_y-2*snizeni_rozmeru_desky,sila_materialu]);   
        
            
            //otvory na šrouby
          translate([roztec_der/2-snizeni_rozmeru_desky,roztec_der/2-snizeni_rozmeru_desky,-0.005])
          cylinder(h=sila_materialu+0.01, r=prumer_sroubu/2, center=false);
            
            translate([(pocet_der_v_ose_x-1)*roztec_der+roztec_der/2-snizeni_rozmeru_desky,roztec_der/2-snizeni_rozmeru_desky,-0.005])
          cylinder(h=sila_materialu+0.01, r=prumer_sroubu/2, center=false);
            
            translate([roztec_der/2-snizeni_rozmeru_desky,(pocet_der_v_ose_y-1)*roztec_der+roztec_der/2-snizeni_rozmeru_desky,-0.005])
          cylinder(h=sila_materialu+0.01, r=prumer_sroubu/2, center=false);
            
            translate([(pocet_der_v_ose_x-1)*roztec_der+roztec_der/2-snizeni_rozmeru_desky,(pocet_der_v_ose_y-1)*roztec_der+roztec_der/2-snizeni_rozmeru_desky,-0.005])
          cylinder(h=sila_materialu+0.01, r=prumer_sroubu/2, center=false);
            
        }
     
      
          }
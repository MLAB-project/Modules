$fn=40; // model faces resolution.

include <../configuration.scad>

AWSBOX01A_D01(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der);

module AWSBOX01A_D01(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der){

difference () {
//union () {
translate([radidus_hrany,radidus_hrany,0])
minkowski()
    {
	cube([(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany,tloustka_plbase]);          // base plastics brick
        cylinder(r=radidus_hrany,h=0.1);
    }
    

for (i = [0:1:pocet_der1-1]) {
      for (a = [0:1:pocet_der2-1]) {  
          
    translate([vzdalenost_od_okraje+vzdalenost_der*i,vzdalenost_od_okraje+vzdalenost_der*a, (tloustka_plbase-prekryti_der)/2])  // center top screw
        cylinder(((tloustka_plbase-prekryti_der)), d=prumer_sroubu, center=true); 
      }
      }
 
translate([vzdalenost_od_okraje,vzdalenost_od_okraje, (tloustka_plbase/2)])  // center top screw
        cylinder(((tloustka_plbase+0.3)), d=prumer_sroubu, center=true);  
      
translate([vzdalenost_od_okraje+(pocet_der1-1)*vzdalenost_der,vzdalenost_od_okraje, (tloustka_plbase/2)])  // center top screw
        cylinder(((tloustka_plbase+0.3)), d=prumer_sroubu, center=true);  

translate([vzdalenost_od_okraje+(pocet_der1-1)*vzdalenost_der,vzdalenost_od_okraje+(pocet_der2-1)*vzdalenost_der, (tloustka_plbase/2)])  // center top screw
        cylinder(((tloustka_plbase+0.3)), d=prumer_sroubu, center=true); 
      
translate([vzdalenost_od_okraje,vzdalenost_od_okraje+(pocet_der2-1)*vzdalenost_der, (tloustka_plbase/2)])  // center top screw
        cylinder(((tloustka_plbase+0.3)), d=prumer_sroubu, center=true);       
      
}
}

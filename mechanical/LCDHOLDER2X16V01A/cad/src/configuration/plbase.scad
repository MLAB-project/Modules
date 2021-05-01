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
module plbase(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der){

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
/*
plbase_zapustene_srouby(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,vyska_hlavy,prekryti_der,prumer_hlavy);

nozicka (vzdalenost_der,vyska_nozicky,prumer_sroubu,vyska_hlavy,prumer_hlavy);


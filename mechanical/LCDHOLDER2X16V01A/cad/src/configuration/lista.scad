//Funkce generujici listu
module lista (vzdalenost_der,pocet_der,vzdalenost_od_okraje,vzdalenost_od_diry,vzdalenost_1,vzdalenost_2, zapust,vyska_listy,tlouska_celicka,sirka_materialu,vyska_hlavy,prumer_hlavy,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu,vyska_matky,sirka_matky) {
    
difference () {
color("cyan")
    translate([0, 0, 0])
        linear_extrude(height = zapust+vyska_listy)
            square([((pocet_der*vzdalenost_der)+2*vzdalenost_1), vzdalenost_od_okraje+vzdalenost_od_diry], center = true); 
    
    translate([-((((pocet_der*vzdalenost_der)+2*vzdalenost_1)/2)-(vzdalenost_1+vzdalenost_2/2)), 0, (zapust)])
        linear_extrude(height = vyska_listy)
            square([vzdalenost_2, vzdalenost_od_okraje+vzdalenost_od_diry], center = true); 
    
    translate([((((pocet_der*vzdalenost_der)+2*vzdalenost_1)/2)-(vzdalenost_1+vzdalenost_2/2)), 0, (zapust)])
        linear_extrude(height = vyska_listy)
            square([vzdalenost_2, vzdalenost_od_okraje+vzdalenost_od_diry], center = true); 
    
    translate([-((((pocet_der*vzdalenost_der)+2*vzdalenost_1)/2)-(vzdalenost_1/2)), 0, (zapust)])
        linear_extrude(height = vyska_listy)
            square([vzdalenost_1, vzdalenost_od_okraje+vzdalenost_od_diry], center = true); 
    
    translate([((((pocet_der*vzdalenost_der)+2*vzdalenost_1)/2)-(vzdalenost_1/2)), 0, (zapust)])
        linear_extrude(height = vyska_listy)
            square([vzdalenost_1, vzdalenost_od_okraje+vzdalenost_od_diry], center = true); 
    
     translate([0,-((((vzdalenost_od_okraje+vzdalenost_od_diry)/2)-sirka_materialu)-(tlouska_celicka/2)), zapust])
        linear_extrude(height = vyska_listy)
            square([((pocet_der*vzdalenost_der)+2*vzdalenost_1), tlouska_celicka], center = true); 
   
    
//otvory pro matky
//--------------------------------------------------------------
    
    translate([vzdalenost_der*pocet_der/2,-(((vzdalenost_od_okraje+vzdalenost_od_diry)/2)-vzdalenost_od_okraje),vyska_matky/2])  // center top screw
         cylinder (h = vyska_matky+0.1, r= (sirka_matky+0.2)/2, center=true, $fn=6);
        
        
     translate([-vzdalenost_der*pocet_der/2,-(((vzdalenost_od_okraje+vzdalenost_od_diry)/2)-vzdalenost_od_okraje),vyska_matky/2])  // center top screw
        cylinder (h = vyska_matky+0.1, r= (sirka_matky+0.2)/2, center=true, $fn=6);
        
        
 
//otvory pro srouby
//--------------------------------------------------------------

translate([vzdalenost_der*pocet_der/2,-(((vzdalenost_od_okraje+vzdalenost_od_diry)/2)-vzdalenost_od_okraje),vyska_hlavy/2])  // center top screw
        cylinder((2*(zapust+vyska_listy)), d=prumer_sroubu, center=true); 
        
     translate([-vzdalenost_der*pocet_der/2,-(((vzdalenost_od_okraje+vzdalenost_od_diry)/2)-vzdalenost_od_okraje),vyska_hlavy/2])  // center top screw
        cylinder((2*(zapust+vyska_listy)), d=prumer_sroubu, center=true); 



//otvory pro srouby po cele delce
/*
 for (i = [0:1:pocet_der]) {      
 translate([(-i*vzdalenost_der)+vzdalenost_der*pocet_der/2,-(((vzdalenost_od_okraje+vzdalenost_od_diry)/2)-vzdalenost_od_okraje),(zapust-vyska_hlavy)+vyska_hlavy/2])  // center top screw
        cylinder((2*(zapust+vyska_listy)), d=prumer_sroubu, center=true); 
      }
*/      

      
//otvory pro matice
//--------------------------------------------------------------
/*     
 for (i = [1:1:(pocet_der-1)]) {      
 translate([(-i*vzdalenost_der)+vzdalenost_der*pocet_der/2,-((((vzdalenost_od_okraje+vzdalenost_od_diry)/2)-vzdalenost_od_okraje)-((((prumer_matice+posuv_dorazu+vzdalenost_od_diry)/2))-(prumer_matice+posuv_dorazu)/2)),matice_sila_materialu])  // center top screw
      cube([prumer_matice, prumer_matice+posuv_dorazu+vzdalenost_od_diry,vyska_matice], center = true);
  
     }
*/
     
     }    
        } 
        
 //lista (vzdalenost_der,pocet_der1,vzdalenost_od_okraje,vzdalenost_od_diry,vzdalenost_1,vzdalenost_2, zapust,vyska_listy,tloustka_celicka,sirka_materialu,vyska_hlavy,prumer_hlavy,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);
 
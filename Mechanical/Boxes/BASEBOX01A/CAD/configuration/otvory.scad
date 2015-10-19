//Funkce otvuru pro ruzne prvky umistene do celicek

//1B) - LCD 2x16
//--------------------------------------------------------
module otvor_LCD2_16_diry(vyska,zapust,vule_vysky_celicka,pocet_der2,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky,vyska_listy,vzdalenost_der_x,vzdalenost_der_y,prumer_otvoru,prumer_sloupku,ramecek_x,ramecek_y,ramecek_vyska)
{
//otvor na LCD    
translate([0,0,(vyska-2*zapust-vule_vysky_celicka)/2])
cube(size = [ramecek_x,tloustka_celicka,ramecek_y], center = true);    

//diry na srouby pro LCD 
  
translate([vzdalenost_der_x/2,(ramecek_vyska/2-((tloustka_celicka-vule_tlousky)/2)),(((vyska-2*zapust-vule_vysky_celicka)/2)+vzdalenost_der_y/2)])
rotate(a=[90,0,0])      
cylinder(h=ramecek_vyska+0.2, r=(prumer_otvoru/2), center=true);  

translate([-vzdalenost_der_x/2,(ramecek_vyska/2-((tloustka_celicka-vule_tlousky)/2)),(((vyska-2*zapust-vule_vysky_celicka)/2)+vzdalenost_der_y/2)])
rotate(a=[90,0,0])      
cylinder(h=ramecek_vyska+0.2, r=(prumer_otvoru/2), center=true);  

translate([vzdalenost_der_x/2,(ramecek_vyska/2-((tloustka_celicka-vule_tlousky)/2)),(((vyska-2*zapust-vule_vysky_celicka)/2)-vzdalenost_der_y/2)])
rotate(a=[90,0,0])      
cylinder(h=ramecek_vyska+0.2, r=(prumer_otvoru/2), center=true);  

translate([-vzdalenost_der_x/2,(ramecek_vyska/2-((tloustka_celicka-vule_tlousky)/2)),(((vyska-2*zapust-vule_vysky_celicka)/2)-vzdalenost_der_y/2)])
rotate(a=[90,0,0])      
cylinder(h=ramecek_vyska+0.2, r=(prumer_otvoru/2), center=true);      
}    
    
module otvor_LCD2_16_sloupky(vyska,zapust,vule_vysky_celicka,pocet_der2,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky,vyska_listy,vzdalenost_der_x,vzdalenost_der_y,prumer_otvoru,prumer_sloupku,ramecek_x,ramecek_y,ramecek_vyska)
{   
    union() { 
      
        translate([vzdalenost_der_x/2,(ramecek_vyska/2-((tloustka_celicka-vule_tlousky)/2)),(((vyska-2*zapust-vule_vysky_celicka)/2)+vzdalenost_der_y/2)])
            rotate(a=[90,0,0])      
                cylinder(h=ramecek_vyska, r=(prumer_sloupku/2), center=true); 

    translate([-vzdalenost_der_x/2,(ramecek_vyska/2-((tloustka_celicka-vule_tlousky)/2)),(((vyska-2*zapust-vule_vysky_celicka)/2)+vzdalenost_der_y/2)])
            rotate(a=[90,0,0])      
                cylinder(h=ramecek_vyska, r=(prumer_sloupku/2), center=true); 
            
    translate([vzdalenost_der_x/2,(ramecek_vyska/2-((tloustka_celicka-vule_tlousky)/2)),(((vyska-2*zapust-vule_vysky_celicka)/2)-vzdalenost_der_y/2)])
            rotate(a=[90,0,0])      
                cylinder(h=ramecek_vyska, r=(prumer_sloupku/2), center=true);  
   
    translate([-vzdalenost_der_x/2,(ramecek_vyska/2-((tloustka_celicka-vule_tlousky)/2)),(((vyska-2*zapust-vule_vysky_celicka)/2)-vzdalenost_der_y/2)])
            rotate(a=[90,0,0])      
                cylinder(h=ramecek_vyska, r=(prumer_sloupku/2), center=true);         
        
}
}
//Funkce otvuru pro ruzne prvky umistene do celicek

/*OBSAHUJE
    1A) - LCD 2x16 - urceno pro montaz LCD 2x16 znaku
    1B) - Pro modul RS232SINGLE01A
    1C) - Pro modul USBI2C01A
    1D) - Pro konektor MIC338
    1E) - Pro modul UNIPOWER02A
    1F) - Pro modul I2CDIFF01A
*/


//1A) - LCD 2x16
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


/*1B) - Pro modul RS232SINGLE01A
--------------------------------------------------------
--------------------------------------------------------
pocet_der_dane_strany - protoze nelze definovat na jake strane bude dira umistena, proto se musí rucne zadat pocet der zvolene strany krabicky
posun_od_okraje - zadava se o kolik der se ma posunot modul od kraje celicka
vzdalenost_der - definuje rozec der

modul na dvou matkách má vysku 6.5 mm, pokud nebudo zasahne do nastaveni list krabicky, bude nutno zvednout vysku modulu.

*/

module RS232SINGLE01A(tloustka_celicka,pocet_der_dane_strany,posun_od_kraje,vzdalenost_der,vyska_listy)
{
 RS232SINGLE01A_sirka_kon=32; //sirka konektoru
 RS232SINGLE01A_vyska_kon=13.5; //vyska konektoru
 RS232SINGLE01A_sirka_mod_otvory=5; //kolik modul zabira der
   translate([-(pocet_der_dane_strany-1)*vzdalenost_der/2+1*vzdalenost_der+vzdalenost_der*(RS232SINGLE01A_sirka_mod_otvory-1)/2+posun_od_kraje*vzdalenost_der,0,RS232SINGLE01A_vyska_kon/2+vyska_listy])
   cube(size = [RS232SINGLE01A_sirka_kon,tloustka_celicka,RS232SINGLE01A_vyska_kon], center = true);  
    
}


/*1C) - Pro modul USBI2C01A
--------------------------------------------------------
--------------------------------------------------------
pocet_der_dane_strany - protoze nelze definovat na jake strane bude dira umistena, proto se musí rucne zadat pocet der zvolene strany krabicky
posun_od_okraje - zadava se o kolik der se ma posunot modul od kraje celicka
vzdalenost_der - definuje roztec der

modul na dvou matkách má vysku 6.5 mm, pokud nebudo zasahne do nastaveni list krabicky, bude nutno zvednout vysku modulu.

*/

module USBI2C01A(tloustka_celicka,pocet_der_dane_strany,posun_od_kraje,vzdalenost_der,vyska_listy)
{
 USBI2C01A_sirka_kon=13; //sirka konektoru
 USBI2C01A_vyska_kon=12; //vyska konektoru
 USBI2C01A_sirka_mod_otvory=3; //kolik modul zabira der
   translate([-(pocet_der_dane_strany-1)*vzdalenost_der/2+1*vzdalenost_der+vzdalenost_der*(USBI2C01A_sirka_mod_otvory-1)/2+posun_od_kraje*vzdalenost_der,0,USBI2C01A_vyska_kon/2+vyska_listy])
   cube(size = [USBI2C01A_sirka_kon,tloustka_celicka,USBI2C01A_vyska_kon], center = true);  
    
}

/*1D) - Pro konektor MIC338
--------------------------------------------------------
--------------------------------------------------------
*/
//posun_od_okraje - zadava se o kolik der se ma posunot otvor od středu celicka v nasobcich roztece der

module MIC338(tloustka_celicka,vyska,zapust,vule_vysky_celicka,posun_od_kraje,vzdalenost_der)
{
 MIC338_polomer_kon=8; //polomer montazniho otvoru
   translate([posun_od_kraje*vzdalenost_der,0,(vyska-2*zapust-vule_vysky_celicka)/2])
        rotate(a=[90,0,0])
            cylinder(h=tloustka_celicka+0.1, r=MIC338_polomer_kon+0.1, center=true);  
    
}

/*1E) - Pro modul UNIPOWER02A
--------------------------------------------------------
--------------------------------------------------------
pocet_der_dane_strany - protoze nelze definovat na jake strane bude dira umistena, proto se musí rucne zadat pocet der zvolene strany krabicky
posun_od_okraje - zadava se o kolik der se ma posunot modul od kraje celicka
vzdalenost_der - definuje rozec der

modul na dvou matkách má vysku 6.5 mm, pokud nebudo zasahne do nastaveni list krabicky, bude nutno zvednout vysku modulu.

*/



module UNIPOWER02A(tloustka_celicka,pocet_der_dane_strany,posun_od_kraje,vzdalenost_der,vyska_listy)
{
 UNIPOWER02A_sirka_kon=13; //sirka konektoru
 UNIPOWER02A_vyska_kon=11; //vyska konektoru
 UNIPOWER02A_sirka_mod_otvory=4; //kolik modul zabira der
 UNIPOWER02A_vzdalenost_konektoru=6; //vzdalenost kraje konektoru od středu šroubu
   translate([-(pocet_der_dane_strany-1)*vzdalenost_der/2+1*vzdalenost_der+posun_od_kraje*vzdalenost_der+UNIPOWER02A_vzdalenost_konektoru+UNIPOWER02A_sirka_kon/2,0,UNIPOWER02A_vyska_kon/2+vyska_listy])
   cube(size = [UNIPOWER02A_sirka_kon,tloustka_celicka,UNIPOWER02A_vyska_kon], center = true);
 }   
 
/*1F) - Pro modul I2CDIFF01A
--------------------------------------------------------
--------------------------------------------------------
pocet_der_dane_strany - protoze nelze definovat na jake strane bude dira umistena, proto se musí rucne zadat pocet der zvolene strany krabicky
posun_od_okraje - zadava se o kolik der se ma posunot modul od kraje celicka
vzdalenost_der - definuje roztec der

modul na dvou matkách má vysku 6.5 mm, pokud nebudo zasahne do nastaveni list krabicky, bude nutno zvednout vysku modulu.

*/

module I2CDIFF01A(tloustka_celicka,pocet_der_dane_strany,posun_od_kraje,vzdalenost_der,vyska_listy)
{
 I2CDIFF01A_sirka_kon=19; //sirka konektoru
 I2CDIFF01A_vyska_kon=16; //vyska konektoru
 I2CDIFF01A_sirka_mod_otvory=4; //kolik modul zabira der
   translate([-(pocet_der_dane_strany-1)*vzdalenost_der/2+1*vzdalenost_der+vzdalenost_der*(I2CDIFF01A_sirka_mod_otvory-1)/2+posun_od_kraje*vzdalenost_der,0,I2CDIFF01A_vyska_kon/2+vyska_listy])
   cube(size = [I2CDIFF01A_sirka_kon,tloustka_celicka,I2CDIFF01A_vyska_kon], center = true);  
    
} 
    
//Funkce otvuru pro ruzne prvky umistene do celicek

/*OBSAHUJE
    1A)
    1B)
    1C) - Pro modul USBI2C01A
    1D) - Pro konektor MIC338
    1E) - Pro modul UNIPOWER02A
    1F) - Pro modul I2CDIFF01A
    1G) - Pro modul UNIPOWER03A
    1H) - Větrací otvor
    
    2A) - Otvor na IR
*/


/*1C) - Pro modul USBI2C01A
--------------------------------------------------------
--------------------------------------------------------
pocet_der_dane_strany - protoze nelze definovat na jake strane bude dira umistena, proto se musí rucne zadat pocet der zvolene strany krabicky
posun_od_okraje - zadava se o kolik der se ma posunot modul od kraje celicka
vzdalenost_der - definuje roztec der

modul na dvou matkách má vysku 6.5 mm, pokud nebudo zasahne do nastaveni list krabicky, bude nutno zvednout vysku modulu.

*/

module USBI2C01A(tloustka_bocnice,vzdalenost_der) //uz upraveno
{
 USBI2C01A_sirka_kon=12; //sirka konektoru
 USBI2C01A_vyska_kon=11; //vyska konektoru
 USBI2C01A_sirka_mod_otvory=3; //kolik modul zabira der
 USBI2C01A_svyska_nad_plbase=6; //kolik modul zabira der   
   translate([vzdalenost_der*(USBI2C01A_sirka_mod_otvory-1)/2,0,USBI2C01A_vyska_kon/2+USBI2C01A_svyska_nad_plbase])
   cube(size = [USBI2C01A_sirka_kon,tloustka_bocnice+0.2,USBI2C01A_vyska_kon], center = true);  
    
}

/*1D) - Pro konektor MIC338
--------------------------------------------------------
--------------------------------------------------------
*/
//posun_od_okraje - zadava se o kolik der se ma posunot otvor od středu celicka v nasobcich roztece der

module MIC338(tloustka_bocnice,vzdalenost_der,vyska_bocnice)
{
 MIC338_polomer_kon=8; //polomer montazniho otvoru
   translate([0,0,vyska_bocnice/2])
        rotate(a=[90,0,0])
            cylinder(h=tloustka_bocnice+0.1, r=MIC338_polomer_kon+0.1, center=true);  
    
}

/*1E) - Pro modul UNIPOWER02A
--------------------------------------------------------
--------------------------------------------------------
pocet_der_dane_strany - protoze nelze definovat na jake strane bude dira umistena, proto se musí rucne zadat pocet der zvolene strany krabicky
posun_od_okraje - zadava se o kolik der se ma posunot modul od kraje celicka
vzdalenost_der - definuje rozec der

modul na dvou matkách má vysku 6.5 mm, pokud nebudo zasahne do nastaveni list krabicky, bude nutno zvednout vysku modulu.

*/



module UNIPOWER02A(tloustka_bocnice,vzdalenost_der)
{
 UNIPOWER02A_sirka_kon=10; //sirka konektoru
 UNIPOWER02A_vyska_kon=11; //vyska konektoru
 UNIPOWER02A_sirka_mod_otvory=4; //kolik modul zabira der
 UNIPOWER02A_vzdalenost_konektoru=6; //vzdalenost kraje konektoru od středu šroubu
    UNIPOWER02A_vyska_nad_plbase=6; //vyska mezi albase a konektorem
   translate([UNIPOWER02A_vzdalenost_konektoru,-tloustka_bocnice/2-0.05,UNIPOWER02A_vyska_nad_plbase])
   cube(size = [UNIPOWER02A_sirka_kon,tloustka_bocnice+0.1,UNIPOWER02A_vyska_kon], center = false);
 }   
 
/*1F) - Pro modul I2CDIFF01A
--------------------------------------------------------
--------------------------------------------------------
pocet_der_dane_strany - protoze nelze definovat na jake strane bude dira umistena, proto se musí rucne zadat pocet der zvolene strany krabicky
posun_od_okraje - zadava se o kolik der se ma posunot modul od kraje celicka
vzdalenost_der - definuje roztec der

modul na dvou matkách má vysku 6.5 mm, pokud nebudo zasahne do nastaveni list krabicky, bude nutno zvednout vysku modulu.

*/


module I2CDIFF01A(tloustka_bocnice,vzdalenost_der) //uz upraveno
{
 I2CDIFF01A_sirka_kon=16.5; //sirka konektoru
 I2CDIFF01A_vyska_kon=13.5; //vyska konektoru
 I2CDIFF01A_sirka_mod_otvory=4; //kolik modul zabira der
 I2CDIFF01A_vyska_nad_plbase=6; //vyska mezi albase a konektorem
   translate([vzdalenost_der*(I2CDIFF01A_sirka_mod_otvory-1)/2,0,I2CDIFF01A_vyska_kon/2+I2CDIFF01A_vyska_nad_plbase])
   cube(size = [I2CDIFF01A_sirka_kon,tloustka_bocnice+0.2,I2CDIFF01A_vyska_kon], center = true);  
    
}
 

/*1G) - Pro modul UNIPOWER03A
--------------------------------------------------------
--------------------------------------------------------

*/

module UNIPOWER03A(tloustka_bocnice,vzdalenost_der)
{
 UNIPOWER03A_sirka_kon=10; //sirka konektoru
 UNIPOWER03A_vyska_kon=11; //vyska konektoru
 UNIPOWER03A_sirka_mod_otvory=4; //kolik modul zabira der
 UNIPOWER03A_vzdalenost_konektoru=5; //vzdalenost kraje konektoru od středu šroubu
    UNIPOWER03A_vyska_nad_plbase=6; //vyska mezi albase a konektorem
    
    
   translate([(UNIPOWER03A_sirka_mod_otvory-1)*vzdalenost_der-UNIPOWER03A_sirka_kon-UNIPOWER03A_vzdalenost_konektoru,-tloustka_bocnice/2-0.05,UNIPOWER03A_vyska_nad_plbase])
   cube(size = [UNIPOWER03A_sirka_kon,tloustka_bocnice+0.1,UNIPOWER03A_vyska_kon], center = false);
 }  
 

 /*1G) - OTVOR PRO VETRANI
--------------------------------------------------------
--------------------------------------------------------

*/
 module CHLADICI_OTVORY(tloustka_bocnice,vzdalenost_der,delka,vyska_bocnice)
{
CHLADICI_OTVORY_mezera=0.6; 
CHLADICI_OTVORY_snizeni_vysky=10; 
CHLADICI_OTVORY_prekryti=1.2;     
    
   for (a =[1:delka]) 
     translate([vzdalenost_der*(a-1),0,0])  
   {   
  union() {
   translate([CHLADICI_OTVORY_prekryti/2,-CHLADICI_OTVORY_mezera/2+0.005,CHLADICI_OTVORY_snizeni_vysky/2])
   cube(size = [(vzdalenost_der-2*CHLADICI_OTVORY_prekryti)/2,(tloustka_bocnice+CHLADICI_OTVORY_mezera)/2,vyska_bocnice-CHLADICI_OTVORY_snizeni_vysky], center = false);
    
     translate([(vzdalenost_der+CHLADICI_OTVORY_prekryti)/2,-tloustka_bocnice/2-0.005,CHLADICI_OTVORY_snizeni_vysky/2])
   cube(size = [(vzdalenost_der-2*CHLADICI_OTVORY_prekryti)/2,(tloustka_bocnice+CHLADICI_OTVORY_mezera)/2,vyska_bocnice-CHLADICI_OTVORY_snizeni_vysky], center = false);
    
    
    translate([(vzdalenost_der-CHLADICI_OTVORY_prekryti)/2,-CHLADICI_OTVORY_mezera/2,CHLADICI_OTVORY_snizeni_vysky/2])
    cube(size = [CHLADICI_OTVORY_prekryti,CHLADICI_OTVORY_mezera,vyska_bocnice-CHLADICI_OTVORY_snizeni_vysky], center = false);
      
    translate([(vzdalenost_der-CHLADICI_OTVORY_prekryti)/2+vzdalenost_der/2,-CHLADICI_OTVORY_mezera/2,CHLADICI_OTVORY_snizeni_vysky/2])
    cube(size = [CHLADICI_OTVORY_prekryti+1,CHLADICI_OTVORY_mezera,vyska_bocnice-CHLADICI_OTVORY_snizeni_vysky], center = false);  
 }
 }
 }
 
 
 /*2A) - OTVOR PRO IR
--------------------------------------------------------
--------------------------------------------------------

*/
 
 module IR(tloustka_bocnice,vyska_bocnice)
{
    IR_sirka_kon=7; //sirka senzoru
    IR_vyska_kon=7.5; //vyska senzoru
    IR_hloubka_venkovni=1.2; //sila senzoru od vodičů ven
    IR_vyska_pro_vodice=5; 
    
    
   translate([0,-tloustka_bocnice/2-0.01,vyska_bocnice/2-IR_vyska_kon/2])
   cube(size = [IR_sirka_kon,IR_hloubka_venkovni+0.1,IR_vyska_kon], center = false);
    
    translate([0,-(tloustka_bocnice/2-IR_hloubka_venkovni),vyska_bocnice/2-IR_vyska_kon/2-IR_vyska_pro_vodice])
   cube(size = [IR_sirka_kon,tloustka_bocnice,IR_vyska_kon+IR_vyska_pro_vodice], center = false);
 } 
 
 
 module OTVOR_NA_PRUDUCH(tloustka_bocnice,vzdalenost_der,delka,vyska_bocnice)
{
OTVOR_NA_PRUDUCH_vzdalenost_od_kraje=5; 
    
    
  
     translate([0,-0.05-tloustka_bocnice/2,OTVOR_NA_PRUDUCH_vzdalenost_od_kraje])  
      
  
   cube(size = [vzdalenost_der*(delka),tloustka_bocnice+0.1,vyska_bocnice-2*OTVOR_NA_PRUDUCH_vzdalenost_od_kraje], center = false);
    
     
 
 
 }
 
 
 module CHLADICI_OTVORY2(tloustka_bocnice,vzdalenost_der,delka,vyska_bocnice)
{
CHLADICI_OTVORY2_mezera=1.0; 
CHLADICI_OTVORY2_snizeni_vysky=10; 
    
    
   for (a =[1:delka]) 
     translate([vzdalenost_der*(a-1),0,0])  
   {   

   translate([vzdalenost_der/2,-0.05-tloustka_bocnice/2,CHLADICI_OTVORY2_snizeni_vysky/2])
   cube(size = [CHLADICI_OTVORY2_mezera,tloustka_bocnice+0.1,vyska_bocnice-CHLADICI_OTVORY2_snizeni_vysky], center = false);
    
     
 
 }
 }
use <src/bocnice.scad>

use <src/otvory.scad>
use <src/plbase.scad>
include <src/manufactury_conf.scad>
include <configuration.scad>
include <src/otvory_conf.scad>

upravena_bocnice();

//Slouzi pro vytvoreni bocnice s vlastnimi otvory


module upravena_bocnice()
{
difference() {
    union() {
    bocnice(pocet_der1-1,pocet_der2-1,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice);

    translate([-((pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje)/2-tloustka_bocnice,-vzdalenost_od_okraje-tloustka_bocnice,-(vyska_bocnice/2)])
        rotate(a=[180,0,90])
            plbase(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der,tloustka_bocnice);
        
            }
            
 
//Vytvoreni otvorů v přední stěně
//--------------------------------------------------------
    union() {            
        translate([-((pocet_der2-1)*vzdalenost_der)/2,-vzdalenost_od_okraje-tloustka_bocnice/2,-(vyska_bocnice/2)])
        {
        //složí k posunu otvoru v násobku děr
        posun_p1=1;    
        translate([posun_p1*vzdalenost_der,0,0])   
            USBI2C01A(tloustka_bocnice,vzdalenost_der);         
    
        posun_p2=4;    
            translate([posun_p2*vzdalenost_der,0,0])   
                I2CDIFF01A(tloustka_bocnice,vzdalenost_der);
                    
        posun_p3=20;    
            translate([posun_p3*vzdalenost_der,0,0])   
                CHLADICI_OTVORY(tloustka_bocnice,vzdalenost_der,4,vyska_bocnice);
        
             posun_p4=0;    
            translate([posun_p4*vzdalenost_der,0,0])  
            IR(tloustka_bocnice,vyska_bocnice);
            
            }
            }



//Vytvoreni zadniho celicka krabicky
//--------------------------------------------------------
    translate([((pocet_der2-1)*vzdalenost_der)/2,(pocet_der1-1)*vzdalenost_der+vzdalenost_od_okraje+tloustka_bocnice/2,-(vyska_bocnice/2)])
    {
    //složí k posunu otvoru v násobku děr
        posun_z1=10;    
            translate([-posun_z1*vzdalenost_der,0,0])  
                rotate(a=[0,0,180])  
                    USBI2C01A(tloustka_bocnice,vzdalenost_der);         
    
        posun_z2=1;    
            translate([-posun_z2*vzdalenost_der,0,0])  
                rotate(a=[0,0,180])  
                    I2CDIFF01A(tloustka_bocnice,vzdalenost_der);
                    
        posun_z3=10;    
            translate([-posun_z3*vzdalenost_der,0,0])  
                rotate(a=[0,0,180])  
                    MIC338(tloustka_bocnice,vzdalenost_der,vyska_bocnice);
                    
        posun_z4=5;    
            translate([-posun_z4*vzdalenost_der,0,0]) 
                rotate(a=[0,0,180])  
                    UNIPOWER02A(tloustka_bocnice,vzdalenost_der);
                 
                    
     }

//Vytvoreni leveho celicka krabicky
//--------------------------------------------------------

    translate([-((pocet_der2-1)*vzdalenost_der)/2-vzdalenost_od_okraje-tloustka_bocnice/2,(pocet_der1-1)*vzdalenost_der,-(vyska_bocnice/2)])
    {
        //složí k posunu otvoru v násobku děr
        posun_l1=10;    
            translate([0,-posun_l1*vzdalenost_der,0])  
                rotate(a=[0,0,-90])  
                    USBI2C01A(tloustka_bocnice,vzdalenost_der);         
    
        posun_l2=10;    
            translate([0,-posun_l2*vzdalenost_der,0])           rotate(a=[0,0,-90]) 
                    I2CDIFF01A(tloustka_bocnice,vzdalenost_der);
                    
        posun_l3=10;    
            translate([0,-posun_l3*vzdalenost_der,0])           rotate(a=[0,0,-90])
                    MIC338(tloustka_bocnice,vzdalenost_der,vyska_bocnice);
                    
        posun_l4=0;    
            translate([0,-posun_l4*vzdalenost_der,0])   
               rotate(a=[0,0,-90])  
                    CHLADICI_OTVORY(tloustka_bocnice,vzdalenost_der,pocet_der1-1,vyska_bocnice);
    }

//Vytvoreni praveho celicka krabicky
//--------------------------------------------------------
    translate([+((pocet_der2-1)*vzdalenost_der)/2+vzdalenost_od_okraje+tloustka_bocnice/2,0,-(vyska_bocnice/2)])
       {
       //složí k posunu otvoru v násobku děr
        posun_pr1=10;    
            translate([0,posun_pr1*vzdalenost_der,0])  
                rotate(a=[0,0,90])  
                    UNIPOWER03A(tloustka_bocnice,vzdalenost_der);         
    
        posun_pr2=10;    
            translate([0,posun_pr2*vzdalenost_der,0])
                rotate(a=[0,0,90]) 
                    I2CDIFF01A(tloustka_bocnice,vzdalenost_der);
                    
        posun_pr3=10;    
            translate([0,posun_pr3*vzdalenost_der,0])
                rotate(a=[0,0,90])
                    MIC338(tloustka_bocnice,vzdalenost_der,vyska_bocnice);
                    
        posun_pr4=0;    
            translate([0,posun_pr4*vzdalenost_der,0])
                rotate(a=[0,0,90])  
                    CHLADICI_OTVORY2(tloustka_bocnice,vzdalenost_der,pocet_der1-1,vyska_bocnice);
                          
        }
}
}


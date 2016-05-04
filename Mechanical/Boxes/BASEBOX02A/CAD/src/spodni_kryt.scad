use <text/Write.scad>
use <MLAB_logo.scad>
use <sloupek.scad>
use <plbase.scad>
use <bocnice.scad>
include <manufactury_conf.scad>
include <../configuration.scad>

spodni_kryt(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice);

//Spodni kryt - aby nebyli vidět matice ze spodu boxu
//------------------------------------------------------------


module spodni_kryt(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice){
  
 
translate([-((pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje)/2,-vzdalenost_od_okraje,(vyska_prekryti_spodni+vyska_prekryti_vrchni+tloustka_plbase)])
    rotate(a=[180,0,90])        
        translate([radidus_hrany,radidus_hrany,0])
            translate([-2*tloustka_bocnice,-2*tloustka_bocnice,0])

difference () {

    minkowski()
        {
        cube([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+4*tloustka_bocnice,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+4*tloustka_bocnice,vyska_prekryti_spodni+vyska_prekryti_vrchni+sila_spodniho_krytu]);          // base plastics brick
        cylinder(r=radidus_hrany,h=0.1);
        }
    translate([tloustka_bocnice-tolerance_na_nasunuti,tloustka_bocnice-tolerance_na_nasunuti,-sila_spodniho_krytu])    
        minkowski()
        {
    	cube([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice+2*tolerance_na_nasunuti,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice+2*tolerance_na_nasunuti,vyska_prekryti_spodni+
vyska_prekryti_vrchni+sila_spodniho_krytu+0.2]);          // base plastics brick
        cylinder(r=radidus_hrany,h=0.1);
        }
    
 
    translate([0,0,-vyska_prekryti_spodni-sila_spodniho_krytu])  
        difference () {

            minkowski()
            {
                cube([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+4*tloustka_bocnice,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+4*tloustka_bocnice,vyska_prekryti_spodni+
vyska_prekryti_vrchni+sila_spodniho_krytu]);                // base plastics brick
                cylinder(r=radidus_hrany,h=0.1);
            }

            translate([tloustka_bocnice,tloustka_bocnice,-0.1])    
                minkowski()
                {
                cube([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice,vyska_prekryti_spodni+
vyska_prekryti_vrchni+sila_spodniho_krytu+0.2]);          // base plastics brick
                cylinder(r=radidus_hrany,h=0.1);
                }
    
            translate([-radidus_hrany+vzdalenost_der/2+tloustka_bocnice+1+prekryti_tolerance/2,-radidus_hrany-0.25,-0.1])    

                cube([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje+4*tloustka_bocnice-vzdalenost_der-2*tloustka_bocnice-2-prekryti_tolerance,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje+4*tloustka_bocnice+0.5,vyska_bocnice+sila_spodniho_krytu+0.2]);

            translate([-radidus_hrany-0.25,-radidus_hrany+vzdalenost_der/2+tloustka_bocnice+1+prekryti_tolerance/2,-0.1])    

                cube([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje+4*tloustka_bocnice+0.5,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje+4*tloustka_bocnice-vzdalenost_der-2*tloustka_bocnice-2-prekryti_tolerance,vyska_bocnice+sila_spodniho_krytu+0.2]);      

 } 

    
 } 
 
}

  
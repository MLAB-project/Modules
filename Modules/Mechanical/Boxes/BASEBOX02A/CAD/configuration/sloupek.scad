include <manufactury_conf.scad>
include <../configuration.scad>
use <MLAB_logo.scad>

//Funkce pro generovani sloupku
module sloupek(
    vyska,
    vzdalenost_der,
    vzdalenost_od_okraje,
    vzdalenost_od_diry,
    radidus_hrany,
    prumer_sroubu,
    prumer_matice,
    vyska_matice,
    posuv_dorazu,
   matice_sila_materialu,logo_vyska,logo_sirka) {
difference () {
union(){
    difference () {
        union () {
            color("green")
                translate([-(vzdalenost_od_okraje-radidus_hrany),-(vzdalenost_od_okraje-radidus_hrany),0])  // center top screw
                    cylinder(vyska, d=(2*radidus_hrany), center=true);

            color("cyan")
                translate([vzdalenost_der/4, vzdalenost_der/4, -vyska/2])
                    linear_extrude(height = vyska)
                        square([vzdalenost_der/2, vzdalenost_der/2], center = true);    

            color("gray")
                translate([-vzdalenost_od_okraje/2, vzdalenost_der/4, -vyska/2])
                    linear_extrude(height = vyska)
                        square([(vzdalenost_od_okraje), vzdalenost_der/2], center = true);  
                
            color("gray")
                translate([vzdalenost_der/4, -vzdalenost_od_okraje/2, -vyska/2])
                    linear_extrude(height = vyska)
                        square([vzdalenost_der/2, vzdalenost_od_okraje], center = true); 
                
            color("red")
                translate([-(vzdalenost_od_okraje-radidus_hrany)/2, -vzdalenost_od_okraje/2, -vyska/2])
                    linear_extrude(height = vyska)
                        square([vzdalenost_od_okraje-radidus_hrany, vzdalenost_od_okraje], center = true); 
               
            color("red")
                translate([-vzdalenost_od_okraje/2,-(vzdalenost_od_okraje-radidus_hrany)/2, -vyska/2])
                    linear_extrude(height = vyska)
                        square([vzdalenost_od_okraje, vzdalenost_od_okraje-radidus_hrany], center = true); 


        
        translate([-(vzdalenost_od_okraje),-(vzdalenost_od_okraje),vyska/2-vyska_podpery-matice_sila_materialu-vyska_matice-vyska_mat_pod_matici])
rotate([0, 0, 45])
cylinder(vyska_podpery,0,sqrt(2*((vzdalenost_od_okraje+vzdalenost_der/2)*(vzdalenost_od_okraje+vzdalenost_der/2))),$fn=4);
        
        
        }

       

   //na matku
        //prostredni dira
        translate([0,(((((prumer_matice)/2)+posuv_dorazu+vzdalenost_od_diry)/2)-(posuv_dorazu+prumer_matice/2)),((vyska)/2-vyska_matice/2)-matice_sila_materialu])  // center top screw
              
        cube([prumer_matice, prumer_matice+posuv_dorazu+vzdalenost_od_diry,vyska_matice], center = true);
        
        //ubrání materiálu protoze neni potreba ceky sloupek
        translate([0,0,-vyska/4+(vyska/2-vyska_matice-matice_sila_materialu-vyska_mat_pod_matici)/2-1])
            cube([prumer_matice+posuv_dorazu+vzdalenost_od_diry+vzdalenost_od_okraje+1, prumer_matice+posuv_dorazu+vzdalenost_od_diry+vzdalenost_od_okraje+1,vyska/2+(vyska/2-vyska_matice-matice_sila_materialu-vyska_mat_pod_matici+2)], center = true);


        

//----------------------------------------------------
//LOGO MLAB 
/*
        union (){
            translate ([0, -vzdalenost_od_okraje+1,0])  // ODROIDs passive components hole.
                rotate([0, 90, 270])
                    scale(v = [logo_sirka, logo_vyska, 0.3])
                        MLAB_logo_short();
                }  

       
*/       
       }
       
       //podbera pro sloupek aby sel tisknout
       translate([-(vzdalenost_od_okraje),-(vzdalenost_od_okraje),vyska/2-vyska_podpery-matice_sila_materialu-vyska_matice-vyska_mat_pod_matici])
rotate([0, 0, 45])
cylinder(vyska_podpery,0,sqrt(2*((vzdalenost_od_okraje+vzdalenost_der/2)*(vzdalenost_od_okraje+vzdalenost_der/2))),$fn=4);
}



//pro odstaranění nepotřebného z podpery
        
translate([-(vzdalenost_od_okraje),-(vzdalenost_od_okraje),0])     
translate([radidus_hrany,radidus_hrany,0])
        translate([-tloustka_bocnice,-tloustka_bocnice,0])
difference () {

translate([-2*vzdalenost_od_okraje,-2*vzdalenost_od_okraje,-vyska_bocnice/2])
minkowski()
    {
	cube([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice+4*vzdalenost_od_okraje,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice+4*vzdalenost_od_okraje,vyska_bocnice]);          // base plastics brick
        cylinder(r=radidus_hrany,h=0.1);
    }
translate([tloustka_bocnice,tloustka_bocnice,-vyska_bocnice/2-0.025])    
minkowski()
    {
	cube([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany,vyska_bocnice+0.05]);          // base plastics brick
        cylinder(r=radidus_hrany,h=0.1);
    }
 }   


//diry na sroub
            translate([0,0,vyska/2])  // center top screw
                cylinder(1+vyska/2, d=(prumer_sroubu), center=true);


}
}





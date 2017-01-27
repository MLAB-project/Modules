$fn=40; // model faces resolution.
include <AWSBOX01A_D02_2.scad>
include <../configuration.scad>

use <MLAB_logo.scad>



AWSBOX01A_D02(); 



 
    


module AWSBOX01A_D02(){

difference () {
    union () {
        
        //uchyt na sloup
        translate([((pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje+2*D02_sila_materialu+D02_dolerance_na_zasunuti)/2,-D02_prumer_obruby/2-2.5-D02_dotahova_vzdalenost/2,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-1*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu-D02_vyska_uchytky/2])
        rotate([0,0,90]) 
        WINDGAUGE02A_D02(6);
        
        
translate([radidus_hrany,radidus_hrany,0])
minkowski()
    {
	cube([(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*D02_sila_materialu+D02_dolerance_na_zasunuti,D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu]);          // base plastics brick
        cylinder(r=radidus_hrany,h=0.1);
    }
 
//válce
//vrchní zakulacení 1
translate([((pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*D02_sila_materialu+D02_dolerance_na_zasunuti)/2+radidus_hrany,radidus_hrany,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu]) 
 
 rotate([0,90,0])   
cylinder(h=(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*D02_sila_materialu+D02_dolerance_na_zasunuti, r=radidus_hrany, center=true);
    
//vrchní zakulacení 2
translate([((pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*D02_sila_materialu+D02_dolerance_na_zasunuti)/2+radidus_hrany,radidus_hrany+D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu]) 
 
 rotate([0,90,0])   
cylinder(h=(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*D02_sila_materialu+D02_dolerance_na_zasunuti, r=radidus_hrany, center=true);    

//vrchní zakulacení 3
translate([radidus_hrany,radidus_hrany+(D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu)/2,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu]) 
 
 rotate([0,90,90])   
cylinder(h=D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu, r=radidus_hrany, center=true); 

//vrchní zakulacení 4
translate([radidus_hrany+(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*D02_sila_materialu+D02_dolerance_na_zasunuti,radidus_hrany+(D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu)/2,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu]) 
 
 rotate([0,90,90])   
cylinder(h=D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu, r=radidus_hrany, center=true); 

//zakulacení koule
//1
translate([radidus_hrany+(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*D02_sila_materialu+D02_dolerance_na_zasunuti,D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu+radidus_hrany,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu]) 
 
 
sphere(d = 2*radidus_hrany, center=true, $fn=100);

//2
translate([radidus_hrany+(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*D02_sila_materialu+D02_dolerance_na_zasunuti,radidus_hrany,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu]) 
 
 
sphere(d = 2*radidus_hrany, center=true, $fn=100);

//3
translate([radidus_hrany,radidus_hrany,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu]) 
 
 
sphere(d = 2*radidus_hrany, center=true, $fn=100);


 
 
//4
translate([radidus_hrany,D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu+radidus_hrany,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu]) 

sphere(d = 2*radidus_hrany, center=true, $fn=100);


//vrchní kvádr
translate([radidus_hrany,radidus_hrany,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu])

	cube([(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*D02_sila_materialu+D02_dolerance_na_zasunuti,D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu,radidus_hrany]);

  }    


translate([D02_sila_materialu+radidus_hrany,D02_sila_materialu+radidus_hrany,-0.005])
minkowski()
    {
	cube([(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+D02_dolerance_na_zasunuti,D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu+0.01]);          // base plastics brick
        cylinder(r=radidus_hrany,h=0.1);
    }
    
    //odečet vrchního kvádru
    
translate([radidus_hrany,radidus_hrany,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu])

	cube([(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*D02_sila_materialu+D02_dolerance_na_zasunuti,D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu,radidus_hrany-D02_sila_materialu]);

//válce odečet
//vrchní zakulacení 1
translate([((pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*D02_sila_materialu+D02_dolerance_na_zasunuti)/2+radidus_hrany,radidus_hrany,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu]) 
 
 rotate([0,90,0])   
cylinder(h=(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*D02_sila_materialu+D02_dolerance_na_zasunuti, r=radidus_hrany-D02_sila_materialu, center=true);
    
//vrchní zakulacení 2
translate([((pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*D02_sila_materialu+D02_dolerance_na_zasunuti)/2+radidus_hrany,radidus_hrany+D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu]) 
 
 rotate([0,90,0])   
cylinder(h=(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*D02_sila_materialu+D02_dolerance_na_zasunuti, r=radidus_hrany-D02_sila_materialu, center=true);    

//vrchní zakulacení 3
translate([radidus_hrany,radidus_hrany+(D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu)/2,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu]) 
 
 rotate([0,90,90])   
cylinder(h=D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu, r=radidus_hrany-D02_sila_materialu, center=true); 

//vrchní zakulacení 4
translate([radidus_hrany+(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*D02_sila_materialu+D02_dolerance_na_zasunuti,radidus_hrany+(D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu)/2,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu]) 
 
 rotate([0,90,90])   
cylinder(h=D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu, r=radidus_hrany-D02_sila_materialu, center=true); 

//zakulacení koule odečet
//1
translate([radidus_hrany+(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*D02_sila_materialu+D02_dolerance_na_zasunuti,D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu+radidus_hrany,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu]) 
 
 
sphere(d = 2*radidus_hrany-2*D02_sila_materialu, center=true, $fn=100);

//2
translate([radidus_hrany+(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*D02_sila_materialu+D02_dolerance_na_zasunuti,radidus_hrany,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu]) 
 
 
sphere(d = 2*radidus_hrany-2*D02_sila_materialu, center=true, $fn=100);

//3
translate([radidus_hrany,radidus_hrany,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu]) 
 
 
sphere(d = 2*radidus_hrany-2*D02_sila_materialu, center=true, $fn=100);


 
 
//4
translate([radidus_hrany,D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu+radidus_hrany,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu]) 

sphere(d = 2*radidus_hrany-2*D02_sila_materialu, center=true, $fn=100);

// MLAB logo
translate ([((pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje+2*radidus_hrany+2*D02_sila_materialu+D02_dolerance_na_zasunuti)-40,D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu+2*radidus_hrany-0.4, 15])  
            rotate ([90,0,180])
                scale(v = [0.2, 0.2, 0.2])
                    MLAB_logo_short();   
       
    



}

//lišty na zasunutí plbase
translate([D02_sila_materialu,D02_sila_materialu+D02_vyska_boxu_pod_plbase-(2*D02_sila_materialu+tloustka_plbase+D02_dolerance_na_zasunuti)/2,D02_zapusteni_spodniho_krytu])

lista();


translate([(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje+2*D02_sila_materialu+D02_dolerance_na_zasunuti-D02_sila_materialu,D02_sila_materialu+D02_vyska_boxu_pod_plbase-(2*D02_sila_materialu+tloustka_plbase+D02_dolerance_na_zasunuti)/2+radidus_hrany,D02_zapusteni_spodniho_krytu])
 rotate([0,0,180])
lista();

//drzáky spodního krytu

translate([0,(D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu+2*radidus_hrany)/2-(prumer_sroubu+3*D02_sila_materialu)/2,D02_zapusteni_spodniho_krytu+matka_vyska])

drzak_sroubu();


translate([(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje+2*D02_sila_materialu+D02_dolerance_na_zasunuti,(D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu+2*radidus_hrany)/2+(prumer_sroubu+3*D02_sila_materialu)/2,D02_zapusteni_spodniho_krytu+matka_vyska])
 rotate([0,0,180])
drzak_sroubu();

//lišty aby nepropadávalo čelo

//lišta 1 osa x
translate([(3/2*vzdalenost_der)+D02_sila_materialu,D02_sila_materialu,D02_zapusteni_spodniho_krytu])
rantl((pocet_der1-3)*vzdalenost_der);

//lišta 2 osa x
translate([(pocet_der1-3)*vzdalenost_der+(3/2*vzdalenost_der)+D02_sila_materialu,D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+D02_sila_materialu+2*radidus_hrany,D02_zapusteni_spodniho_krytu])
     rotate([0,0,180])
        rantl((pocet_der1-3)*vzdalenost_der);
//lišta 3 osa y        
translate([D02_sila_materialu,D02_vyska_boxu_nad_plbase-2*radidus_hrany+D02_vyska_boxu_pod_plbase+D02_sila_materialu+D02_dolerance_na_zasunuti+10,D02_zapusteni_spodniho_krytu])
 rotate([0,0,-90])
        rantl(D02_vyska_boxu_nad_plbase-2*radidus_hrany);
  
  //lišta 4 osa y
translate([(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje+D02_sila_materialu+D02_dolerance_na_zasunuti,D02_vyska_boxu_pod_plbase+D02_sila_materialu+D02_dolerance_na_zasunuti+10,D02_zapusteni_spodniho_krytu])
 rotate([0,0,90])
        rantl(D02_vyska_boxu_nad_plbase-2*radidus_hrany);                


}

module lista(){
    translate([0,0,D02_sila_materialu])
difference () {

union () {
	cube([D02_sila_materialu,2*D02_sila_materialu+tloustka_plbase+D02_dolerance_na_zasunuti,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany-D02_sila_materialu]);
    
   
    translate([0,(2*D02_sila_materialu+tloustka_plbase+D02_dolerance_na_zasunuti)/2,0]) 
 
 rotate([0,90,90])   
cylinder(h=2*D02_sila_materialu+tloustka_plbase+D02_dolerance_na_zasunuti, r=D02_sila_materialu, center=true);
    
    //vrchni zakulaceni
    translate([0,(2*D02_sila_materialu+tloustka_plbase+D02_dolerance_na_zasunuti)/2,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany-D02_sila_materialu]) 
     rotate([0,90,90])   
cylinder(h=2*D02_sila_materialu+tloustka_plbase+D02_dolerance_na_zasunuti, r=D02_sila_materialu, center=true);
}


translate([0,D02_sila_materialu,-D02_sila_materialu])
cube([D02_sila_materialu,tloustka_plbase+D02_dolerance_na_zasunuti,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany]);

}


}


module drzak_sroubu(){
    translate([0,0,0])
difference () {
    
    union () {
        //spodní kvádr
        cube([drzak_sroubu_hloubka,prumer_sroubu+3*D02_sila_materialu,drzak_sroubu_vyska]);
        
    
       //vrchní kuzel 
        
    translate([0,(prumer_sroubu+3*D02_sila_materialu)/2,drzak_sroubu_vyska])
    cylinder(h=drzak_sroubu_vyska, r1=drzak_sroubu_hloubka, r2=0, center=false);
    }
    
    //otvor na šroub
    translate([drzak_sroubu_hloubka-prumer_sroubu/2-1.5*D02_sila_materialu,(prumer_sroubu+3*D02_sila_materialu)/2,-0.001])
     cylinder(h=drzak_sroubu_vyska+1.1, r=prumer_sroubu/2, center=false);
    
    //odstranění kužele
    difference () {
     translate([-3/2*drzak_sroubu_hloubka,-3/2*drzak_sroubu_hloubka,0])   
        
        cube([3*drzak_sroubu_hloubka,3*drzak_sroubu_hloubka,3*drzak_sroubu_vyska]);
        
         cube([drzak_sroubu_hloubka,prumer_sroubu+3*D02_sila_materialu,3*drzak_sroubu_vyska]);
        
        
        
        
        }
    
}
  }  

//aby čelo nepropadávalo  
module rantl(delka_rantlu){
    translate([0,0,0])
difference () {

union () {
	cube([delka_rantlu,D02_sila_materialu,D02_sila_materialu]);
    
   
    translate([delka_rantlu/2,0,D02_sila_materialu]) 
 
 rotate([0,90,0])   
cylinder(h=delka_rantlu, r=D02_sila_materialu, center=true);
   
    
}


translate([0,-D02_sila_materialu,0])
cube([delka_rantlu,D02_sila_materialu,2*D02_sila_materialu]);

}

}

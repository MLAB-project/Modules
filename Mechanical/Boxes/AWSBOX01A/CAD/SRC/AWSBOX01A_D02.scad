$fn=40; // model faces resolution.
include <WINDGAUGE02A_D02.scad>

//WINDGAUGE02A_D01 //uchyt velky
D01_material_pod_zavitem=5;
D01_material_za_zavitem=3;
D01_material_pred_zavitem=2;
D01_delka_tyce=60;
D01_sirka_tyce=10;

//WINDGAUGE02A_D02 //uchyt na sloup
D02_sila_materialu=5;
D02_vyska_uchytky=40;
D02_prumer_obruby=27; //3/4 trubka
D02_delka_celeho_uchytu=60;
D02_dotahova_vzdalenost=1.5;
D02_prumer_uchytneho_sroubu=4.2;
D02_sirka_matky=9.2; //pro M4
D02_vyska_matky=3;


pocet_der1=10;
pocet_der2=3;
radidus_hrany=5;
vzdalenost_der=10.16;
vzdalenost_od_okraje=vzdalenost_der/2;
prumer_sroubu=3.4;
tloustka_plbase=2;
prekryti_der=-2;

D02_vyska_boxu_pod_plbase=6;
D02_vyska_boxu_nad_plbase=60;
D02_zapusteni_spodniho_krytu=10;
D02_sila_materialu=1.2;
D02_dolerance_na_zasunuti=0.4; //tolerance je pro obě strany

drzak_sroubu_hloubka=15;
drzak_sroubu_vyska=10;
matka_vyska=3;





plbase(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der);

module plbase(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der){

difference () {
    union () {
        
        //uchyt na sloup
        translate([((pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje+2*radidus_hrany+2*D02_sila_materialu+D02_dolerance_na_zasunuti)/2,-D02_prumer_obruby/2-2.5-D02_dotahova_vzdalenost/2,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-1*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu-D02_vyska_uchytky/2])
        rotate([0,0,90]) 
        WINDGAUGE02A_D02(5);
        
        
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

//odečet spodního kvádru
  
translate([D02_sila_materialu+D02_dolerance_na_zasunuti+radidus_hrany,D02_sila_materialu+radidus_hrany,-0.005])
minkowski()
    {
	cube([(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany,D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu+0.01]);          // base plastics brick
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
}

module lista(){
    translate([0,0,D02_sila_materialu])
difference () {

union () {
	cube([D02_sila_materialu,2*D02_sila_materialu+tloustka_plbase+D02_dolerance_na_zasunuti,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany-2*D02_sila_materialu]);
    
   
    translate([0,(2*D02_sila_materialu+tloustka_plbase+D02_dolerance_na_zasunuti)/2,0]) 
 
 rotate([0,90,90])   
cylinder(h=2*D02_sila_materialu+tloustka_plbase+D02_dolerance_na_zasunuti, r=D02_sila_materialu, center=true);
    
    //vrchni zakulaceni
    translate([0,(2*D02_sila_materialu+tloustka_plbase+D02_dolerance_na_zasunuti)/2,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany-2*D02_sila_materialu]) 
     rotate([0,90,90])   
cylinder(h=2*D02_sila_materialu+tloustka_plbase+D02_dolerance_na_zasunuti, r=D02_sila_materialu, center=true);
}


translate([0,D02_sila_materialu,-D02_sila_materialu])
cube([D02_sila_materialu,tloustka_plbase+D02_dolerance_na_zasunuti,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany-D02_sila_materialu]);

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
     cylinder(h=3*drzak_sroubu_vyska, r=prumer_sroubu/2, center=false);
    
    //odstranění kužele
    difference () {
     translate([-3/2*drzak_sroubu_hloubka,-3/2*drzak_sroubu_hloubka,0])   
        
        cube([3*drzak_sroubu_hloubka,3*drzak_sroubu_hloubka,3*drzak_sroubu_vyska]);
        
         cube([drzak_sroubu_hloubka,prumer_sroubu+3*D02_sila_materialu,3*drzak_sroubu_vyska]);
        
        
        
        
        }
    
}
  }  
  
  
  
  
$fn=40; // model faces resolution.
include <../configuration.scad>




//Drzak na sloup - cast bez drzaku anemometru
module WINDGAUGE02A_D02(D02_sila_materialu){
	
difference()
    {
    union()
        {
        //základní válec
        cylinder(h=D02_vyska_uchytky,r=(D02_prumer_obruby+2*D02_sila_materialu)/2,center=true);
		//úchytové plošky		
        translate([D02_dotahova_vzdalenost+D02_sila_materialu/2,0,0]){cube([D02_sila_materialu,D02_delka_celeho_uchytu,D02_vyska_uchytky],center=true);}
		}
    
    //válec na odečet
    cylinder(h=D02_vyska_uchytky+0.01,r=D02_prumer_obruby/2,center=true);     
	        
    //kvádr na odecet
	translate([D02_dotahova_vzdalenost-(D02_prumer_obruby+2*D02_sila_materialu)/2,0,0]){cube([D02_prumer_obruby+2*D02_sila_materialu,D02_prumer_obruby+2*D02_sila_materialu,D02_vyska_uchytky+0.01],center=true);}
		
	//otvory na sroub
	translate([D02_dotahova_vzdalenost,(D02_delka_celeho_uchytu/2-D02_prumer_obruby/2-D02_sila_materialu)/2+D02_prumer_obruby/2+D02_sila_materialu,D02_vyska_uchytky/4]){rotate([0,90,0]){cylinder(h=D02_sila_materialu+0.01,r=D02_prumer_uchytneho_sroubu/2);}}
    
     //drzak matky
    translate([D02_dotahova_vzdalenost+D02_sila_materialu-D02_vyska_matky,(D02_delka_celeho_uchytu/2-D02_prumer_obruby/2-D02_sila_materialu)/2+D02_prumer_obruby/2+D02_sila_materialu,D02_vyska_uchytky/4]){rotate([0,90,0]){ cylinder (h = D02_vyska_matky+0.01, r= (D02_sirka_matky+0.2)/2, $fn=6);}}
   
     
        
    translate([D02_dotahova_vzdalenost,(D02_delka_celeho_uchytu/2-D02_prumer_obruby/2-D02_sila_materialu)/2+D02_prumer_obruby/2+D02_sila_materialu,-D02_vyska_uchytky/4]){rotate([0,90,0]){cylinder(h=D02_sila_materialu+0.01,r=D02_prumer_uchytneho_sroubu/2);}}
    
     //drzak matky
    translate([D02_dotahova_vzdalenost+D02_sila_materialu-D02_vyska_matky,(D02_delka_celeho_uchytu/2-D02_prumer_obruby/2-D02_sila_materialu)/2+D02_prumer_obruby/2+D02_sila_materialu,-D02_vyska_uchytky/4]){rotate([0,90,0]){ cylinder (h = D02_vyska_matky+0.01, r= (D02_sirka_matky+0.2)/2, $fn=6);}}
        
	translate([D02_dotahova_vzdalenost,-((D02_delka_celeho_uchytu/2-D02_prumer_obruby/2-D02_sila_materialu)/2+D02_prumer_obruby/2+D02_sila_materialu),-D02_vyska_uchytky/4]){rotate([0,90,0]){cylinder(h=D02_sila_materialu+0.01,r=D02_prumer_uchytneho_sroubu/2);}}
    
     //drzak matky
    translate([D02_dotahova_vzdalenost+D02_sila_materialu-D02_vyska_matky,-((D02_delka_celeho_uchytu/2-D02_prumer_obruby/2-D02_sila_materialu)/2+D02_prumer_obruby/2+D02_sila_materialu),-D02_vyska_uchytky/4]){rotate([0,90,0]){ cylinder (h = D02_vyska_matky+0.01, r= (D02_sirka_matky+0.2)/2, $fn=6);}}

    translate([D02_dotahova_vzdalenost,-((D02_delka_celeho_uchytu/2-D02_prumer_obruby/2-D02_sila_materialu)/2+D02_prumer_obruby/2+D02_sila_materialu),D02_vyska_uchytky/4]){rotate([0,90,0]){cylinder(h=D02_sila_materialu+0.01,r=D02_prumer_uchytneho_sroubu/2);}}	
    
     //drzak matky
    translate([D02_dotahova_vzdalenost+D02_sila_materialu-D02_vyska_matky,-((D02_delka_celeho_uchytu/2-D02_prumer_obruby/2-D02_sila_materialu)/2+D02_prumer_obruby/2+D02_sila_materialu),D02_vyska_uchytky/4]){rotate([0,90,0]){ cylinder (h = D02_vyska_matky+0.01, r= (D02_sirka_matky+0.2)/2, $fn=6);}}
	
    }
}

module WINDGAUGE02A_D02_2(D02_sila_materialu){
	
difference()
    {
    union()
        {
        //základní válec
        cylinder(h=D02_vyska_uchytky,r=(D02_prumer_obruby+2*D02_sila_materialu)/2,center=true);
		//úchytové plošky		
        translate([D02_dotahova_vzdalenost+D02_sila_materialu/2,0,0]){cube([D02_sila_materialu,D02_delka_celeho_uchytu,D02_vyska_uchytky],center=true);}
		}
    
    //válec na odečet
    cylinder(h=D02_vyska_uchytky+0.01,r=D02_prumer_obruby/2,center=true);     
	        
    //kvádr na odecet
	translate([D02_dotahova_vzdalenost-(D02_prumer_obruby+2*D02_sila_materialu)/2,0,0]){cube([D02_prumer_obruby+2*D02_sila_materialu,D02_prumer_obruby+2*D02_sila_materialu,D02_vyska_uchytky+0.01],center=true);}
		
	//otvory na sroub
	translate([D02_dotahova_vzdalenost,(D02_delka_celeho_uchytu/2-D02_prumer_obruby/2-D02_sila_materialu)/2+D02_prumer_obruby/2+D02_sila_materialu,D02_vyska_uchytky/4]){rotate([0,90,0]){cylinder(h=D02_sila_materialu+0.01,r=D02_prumer_uchytneho_sroubu/2);}}
    
    
   
     
        
    translate([D02_dotahova_vzdalenost,(D02_delka_celeho_uchytu/2-D02_prumer_obruby/2-D02_sila_materialu)/2+D02_prumer_obruby/2+D02_sila_materialu,-D02_vyska_uchytky/4]){rotate([0,90,0]){cylinder(h=D02_sila_materialu+0.01,r=D02_prumer_uchytneho_sroubu/2);}}
    
     
        
	translate([D02_dotahova_vzdalenost,-((D02_delka_celeho_uchytu/2-D02_prumer_obruby/2-D02_sila_materialu)/2+D02_prumer_obruby/2+D02_sila_materialu),-D02_vyska_uchytky/4]){rotate([0,90,0]){cylinder(h=D02_sila_materialu+0.01,r=D02_prumer_uchytneho_sroubu/2);}}
    
    

    translate([D02_dotahova_vzdalenost,-((D02_delka_celeho_uchytu/2-D02_prumer_obruby/2-D02_sila_materialu)/2+D02_prumer_obruby/2+D02_sila_materialu),D02_vyska_uchytky/4]){rotate([0,90,0]){cylinder(h=D02_sila_materialu+0.01,r=D02_prumer_uchytneho_sroubu/2);}}	
    
    
	
    }
}


//WINDGAUGE02A_D02();

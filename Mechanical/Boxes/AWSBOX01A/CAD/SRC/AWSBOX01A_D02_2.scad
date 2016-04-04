$fn=40; // model faces resolution.


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

module WINDGAUGE02A_D02_2(){
	
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

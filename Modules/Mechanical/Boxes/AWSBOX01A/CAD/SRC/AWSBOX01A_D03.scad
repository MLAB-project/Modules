include <../configuration.scad>
AWSBOX01A_D03();
module AWSBOX01A_D03(){
difference () {

translate([D02_sila_materialu+3/2*D02_dolerance_na_zasunuti+radidus_hrany,D02_sila_materialu+radidus_hrany+D02_dolerance_na_zasunuti/2,0])
minkowski()
    {
	cube([(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany-D02_dolerance_na_zasunuti,D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase-D02_dolerance_na_zasunuti,D02_sila_materialu]);          // base plastics brick
        cylinder(r=radidus_hrany,h=0.1);
    }
    
    
    
    //drzáky spodního krytu

translate([0,(D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu+2*radidus_hrany)/2-(prumer_sroubu+3*D02_sila_materialu)/2,-0.01])

translate([drzak_sroubu_hloubka-prumer_sroubu/2-1.5*D02_sila_materialu,(prumer_sroubu+3*D02_sila_materialu)/2,-0.001])
     cylinder(h=3*drzak_sroubu_vyska, r=prumer_sroubu/2, center=false);


translate([(pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje+2*D02_sila_materialu+D02_dolerance_na_zasunuti,(D02_vyska_boxu_pod_plbase+D02_vyska_boxu_nad_plbase+2*D02_sila_materialu+2*radidus_hrany)/2+(prumer_sroubu+3*D02_sila_materialu)/2,-0.01])
 rotate([0,0,180])

translate([drzak_sroubu_hloubka-prumer_sroubu/2-1.5*D02_sila_materialu,(prumer_sroubu+3*D02_sila_materialu)/2,-0.001])
     cylinder(h=3*drzak_sroubu_vyska, r=prumer_sroubu/2, center=false);
    
    
      }
  }    
      
 
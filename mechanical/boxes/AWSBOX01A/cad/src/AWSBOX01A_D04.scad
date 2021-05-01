include <../configuration.scad>
use <AWSBOX01A_D03.scad>
use <AWSBOX01A_O01.scad>

AWSBOX01A_D04();

module AWSBOX01A_D04(){
    
    
    difference () {
        AWSBOX01A_D03();
    //posuv na střed první díry v ose X a na ose y na hranu plbase vrchní
translate([vzdalenost_od_okraje+D02_sila_materialu+D02_dolerance_na_zasunuti/2,D02_sila_materialu+D02_vyska_boxu_pod_plbase+(tloustka_plbase+D02_dolerance_na_zasunuti)/2,0])
    {
    
        //nastavení posunu otvoru v násobcích děr
        translate([vzdalenost_der*1,0,0])
        I2CDIFF01A();
        
        //nastavení posunu otvoru v násobcích děr
        translate([vzdalenost_der*(1+4),0,0])
        
        RJ12_3x2();
    }



    
    
    }
    
       }
       
       
       
       
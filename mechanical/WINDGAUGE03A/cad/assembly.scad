use <src/WINDGAUGE_D01.scad>
use <src/WINDGAUGE_D02.scad>
use <src/WINDGAUGE_R01.scad>
use <src/WINDGAUGE_R02.scad>
use <src/WINDGAUGE_R03.scad>
use <src/WINDGAUGE_R04.scad>
use <src/WINDGAUGE_R05.scad>
use <src/WINDGAUGE_S01.scad>
use <src/WINDGAUGE_S02.scad>
use <src/WINDGAUGE_S03.scad>

include <configuration.scad>

posunuti_dilu=0; //posunuti dilu od sebe
difference()
{     
    union()
    {  
    //WINDGAUGE1A_D01  DRŽÁK
    //-------------------------------------------------------------
    //-------------------------------------------------------------


        translate([0,90,-2*posunuti_dilu+D02_vyska_uchytky/2]) 
            rotate(a=[0,0,90])
                WINDGAUGE01A_D01_2();

        translate([0,0,-2*posunuti_dilu])        
            WINDGAUGE01A_D02();

        translate([0,0,S01_vyska+S01_sila_materialu+3*posunuti_dilu])
            rotate(a=[0,180,0])
                WINDGAUGE01A_S01();        

        WINDGAUGE01A_S02(); 

        translate([0,0,S01_vyska_spodniho_zavitu+S01_sila_drzaku_RJ11-0.3-4*posunuti_dilu])

        WINDGAUGE01A_S03(); 

        translate([0,0,S01_vyska+2*S01_sila_materialu+3*posunuti_dilu+8*posunuti_dilu+R04_zavit_vyska+R02_zavit_vyska])
            rotate(a=[0,0,0])
                WINDGAUGE01A_R01(); 


        translate([0,0,S01_vyska+2*S01_sila_materialu+3*posunuti_dilu+6*posunuti_dilu+R04_zavit_vyska])
            rotate(a=[0,0,0])
                WINDGAUGE01A_R02(); 
                
        translate([-R02_sila_materialu_kridla/2,S01_prumer_vnitrni/2+10,S01_vyska+2*S01_sila_materialu+3*posunuti_dilu+6*posunuti_dilu+R04_zavit_vyska+7])        rotate(a=[90,0,90])
            WINDGAUGE01A_R05(); 

        translate([0,0,S01_vyska+2*S01_sila_materialu+3*posunuti_dilu+3*posunuti_dilu])

        WINDGAUGE01A_R03(); 


        translate([0,0,S01_vyska+2*S01_sila_materialu+3*posunuti_dilu+1*posunuti_dilu+R04_zavit_vyska])
            rotate(a=[0,180,0])
                WINDGAUGE01A_R04(); 
      
    }     
    translate([3,0,0])
        cube(300); // cut to show internal relief
}
  
  

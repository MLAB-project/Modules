use <SRC/WINDGAUGE01A_D01.scad>
use <SRC/WINDGAUGE01A_D02.scad>
use <SRC/WINDGAUGE01A_R01.scad>
use <SRC/WINDGAUGE01A_R02.scad>
use <SRC/WINDGAUGE01A_R03.scad>
use <SRC/WINDGAUGE01A_R04.scad>
use <SRC/WINDGAUGE01A_R05.scad>
use <SRC/WINDGAUGE01A_S01.scad>
use <SRC/WINDGAUGE01A_S02.scad>
use <SRC/WINDGAUGE01A_S03.scad>

include <configuration.scad>

barva_D01 = "yellow";
barva_D02 = "cyan";
barva_L01 = "green";
barva_R01 = "green";
barva_R02 = "yellow";
barva_R03 = "cyan";
barva_R04 = "cyan";
barva_S01 = "red";
barva_S02 = "green";
barva_S03 = "yellow";



posunuti_dilu=0; //posunuti dilu od sebe
difference()
{     
    union()
    {  
    //WINDGAUGE1A_D01  DRŽÁK
    //-------------------------------------------------------------
    //-------------------------------------------------------------


    color(barva_D01)
        translate([0,90,-2*posunuti_dilu+D02_vyska_uchytky/2]) 
            rotate(a=[0,0,90])
                WINDGAUGE01A_D01_2();
           
            
    //WINDGAUGE01A_D02  DRŽÁK druhy dil
    //-------------------------------------------------------------
    //-------------------------------------------------------------

 
     

     
    //WINDGAUGE02A_S01  stator velky dil
    //-------------------------------------------------------------
       
          color(barva_D01)
        translate([0,0,-2*posunuti_dilu])        
            WINDGAUGE01A_D02();
    //-------------------------------------------------------------

    color(barva_S01)
        translate([0,0,S01_vyska+S01_sila_materialu+3*posunuti_dilu])
            rotate(a=[0,180,0])
                WINDGAUGE01A_S01();        

    color(barva_S02)      
        WINDGAUGE01A_S02(); 

    color(barva_S03)  
        translate([0,0,S01_vyska_spodniho_zavitu+S01_sila_drzaku_RJ11-0.3-4*posunuti_dilu])

    WINDGAUGE01A_S03(); 

    color(barva_R01)  
        translate([0,0,S01_vyska+2*S01_sila_materialu+3*posunuti_dilu+8*posunuti_dilu+R04_zavit_vyska+R02_zavit_vyska])
            rotate(a=[0,0,0])
                WINDGAUGE01A_R01(); 


    color(barva_R02)  
        translate([0,0,S01_vyska+2*S01_sila_materialu+3*posunuti_dilu+6*posunuti_dilu+R04_zavit_vyska])
            rotate(a=[0,0,0])
                WINDGAUGE01A_R02(); 
                
       translate([-R02_sila_materialu_kridla/2,S01_prumer_vnitrni/2+10,S01_vyska+2*S01_sila_materialu+3*posunuti_dilu+6*posunuti_dilu+R04_zavit_vyska+7])        rotate(a=[90,0,90])
                WINDGAUGE01A_R05(); 

    color(barva_R03)  
        translate([0,0,S01_vyska+2*S01_sila_materialu+3*posunuti_dilu+3*posunuti_dilu])

    WINDGAUGE01A_R03(); 


    color(barva_R04)  
        translate([0,0,S01_vyska+2*S01_sila_materialu+3*posunuti_dilu+1*posunuti_dilu+R04_zavit_vyska])
            rotate(a=[0,180,0])
                WINDGAUGE01A_R04(); 


           
    //WINDGAUGE02A_L01  lopatka 1
    //-------------------------------------------------------------
    //-------------------------------------------------------------
    /*
    color(barva_L01)
        translate([0,0,10])
                rotate(a=[0,0,0])
                    WINDGAUGE02A_L01();      
          
    */
      
    }     
    translate([3,0,0])
    cube(300); // cut to show internal relief
}
  
  

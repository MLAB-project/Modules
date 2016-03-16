use <SRC/WINDGAUGE02A_D01.scad>
use <SRC/WINDGAUGE02A_D02.scad>
use <SRC/WINDGAUGE02A_L01.scad>
use <SRC/WINDGAUGE02A_R01.scad>
use <SRC/WINDGAUGE02A_R02.scad>
use <SRC/WINDGAUGE02A_R03.scad>
use <SRC/WINDGAUGE02A_S01.scad>
use <SRC/WINDGAUGE02A_S02.scad>
use <SRC/WINDGAUGE02A_S03.scad>

include <configuration.scad>

barva_D01 = "yellow";
barva_D02 = "cyan";
barva_L01 = "green";
barva_R01 = "green";
barva_R02 = "yellow";
barva_R03 = "cyan";
barva_S01 = "red";
barva_S02 = "green";
barva_S03 = "yellow";



posunuti_dilu=10; //posunuti dilu od sebe
difference()
        {     
union()
 {  
//WINDGAUGE02A_D01  DRŽÁK
//-------------------------------------------------------------
//-------------------------------------------------------------

/*
color(barva_D01)
    translate([0,0,0])
        
        WINDGAUGE02A_D01();
*/       
        
//WINDGAUGE02A_D02  DRŽÁK druhy dil
//-------------------------------------------------------------
//-------------------------------------------------------------


 

 
//WINDGAUGE02A_S01  stator velky dil
//-------------------------------------------------------------
//-------------------------------------------------------------

color(barva_S01)
    translate([0,0,0])
             
 
WINDGAUGE02A_S01();        
       
 WINDGAUGE02A_S02();   
       
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
cube(300); // cut to show internal relief
  }
  
  

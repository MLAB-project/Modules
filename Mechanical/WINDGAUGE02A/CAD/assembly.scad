use <SRC/WINDGAUGE02A_D01.scad>
use <SRC/WINDGAUGE02A_D02.scad>
use <SRC/WINDGAUGE02A_R01.scad>
use <SRC/WINDGAUGE02A_R02.scad>
use <SRC/WINDGAUGE02A_R03.scad>
use <SRC/WINDGAUGE02A_S01.scad>
use <SRC/WINDGAUGE02A_S02.scad>
use <SRC/WINDGAUGE02A_S03.scad>

include <configuration.scad>

barva_D01 = "yellow";
barva_D02 = "cyan";
barva_R01 = "green";
barva_R02 = "yellow";
barva_R03 = "cyan";
barva_R04 = "green";
barva_S01 = "red";
barva_S02 = "green";
barva_S03 = "yellow";

//Ukazka 3D modelu anemometru

posunuti_dilu=0; //posunuti dilu od sebe 10 nebo 0
difference()
        {     
union()
 {  
//WINDGAUGE02A_D01  DRŽÁK
//-------------------------------------------------------------
//-------------------------------------------------------------


color(barva_D01)
    translate([0,0,-3*posunuti_dilu])
        
        WINDGAUGE02A_D01();
       
        
//WINDGAUGE02A_D02  DRŽÁK druhy dil
//-------------------------------------------------------------
//-------------------------------------------------------------

color(barva_D02)
    translate([0,100,D02_vyska_uchytky/2-3*posunuti_dilu])
        rotate ([0,0,90])
        WINDGAUGE02A_D02_2();
 

 
//WINDGAUGE02A_S01
//-------------------------------------------------------------
//-------------------------------------------------------------
color(barva_S01)
    translate([0,0,2*D01_material_pod_zavitem+S01_vyska+2*posunuti_dilu])
        rotate ([180,0,0])
            WINDGAUGE02A_S01(); 
             
 
//WINDGAUGE02A_S03
//-------------------------------------------------------------
//-------------------------------------------------------------
color(barva_S03)
    translate([0,0,D01_material_pod_zavitem-posunuti_dilu])
        rotate ([0,0,0])
            WINDGAUGE02A_S03();  
      
//WINDGAUGE02A_S02
//-------------------------------------------------------------
//-------------------------------------------------------------
color(barva_S02)
    translate([0,0,D01_material_pod_zavitem])
        rotate ([0,0,0])
            WINDGAUGE02A_S02();       
       
 //WINDGAUGE02A_R01 
//-------------------------------------------------------------
//-------------------------------------------------------------
color(barva_R01)
    translate([0,0,D01_material_pod_zavitem+S01_vyska+3*posunuti_dilu])
        rotate ([0,0,0])
            WINDGAUGE02A_R01();   
       


  
 }     
cube(300); // cut to show internal relief
  }
  
  

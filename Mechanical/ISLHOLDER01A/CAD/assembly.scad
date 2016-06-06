use <SRC/ISLHOLDER01A_D01.scad>
use <SRC/ISLHOLDER01A_D02.scad>
use <SRC/ISLHOLDER01A_D03.scad>
use <SRC/ISLHOLDER01A_D04.scad>


barva_D01 = "yellow";
barva_D02 = "cyan";
barva_D03 = "green";
barva_D04 = "red";




difference()
        {     
union()
 {  



 


color(barva_D01)
    translate([0,0,0])
             
 
ISLHOLDER01A_D01();        
       
 ISLHOLDER01A_D03();   
       
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
//cube(300); // cut to show internal relief
  }
  
  

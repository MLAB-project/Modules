$fn=40; // model faces resolution.
//include <../configuration.scad>



//stator4 (roztec_sroubu,uchyt_prumer_sroubu,vyska_stator4,sila_materialu,uchyt_vyska_matky,uchyt_prumer_orechu,kabel_prumer);

module stator4 (roztec_sroubu,uchyt_prumer_sroubu,vyska_stator4,sila_materialu,uchyt_vyska_matky,uchyt_prumer_orechu,kabel_prumer)
{
difference()
{
    //translate([90,0,0])
        
    cube(size = [roztec_sroubu+uchyt_prumer_orechu+2*sila_materialu,roztec_sroubu+uchyt_prumer_orechu+2*sila_materialu, vyska_stator4], center = true);
    
//díry pro uchycení anemometru
     translate([roztec_sroubu/2,roztec_sroubu/2,0])
 cylinder (h = vyska_stator4+0.1, r=uchyt_prumer_sroubu/2, center = true, $fn=100);
    
      translate([-roztec_sroubu/2,roztec_sroubu/2,0])
 cylinder (h = vyska_stator4+0.1, r=uchyt_prumer_sroubu/2, center = true, $fn=100);  

    translate([roztec_sroubu/2,-roztec_sroubu/2,0])
 cylinder (h = vyska_stator4+0.1, r=uchyt_prumer_sroubu/2, center = true, $fn=100);
 
     translate([-roztec_sroubu/2,-roztec_sroubu/2,0])
 cylinder (h = vyska_stator4+0.1, r=uchyt_prumer_sroubu/2, center = true, $fn=100);
    
    
    //dira na kabel
        
 cylinder (h = vyska_stator4+0.1, r=(kabel_prumer/2+0.1), center = true, $fn=100);
    
    //díry pro matky
    translate([roztec_sroubu/2,roztec_sroubu/2,vyska_stator4/2-uchyt_vyska_matky/2])
 cylinder (h = uchyt_vyska_matky+0.1, r=uchyt_prumer_orechu/2, center = true, $fn=100);
    
      translate([-roztec_sroubu/2,roztec_sroubu/2,vyska_stator4/2-uchyt_vyska_matky/2])
 cylinder (h = uchyt_vyska_matky+0.1, r=uchyt_prumer_orechu/2, center = true, $fn=100);  

    translate([roztec_sroubu/2,-roztec_sroubu/2,vyska_stator4/2-uchyt_vyska_matky/2])
 cylinder (h = uchyt_vyska_matky+0.1, r=uchyt_prumer_orechu/2, center = true, $fn=100);
 
     translate([-roztec_sroubu/2,-roztec_sroubu/2,vyska_stator4/2-uchyt_vyska_matky/2])
 cylinder (h = uchyt_vyska_matky+0.1, r=uchyt_prumer_orechu/2, center = true, $fn=100);
 }   
  
  }   
  


$fn=40; // model faces resolution.
include <../configuration.scad>
include <polyScrewThread_r1.scad>
PI=3.141592;




WINDGAUGE02A_R01();
 


//Model lopatky
module WINDGAUGE02A_R01()
{
difference()
    {       
    union()
        {
        //koule vrchní - kryt
        translate([0,0,R01_vyska_preryti_statoru])
            sphere(d = (S01_prumer_vnitrniB/2+5*S01_sila_materialu)*2, $fn=100);       
               
        //spodní válec        
        cylinder (h = R01_vyska_preryti_statoru, r=S01_prumer_vnitrniB/2+5*S01_sila_materialu, $fn=100); 
                    
        //lopatka 1   
        translate([L01_hrana_drzaku_a/2,-(S01_prumer_vnitrniB/2+2*S01_sila_materialu+L01_delka_uchytu+L01_prumer_lopatky/2),0])
            lopatka();
            
        //lopatka 2 
        rotate([0, 0,120])   
            translate([L01_hrana_drzaku_a/2,-(S01_prumer_vnitrniB/2+2*S01_sila_materialu+L01_delka_uchytu+L01_prumer_lopatky/2),0])
                lopatka();

        //lopatka 3
        rotate([0, 0, 240])    
            translate([L01_hrana_drzaku_a/2,-(S01_prumer_vnitrniB/2+2*S01_sila_materialu+L01_delka_uchytu+L01_prumer_lopatky/2),0])
                lopatka();
    
  
        }    

    //Odečet spodního válce
    translate([0,0,-(S01_prumer_vnitrniB/2+2*S01_sila_materialu)])
        cylinder (h = R01_vyska_preryti_statoru+(S01_prumer_vnitrniB/2+2*S01_sila_materialu), r=S01_prumer_vnitrniB/2+4*S01_sila_materialu, $fn=100);
    
    //odecet koule
    translate([0,0,R01_vyska_preryti_statoru])
        sphere(d = (S01_prumer_vnitrniB/2+4*S01_sila_materialu)*2, $fn=100); 
   
        
        //odečet přesahující koule
        translate([0,0,-R01_vyska_preryti_statoru])
       cylinder (h = R01_vyska_preryti_statoru, r=S01_prumer_vnitrniB/2+5*S01_sila_materialu, $fn=100);  
        
        }  
    
difference()
    {       
    union()
        {
        //závit na ukotvení rotoru
        //zakladni material
        cylinder (h = (S01_prumer_vnitrniB/2+4*S01_sila_materialu)+R01_vyska_preryti_statoru, r=(lozisko_prumer_vnejsi/2-1), $fn=100);     
            
        vyztuhy();             
        }

    //vnitrni zavit  
    translate([0,0,-5])
        screw_thread((12),3,55,R01_vyska_preryti_statoru+10,PI/2,2); 
 
    //za závitem aby to slo tisknout          
    translate([0,0,R01_vyska_preryti_statoru+5]) 
        cylinder(h=(5), r1=(12)/2, r2=0, center=false, $fn=100); 
        
        difference()
        { 
        translate([0,0,R01_vyska_preryti_statoru])
            sphere(d = (S01_prumer_vnitrniB/2+5*S01_sila_materialu)*2+10, $fn=100);
        translate([0,0,R01_vyska_preryti_statoru])
            sphere(d = (S01_prumer_vnitrniB/2+5*S01_sila_materialu)*2, $fn=100);
        
        }            
    }
}
    
module vyztuhy()
{
difference()
    {   
    translate([0,0,R01_vyska_preryti_statoru]) 
        cylinder(h=(S01_prumer_vnitrniB/2+5*S01_sila_materialu), r1=(lozisko_prumer_vnejsi/2-1), r2=(lozisko_prumer_vnejsi/2-1)+(S01_prumer_vnitrniB/2+5*S01_sila_materialu)-R01_vyska_preryti_statoru, center=false, $fn=100);  
           
    //vykousnutí 1           
    translate([S01_sila_materialu/2,S01_sila_materialu/2,R01_vyska_preryti_statoru-0.005])
        cube([(lozisko_prumer_vnejsi/2-1)+(S01_prumer_vnitrniB/2+4*S01_sila_materialu),(lozisko_prumer_vnejsi/2-1)+(S01_prumer_vnitrniB/2+4*S01_sila_materialu),(S01_prumer_vnitrniB/2+4*S01_sila_materialu)+0.01],center=false);  
  
    //vykousnutí 2
    rotate([0, 0, 90])           
        translate([S01_sila_materialu/2,S01_sila_materialu/2,R01_vyska_preryti_statoru-0.005])
            cube([(lozisko_prumer_vnejsi/2-1)+(S01_prumer_vnitrniB/2+4*S01_sila_materialu),(lozisko_prumer_vnejsi/2-1)+(S01_prumer_vnitrniB/2+4*S01_sila_materialu),(S01_prumer_vnitrniB/2+4*S01_sila_materialu)+0.01],center=false); 
            
    //vykousnutí 3
    rotate([0, 0, 180])           
        translate([S01_sila_materialu/2,S01_sila_materialu/2,R01_vyska_preryti_statoru-0.005])
            cube([(lozisko_prumer_vnejsi/2-1)+(S01_prumer_vnitrniB/2+4*S01_sila_materialu),(lozisko_prumer_vnejsi/2-1)+(S01_prumer_vnitrniB/2+4*S01_sila_materialu),(S01_prumer_vnitrniB/2+4*S01_sila_materialu)+0.01],center=false);
            
    //vykousnutí 4
    rotate([0, 0, 270])           
        translate([S01_sila_materialu/2,S01_sila_materialu/2,R01_vyska_preryti_statoru-0.005])
            cube([(lozisko_prumer_vnejsi/2-1)+(S01_prumer_vnitrniB/2+4*S01_sila_materialu),(lozisko_prumer_vnejsi/2-1)+(S01_prumer_vnitrniB/2+4*S01_sila_materialu),(S01_prumer_vnitrniB/2+4*S01_sila_materialu)+0.01],center=false);              
    difference()
        {    
        translate([0,0,R01_vyska_preryti_statoru])
            sphere(d = (S01_prumer_vnitrniB/2+21*S01_sila_materialu)*2, $fn=100); 
            
        translate([0,0,R01_vyska_preryti_statoru])
            sphere(d = (S01_prumer_vnitrniB/2+4*S01_sila_materialu)*2, $fn=100); 

        }
    }    
}  

module lopatka()
{ 
difference()
    {
    union()
        {
        translate([0,0,L01_prumer_lopatky/2])
            sphere(d = L01_prumer_lopatky, $fn=100);   
            
        translate([-L01_hrana_drzaku_a,0,0])
            cube([L01_hrana_drzaku_a,L01_delka_uchytu+L01_prumer_lopatky/2+10,L01_hrana_drzaku_b],center=false);
    
        //podpěra     
        translate([0,0,0]) 
            cylinder(h=(L01_prumer_lopatky/2), r1=(L01_prumer_lopatky)/3.5, r2=(L01_prumer_lopatky-1)/2, center=false, $fn=100);
        } 
      
      
    translate([0,0,L01_prumer_lopatky/2])
         sphere(d = L01_prumer_lopatky-L01_sila_materialu_lopatky*2, $fn=100); 
  
    translate([0,-L01_prumer_lopatky,-0.3])
        cube([L01_prumer_lopatky+0.01,2*(L01_delka_uchytu+L01_prumer_lopatky/2+10),L01_prumer_lopatky+0.6],center=false);    
       
    } 
    
  /* polomer_valce=2; 
 //válec pro vylepšení tisku
         translate([polomer_valce-0.01,L01_prumer_lopatky/2+1.5+L01_sila_materialu_lopatky,0]) 
            cylinder(h=(L01_prumer_lopatky), r1=polomer_valce, r2=polomer_valce, center=false, $fn=100);         
  */  
}

//rotate([0,0,90]) translate([-70,-65,0]) %cube([110,130,90]);

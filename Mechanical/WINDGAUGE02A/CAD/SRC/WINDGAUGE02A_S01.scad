$fn=40; // model faces resolution.
include <../configuration.scad>


include <polyScrewThread_r1.scad>

PI=3.141592;


//Držák ložisek, rotoru, senzoru

module WINDGAUGE02A_S01()
    {
    //valec se zavitem
    union()  
        {
        difference()
        {
            union()
            {
            translate([0,0,S01_sila_materialu])
                screw_thread((S01_prumer_vnitrni-S01_tolerance_zavit),S01_hloubka_zavitu,55,S01_vyska_horni_zavit,PI/2,2);  
            
            //spodní doraz
            cylinder (h = S01_sila_materialu, r=S01_prumer_vnitrni/2+5/2*S01_sila_materialu, $fn=100);  


            //krycí ovál - usnadnění povolení
            difference()
            {
            cylinder (h = R01_vyska_preryti_statoru+5, r=S01_prumer_vnitrni/2+5/2*S01_sila_materialu, $fn=100); 

            cylinder (h = R01_vyska_preryti_statoru+5+0.01, r=S01_prumer_vnitrni/2+3/2*S01_sila_materialu, $fn=100);            
            
            }    
            }            

        //odstranění vnitřní výplně
        translate([0,0,S01_sila_materialu])
            cylinder (h = S01_vyska_horni_zavit+0.01, r=S01_prumer_vnitrni/2-S01_hloubka_zavitu/2-S01_sila_materialu, $fn=100); 
            
        //otvor na ložisko         
        translate([0,0,S01_sila_materialu/2])           
            cylinder (h = S01_sila_materialu+0.01, r=(lozisko_prumer_vnejsi+0.2)/2, center = true, $fn=100);          
        //otvory na hlavu šroubu ve dně 
        //otvor na hlavu šroubu 1
        translate([-senzor_delka/2,-senzor_sirka/2,(lozisko_vyska+2*S01_sila_materialu+2*S01_sila_materialu+vyska_hlavy_sroubu+magnet_vyska+vyska_matky)/2])           
            cylinder (h = lozisko_vyska+2*S01_sila_materialu+2*S01_sila_materialu+vyska_hlavy_sroubu+magnet_vyska+vyska_matky+0.01, r=(prumer_hlavy_sroubu)/2, center = true, $fn=100);
            
        //otvor na šroub 2 
        translate([senzor_delka/2,-senzor_sirka/2,(lozisko_vyska+2*S01_sila_materialu+2*S01_sila_materialu+vyska_hlavy_sroubu+magnet_vyska+vyska_matky)/2])           
            cylinder (h = lozisko_vyska+2*S01_sila_materialu+2*S01_sila_materialu+vyska_hlavy_sroubu+magnet_vyska+vyska_matky+0.01, r=(prumer_hlavy_sroubu)/2, center = true, $fn=100);           
            
        //otvor na šroub 3
        translate([senzor_delka/2,senzor_sirka/2,(lozisko_vyska+2*S01_sila_materialu+2*S01_sila_materialu+vyska_hlavy_sroubu+magnet_vyska+vyska_matky)/2])           
            cylinder (h = lozisko_vyska+2*S01_sila_materialu+2*S01_sila_materialu+vyska_hlavy_sroubu+magnet_vyska+vyska_matky+0.01, r=(prumer_hlavy_sroubu)/2, center = true, $fn=100);

        //otvor na šroub 4
        translate([-senzor_delka/2,senzor_sirka/2,(lozisko_vyska+2*S01_sila_materialu+2*S01_sila_materialu+vyska_hlavy_sroubu+magnet_vyska+vyska_matky)/2])           
            cylinder (h = lozisko_vyska+2*S01_sila_materialu+2*S01_sila_materialu+vyska_hlavy_sroubu+magnet_vyska+vyska_matky+0.01, r=(prumer_hlavy_sroubu)/2, center = true, $fn=100);          
     
        }

    //otvor na ložisko
    difference()
    {  
    translate([0,0,(R01_vyska_preryti_statoru+lozisko_vyska)/2+S01_sila_materialu])   
        cylinder (h = R01_vyska_preryti_statoru+lozisko_vyska, r=(lozisko_prumer_vnejsi+2*S01_sila_materialu)/2, center = true, $fn=100);     
    
    translate([0,0,(R01_vyska_preryti_statoru+lozisko_vyska)/2+S01_sila_materialu])
      cylinder (h = R01_vyska_preryti_statoru+lozisko_vyska+0.01, r=(lozisko_prumer_vnejsi+0.2)/2, center = true, $fn=100);
      
    //otvory na hlavy sroubu v uchytu loziska     
    translate([-senzor_delka/2,-senzor_sirka/2,0])
        { 
        cylinder (h = vyska_hlavy_sroubu+10, r= (prumer_hlavy_sroubu)/2, $fn=40);
        translate([0,0,vyska_hlavy_sroubu+10])     
            cylinder(h=2+0.02, r1=(prumer_hlavy_sroubu)/2, r2=(prumer_sroubu+0.2)/2);     
        } 
        
    translate([-senzor_delka/2,senzor_sirka/2,0])
        { 
        cylinder (h = vyska_hlavy_sroubu+10, r= (prumer_hlavy_sroubu)/2, $fn=40);
        translate([0,0,vyska_hlavy_sroubu+10])     
            cylinder(h=2+0.02, r1=(prumer_hlavy_sroubu)/2, r2=(prumer_sroubu+0.2)/2);     
        }   
      
    translate([senzor_delka/2,-senzor_sirka/2,0])
        { 
        cylinder (h = vyska_hlavy_sroubu+10, r= (prumer_hlavy_sroubu)/2, $fn=40);
        translate([0,0,vyska_hlavy_sroubu+10])     
            cylinder(h=2+0.02, r1=(prumer_hlavy_sroubu)/2, r2=(prumer_sroubu+0.2)/2);     
        }    
  
    translate([senzor_delka/2,senzor_sirka/2,0])
        { 
        cylinder (h = vyska_hlavy_sroubu+10, r= (prumer_hlavy_sroubu)/2, $fn=40);
        translate([0,0,vyska_hlavy_sroubu+10])     
            cylinder(h=2+0.02, r1=(prumer_hlavy_sroubu)/2, r2=(prumer_sroubu+0.2)/2);     
        }    
    }

    difference()
    { 
        union()
        { 
        //uchyty na modul
        //sloupek 1
        translate([-senzor_delka/2,-senzor_sirka/2,0]) 
            SLOUPEK();

        translate([senzor_delka/2,-senzor_sirka/2,0])  
            SLOUPEK();
        
        translate([senzor_delka/2,senzor_sirka/2,0])  
            SLOUPEK();

        translate([-senzor_delka/2,senzor_sirka/2,0])  
            SLOUPEK();
        }
        
        translate([0,0,0])    
            cylinder (h = R01_vyska_preryti_statoru+lozisko_vyska+S01_sila_materialu, r=(lozisko_prumer_vnejsi+0.2)/2, $fn=100);  
   
        //doraz loziska
        translate([0,0,(R01_vyska_preryti_statoru+lozisko_vyska)+S01_sila_materialu+8/2])      
            cylinder(h=8, r1=(lozisko_prumer_vnejsi+0.2)/2, r2=0, center=true);   
    
    }
        }
    }


//sloupek na senzor
module SLOUPEK()
{    
translate([0,0,0]) 
    difference () 
    {
        
        cylinder (h = R01_vyska_preryti_statoru+lozisko_vyska+magnet_vyska+R03_vyska_narezeni_hridelky+2*S01_sila_materialu, r= sirka_matky/2+S01_sila_materialu/2, $fn=20);
        
        translate([0,0,R01_vyska_preryti_statoru+lozisko_vyska+magnet_vyska+R03_vyska_narezeni_hridelky+2*S01_sila_materialu-vyska_matky]) 
            cylinder (h = vyska_matky+0.01, r= (sirka_matky+0.2)/2, $fn=6);
        
        translate([0,0,-0.01]) 
            cylinder (h = R01_vyska_preryti_statoru+2*lozisko_vyska+2*S01_sila_materialu+2*S01_sila_materialu+vyska_hlavy_sroubu+magnet_vyska+vyska_matky+0.01, r= (prumer_sroubu+0.2)/2, $fn=40);
               
        translate([0,0,-0.01]) 
            cylinder (h = vyska_hlavy_sroubu+10-S01_sila_materialu, r= (prumer_hlavy_sroubu)/2, $fn=40);
    
        translate([0,0,vyska_hlavy_sroubu+10-S01_sila_materialu-0.02]) 
            cylinder(h=2+0.02, r1=(prumer_hlavy_sroubu)/2, r2=(prumer_sroubu+0.2)/2);  
    
    }       
}
   

  
WINDGAUGE02A_S01(); 


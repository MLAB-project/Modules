//$fn=40; // model faces resolution.
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
                screw_thread((S01_prumer_vnitrniB-S01_tolerance_zavit),S01_hloubka_zavitu,55,S01_vyska_horni_zavit,PI/2,2);  
            //spodní doraz
            cylinder (h = S01_sila_materialu, r=S01_prumer_vnitrniB/2+5/2*S01_sila_materialu, $fn=100);  


            //krycí ovál - usnadnění povolení
            difference()
            {
                cylinder (h = R01_vyska_preryti_statoru+5, r=S01_prumer_vnitrniB/2+5/2*S01_sila_materialu, $fn=100); 
                cylinder (h = R01_vyska_preryti_statoru+5+0.01, r=S01_prumer_vnitrniB/2+3/2*S01_sila_materialu, $fn=100);
            }    
            }            

        //odstranění vnitřní výplně
        translate([0,0,S01_sila_materialu])
            cylinder (h = S01_vyska_horni_zavit+0.01, r=S01_prumer_vnitrniB/2-S01_hloubka_zavitu/2-S01_sila_materialu, $fn=100); 
            
        //otvor na ložisko         
        #translate([0,0,S01_sila_materialu/2])           
            cylinder (h = S01_sila_materialu+0.01, r=(lozisko_prumer_vnejsi+0.2)/2, center = true, $fn=100);          
        //otvory na hlavu šroubu ve dně 
        
        }

    //otvor na ložisko
    difference()
    {  
    translate([0,0,(R01_vyska_preryti_statoru+lozisko_vyska)/2+S01_sila_materialu])   
        cylinder (h = R01_vyska_preryti_statoru+lozisko_vyska, r=(lozisko_prumer_vnejsi+2*S01_sila_materialu)/2, center = true, $fn=100);     
    
    translate([0,0,(R01_vyska_preryti_statoru+lozisko_vyska)/2+S01_sila_materialu])
      cylinder (h = R01_vyska_preryti_statoru+lozisko_vyska+0.01, r=(lozisko_prumer_vnejsi+0.2)/2, center = true, $fn=100);
   
    }

        }
    }



  
WINDGAUGE02A_S01(); 


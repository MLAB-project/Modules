$fn=40; // model faces resolution.
include <../configuration.scad>

//kryt_rotoru

module WINDGAUGE02A_R03()
{
 
    //kopule
    difference()
        {
            sphere(r = (S01_prumer_vnitrni+4*S01_sila_materialu)/2+S01_mezera_mezi_statorem_rotorem+S01_sila_materialu, $fn=100);
            
            sphere(r = (S01_prumer_vnitrni+4*S01_sila_materialu)/2+S01_mezera_mezi_statorem_rotorem-0.2, $fn=100); 
            
            translate([-((S01_prumer_vnitrni+4*S01_sila_materialu)/2+S01_mezera_mezi_statorem_rotorem+S01_sila_materialu),-((S01_prumer_vnitrni+4*S01_sila_materialu)/2+S01_mezera_mezi_statorem_rotorem+S01_sila_materialu),-2*((S01_prumer_vnitrni+4*S01_sila_materialu)/2+S01_mezera_mezi_statorem_rotorem+S01_sila_materialu)])     
            
                cube(size = [2*((S01_prumer_vnitrni+4*S01_sila_materialu)/2+S01_mezera_mezi_statorem_rotorem+S01_sila_materialu), 2*((S01_prumer_vnitrni+4*S01_sila_materialu)/2+S01_mezera_mezi_statorem_rotorem+S01_sila_materialu), 2*((S01_prumer_vnitrni+4*S01_sila_materialu)/2+S01_mezera_mezi_statorem_rotorem+S01_sila_materialu)]);          
            
        }
             
             
    
             //válcová část krytu        
        difference()
            {
            //zakladni valec
            translate([0,0,-
R02_sila_mateiralu_pod_lopatkami/2])
                cylinder (h = 
R02_sila_mateiralu_pod_lopatkami, r=(S01_prumer_vnitrni+4*S01_sila_materialu)/2+S01_mezera_mezi_statorem_rotorem+S01_sila_materialu, center = true, $fn=100);           
 
            //válec pro vykrojení
            translate([0,0,-R02_sila_mateiralu_pod_lopatkami/2])
                cylinder (h = R02_sila_mateiralu_pod_lopatkami+0.01, r=(S01_prumer_vnitrni+4*S01_sila_materialu)/2+S01_mezera_mezi_statorem_rotorem-0.2, center = true, $fn=100); 
              
            }
}


WINDGAUGE02A_R03();

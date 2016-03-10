$fn=40; // model faces resolution.
include <../configuration.scad>
include <polyScrewThread_r1.scad>


AWSCREEN01A_D03(D03_vyska_zavitu,D03_tolerance_zavitu,D03_material_za_zavitem,D03_polomer_zavitu,D03_polomer_stitu,D03_tloustka_materialu,D03_vyska_stitu,D03_pocet_vyztuh,screen_bevel);







module AWSCREEN01A_D03(D03_vyska_zavitu,D03_tolerance_zavitu,D03_material_za_zavitem,D03_polomer_zavitu,D03_polomer_stitu,D03_tloustka_materialu,D03_vyska_stitu,D03_pocet_vyztuh,screen_bevel)

    {
    angle_sep = 360/D03_pocet_vyztuh;


//horni zavit
    translate ([0,0,D03_vyska_stitu])
    // screen upper rim
        difference () {
            screw_thread((D03_polomer_zavitu-D03_tolerance_zavitu)*2,4,55,D03_vyska_zavitu,PI/2,2);
    
    translate ([0,0,-0.01])
        cylinder (h=D03_vyska_zavitu+0.02 ,r= D03_polomer_zavitu -D03_tolerance_zavitu- D03_material_za_zavitem ,$fn=100);
    }



//screen

    difference () {
        cylinder (h=D03_vyska_stitu,r1=D03_polomer_stitu ,r2=D03_polomer_zavitu,$fn=100);
        translate ([0,0,-0.01/2])
            cylinder (h=D03_vyska_stitu+0.01,r1=D03_polomer_stitu-D03_tloustka_materialu ,r2=D03_polomer_zavitu -D03_tolerance_zavitu- D03_material_za_zavitem,$fn=100);
    
       
                    }


//inner ring


    difference () {
        cylinder (h=D03_vyska_zavitu,r = D03_polomer_zavitu + D03_material_za_zavitem/2,$fn=100);
        translate([0,0,-1])
                screw_thread(D03_polomer_zavitu*2,4,55,D03_vyska_zavitu+2,PI/2,2);  
                    }


// center ribs
for (i = [0 : (D03_pocet_vyztuh-1)]) {
	rotate ([90,0,angle_sep* i])
	translate ([0,0,-D03_tloustka_materialu/2])
	linear_extrude (height = D03_tloustka_materialu, convexity = 10)
	polygon(points=[[D03_polomer_zavitu, D03_vyska_zavitu],[D03_polomer_zavitu, 0],[D03_polomer_stitu - D03_tloustka_materialu,0],[D03_polomer_zavitu,D03_vyska_stitu]]);

}
}

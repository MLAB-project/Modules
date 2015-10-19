//Funkce pro generovani sloupku
module sloupek(
    vyska,
    zapust,
    vzdalenost_der,
    vzdalenost_od_okraje,
    vzdalenost_od_diry,
    radidus_hrany,
    prumer_sroubu,
    prumer_matice,
    vyska_matice,
    posuv_dorazu,
   matice_sila_materialu) {

    difference () {
        union () {
            color("green")
                translate([-(vzdalenost_od_okraje-radidus_hrany),-(vzdalenost_od_okraje-radidus_hrany),0])  // center top screw
                    cylinder(vyska, d=(2*radidus_hrany), center=true);

            color("cyan")
                translate([vzdalenost_der/4, vzdalenost_der/4, -vyska/2])
                    linear_extrude(height = vyska)
                        square([vzdalenost_der/2, vzdalenost_der/2], center = true);    

            color("gray")
                translate([-vzdalenost_od_okraje/2, vzdalenost_der/4, -vyska/2])
                    linear_extrude(height = vyska)
                        square([(vzdalenost_od_okraje), vzdalenost_der/2], center = true);  
                
            color("gray")
                translate([vzdalenost_der/4, -vzdalenost_od_okraje/2, -vyska/2])
                    linear_extrude(height = vyska)
                        square([vzdalenost_der/2, vzdalenost_od_okraje], center = true); 
                
            color("red")
                translate([-(vzdalenost_od_okraje-radidus_hrany)/2, -vzdalenost_od_okraje/2, -vyska/2])
                    linear_extrude(height = vyska)
                        square([vzdalenost_od_okraje-radidus_hrany, vzdalenost_od_okraje], center = true); 
               
            color("red")
                translate([-vzdalenost_od_okraje/2,-(vzdalenost_od_okraje-radidus_hrany)/2, -vyska/2])
                    linear_extrude(height = vyska)
                        square([vzdalenost_od_okraje, vzdalenost_od_okraje-radidus_hrany], center = true); 

            color("green")
                translate([vzdalenost_der, -vzdalenost_od_okraje/2, -(vyska-(2*zapust))/2])
                    linear_extrude(height = (vyska-(2*zapust)))
                        square([vzdalenost_der, vzdalenost_od_okraje], center = true); 
                        
            color("red")
                translate([-vzdalenost_od_okraje/2,vzdalenost_der, -(vyska-(2*zapust))/2])
                    linear_extrude(height = (vyska-(2*zapust)))
                        square([ vzdalenost_od_okraje,vzdalenost_der], center = true);             
              
             color("cyan")
                translate([vzdalenost_od_diry/2, vzdalenost_der, -(vyska-(2*zapust))/2])
                    linear_extrude(height = (vyska-(2*zapust)))
                        square([(vzdalenost_od_diry), vzdalenost_der], center = true);  
              
             color("cyan")
                translate([vzdalenost_der, vzdalenost_od_diry/2, -(vyska-(2*zapust))/2])
                    linear_extrude(height = (vyska-(2*zapust)))
                        square([vzdalenost_der, vzdalenost_od_diry ], center = true);                
        }

        //diry na sroub
            translate([0,0,0])  // center top screw
                cylinder(2*vyska, d=(prumer_sroubu), center=true);

            translate([vzdalenost_der,0,0])  // center top screw
                cylinder(2*vyska, d=(prumer_sroubu), center=true);

            translate([0,vzdalenost_der,0])  // center top screw
                cylinder(2*vyska, d=(prumer_sroubu), center=true);

        //diry na matice
        //1. krajni matice
        translate([vzdalenost_der,(((((prumer_matice)/2)+posuv_dorazu+vzdalenost_od_diry)/2)-(posuv_dorazu+prumer_matice/2)),((vyska-2*zapust)/2-vyska_matice/2)-matice_sila_materialu])  // center top screw
              
        cube([prumer_matice, prumer_matice+posuv_dorazu+vzdalenost_od_diry,vyska_matice], center = true);

        translate([vzdalenost_der,(((((prumer_matice)/2)+posuv_dorazu+vzdalenost_od_diry)/2)-(posuv_dorazu+prumer_matice/2)),-(((vyska-2*zapust)/2-vyska_matice/2)-matice_sila_materialu)])  // center top screw
              
        cube([prumer_matice, prumer_matice+posuv_dorazu+vzdalenost_od_diry,vyska_matice], center = true);


        //2. krajni matice
        translate([(((((prumer_matice)/2)+posuv_dorazu+vzdalenost_od_diry)/2)-(posuv_dorazu+prumer_matice/2)), vzdalenost_der,((vyska-2*zapust)/2-vyska_matice/2)-matice_sila_materialu])  // center top screw
              
        cube([ prumer_matice+posuv_dorazu+vzdalenost_od_diry,prumer_matice,vyska_matice], center = true);

        translate([(((((prumer_matice)/2)+posuv_dorazu+vzdalenost_od_diry)/2)-(posuv_dorazu+prumer_matice/2)), vzdalenost_der,-(((vyska-2*zapust)/2-vyska_matice/2)-matice_sila_materialu)])  // center top screw
              
        cube([ prumer_matice+posuv_dorazu+vzdalenost_od_diry,prumer_matice,vyska_matice], center = true);

        //prostredni dira
        translate([0,(((((prumer_matice)/2)+posuv_dorazu+vzdalenost_od_diry)/2)-(posuv_dorazu+prumer_matice/2)),((vyska)/2-vyska_matice/2)-matice_sila_materialu])  // center top screw
              
        cube([prumer_matice, prumer_matice+posuv_dorazu+vzdalenost_od_diry,vyska_matice], center = true);

        translate([0,(((((prumer_matice)/2)+posuv_dorazu+vzdalenost_od_diry)/2)-(posuv_dorazu+prumer_matice/2)),-(((vyska)/2-vyska_matice/2)-matice_sila_materialu)])  // center top screw
              
        cube([prumer_matice, prumer_matice+posuv_dorazu+vzdalenost_od_diry,vyska_matice], center = true);

        }
}

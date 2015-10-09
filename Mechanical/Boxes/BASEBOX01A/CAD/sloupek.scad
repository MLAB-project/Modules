vyska = 60;  //celeho sloupku
prumer_diry = 0; //
zapust = 6; //vyska zapusteni listy 
vzdalenost_der = 10; //roztec upevňovacich der
vzdalenost_od_okraje = 10; //vzdalenost stredu upevnovaci diry od kraje desky
vzdalenost_od_diry = 5; //vzdalenost od stredu upevnovaci diry na druhou stranu
radidus_hrany = 5; //radius zaobleni


DISPLAY_height = 100; 
DISPLAY_width = 120; 
DISPLAY_depth = 5; 

FP_width = 234;
FP_height = 125;
thickness = 2;
clearance = 0.75;

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

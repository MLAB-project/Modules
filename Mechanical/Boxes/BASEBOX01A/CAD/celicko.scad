vyska = 60; //celeho slouplku
zapust = 6.5; //vyska zapusteni listy 
vule_vysky_celicka =1; //definuje vůli celicka v liste
delka_celicka=30;
tloustka_celicka = 3;
vule_tlousky = 0.25;

difference () {
color("cyan")
    translate([0, 0, 0])
        linear_extrude(height = vyska-2*zapust-vule_vysky_celicka)
            square([delka_celicka, tloustka_celicka-vule_tlousky], center = true); 
    
     }
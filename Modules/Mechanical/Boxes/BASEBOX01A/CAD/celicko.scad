include <configuration.scad>

module celicko (vyska,zapust,vule_vysky_celicka,delka_celicka,tloustka_celicka,vule_tlousky) {
    difference () {
        color("cyan")
            translate([0, 0, 0])
                linear_extrude(height = vyska-2*zapust-vule_vysky_celicka)
                    square([delka_celicka, tloustka_celicka-vule_tlousky], center = true);         
    }
}


celicko (vyska,zapust1,vule_vysky_celicka,delka_celicka,tloustka_celicka,vule_tlousky);
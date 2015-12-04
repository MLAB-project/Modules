//Funkce generujici plne celicko
module celicko (vyska,zapust,vule_vysky_celicka,pocet_der,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky,vyska_listy) {
    difference () {
        color("cyan")
            translate([0, 0, 0])
                linear_extrude(height = vyska-2*zapust-vule_vysky_celicka)
                    square([(pocet_der-1)*vzdalenost_der-vule_delky_celicka, tloustka_celicka-vule_tlousky], center = true);         
    }
}



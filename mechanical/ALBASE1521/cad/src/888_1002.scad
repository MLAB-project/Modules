include <../Parameters.scad>

// zde připravené rozměry na počítání rozestupů
spacing_wires = 2; //rozestup mezi vodici
spacing_nut = 2; //odsazeni der od okraje pro pripojeni pritlacne desky
spacing_cable_clamp = 1; //odsazeni jednotlivych modulu
thickness = 10; //celkova tloustka /2


wires = [[20,20],[15],[20,50]];//pokusné pole
count=0;//pomocná proměná na počet

function add(v, i = 0, result = 0) = i < len(v) ? add(v, i + 1, result + v[i]) : result; //metoda na počítání prků po dimenzích



for(x=[0:len(wires)-1]) //procházení polí po vyšších urovních
{
    count = add(wires[x]); //sečte jednolivé úrovně
    //count= count + add(wires[x]); toto nefunguje zobrazazuje undef.
    echo("soucet",count);

//??? tyto jednotlivé úrovně nedokážu sečíst nebo nahrát do pole (dynamické tvoření za běhu)???
//ve zvoleném příkladu získám čísla 40, 15 ,70 ale již nejsem schopen je sečíst...


//pokus o vytvoření základny
    translate([x==0?0:add(wires[x-1]),0,0])
    cube([count,10,10]);

}
module cable_clam_a(){//připravený modul pro základnu



}
cable_clam_a();

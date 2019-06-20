include <../Parameters.scad>

// zde připravené rozměry na počítání rozestupů
clamp_screw = 3.5;
spacing_wires = 2; //rozestup mezi vodici
spacing_nut = 2; //odsazeni der od okraje pro pripojeni pritlacne desky
spacing_cable_clamp = 1; //odsazeni jednotlivych modulu
thickness = 10; //celkova tloustka /2
width=15;

cables_quantity = 6 ;//počet kabelů
clamp_quantity = 3;//počet svazků
wires = [[1,2],[3,4],[5,6]];//rozložení a jejich velikosti

count=0;//pomocná proměná na počet

function add(v, i = 0, result = 0) = i < len(v) ? add(v, i + 1, result + v[i]) : result; //metoda na počítání prků po dimenzích

module cable_clam_a(){
    list=[for(x=[0:len(wires)-1]) add(wires[x])];

    total_length=add(list)+(spacing_wires*(cables_quantity-1))+10+(M3_screw_diameter*2)+((clamp_quantity+1)*spacing_cable_clamp)+(2*clamp_quantity*clamp_screw);
    echo("total length",total_length);
    echo("total length",add(list),spacing_wires*(cables_quantity-1),10,M3_nut_diameter*2,(clamp_quantity+1)*spacing_cable_clamp,(2*clamp_quantity*clamp_screw));
//difference(){
translate([0,-width/2 , 0])
    cube([total_length,width,thickness]);

//otvory pro připevnění k desce ALBASE
    translate([4.9+M3_nut_diameter/2,0,0])
    color([1,0,0])cylinder(h=thickness,d=M3_nut_diameter,$fn=50);//
    translate([total_length-(4.9+M3_nut_diameter/2),0,0])
    color([1,0,0])cylinder(h=thickness,d=M3_nut_diameter,$fn=50);

    for(i=[0:len(wires)-1]){
            for(u=[0:len(wires[i])-1]){

                    shift = i==0?0:(spacing_cable_clamp);
                    shift2 = 5 + M3_nut_diameter+spacing_cable_clamp;
                    posun = 10;

                    translate([shift+shift2,-width/2,thickness])
                        rotate([-90,0,0])
                            color([0,1,0])cylinder(h=width,d=wires[i][u],$fn=50);

                    echo("pocet",wires[i][u]);
                }
echo("lenwires",i);

        }


    //}



}
cable_clam_a();

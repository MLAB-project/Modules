vzdalenost_der = 10; //rozteč děr mezi sebou
pocet_der = 21; //pocet ter pres ktere je lista ponížené o 1

//rozměry výrezu
//rozmer v ose y
vzdalenost_od_okraje = 10; //vzdalenost stredu upevnovaci diry od kraje desky
vzdalenost_od_diry = 5; //vzdalenost od stredu upevnovaci diry na druhou stranu

//rozmery vyrezu v ose x
vzdalenost_1 = 5; //od díry ke kraji
vzdalenost_2 = 5;

//definicce celkové výšky lišty
zapust=6; //závislé na sloupku
vyska_listy=5;

//parametry pro úžlabinu
tlouska_celicka = 3; //definuje uzlabinu
sirka_materialu = 3; //sirka materialu od kraje desky k uzlabine

//parametry šroubu
vyska_hlavy = 3.5;
prumer_hlavy=6;
prumer_sroubu=3.3;

//parametry matice
prumer_matice=6; //hrany k hraně
vyska_matice=3;  //vyska matice
posuv_dorazu=0;  //pro moznost posuvu dorazu pro vsunutí matice
matice_sila_materialu=2; //sila materialu pod maticí na ose z

difference () {
color("cyan")
    translate([0, 0, 0])
        linear_extrude(height = zapust+vyska_listy)
            square([((pocet_der*vzdalenost_der)+2*vzdalenost_1), vzdalenost_od_okraje+vzdalenost_od_diry], center = true); 
    
    translate([-((((pocet_der*vzdalenost_der)+2*vzdalenost_1)/2)-(vzdalenost_1+vzdalenost_2/2)), 0, (zapust)])
        linear_extrude(height = vyska_listy)
            square([vzdalenost_2, vzdalenost_od_okraje+vzdalenost_od_diry], center = true); 
    
    translate([((((pocet_der*vzdalenost_der)+2*vzdalenost_1)/2)-(vzdalenost_1+vzdalenost_2/2)), 0, (zapust)])
        linear_extrude(height = vyska_listy)
            square([vzdalenost_2, vzdalenost_od_okraje+vzdalenost_od_diry], center = true); 
    
    translate([-((((pocet_der*vzdalenost_der)+2*vzdalenost_1)/2)-(vzdalenost_1/2)), 0, (zapust)])
        linear_extrude(height = vyska_listy)
            square([vzdalenost_1, vzdalenost_od_okraje+vzdalenost_od_diry], center = true); 
    
    translate([((((pocet_der*vzdalenost_der)+2*vzdalenost_1)/2)-(vzdalenost_1/2)), 0, (zapust)])
        linear_extrude(height = vyska_listy)
            square([vzdalenost_1, vzdalenost_od_okraje+vzdalenost_od_diry], center = true); 
    
     translate([0,-((((vzdalenost_od_okraje+vzdalenost_od_diry)/2)-sirka_materialu)-(tlouska_celicka/2)), zapust])
        linear_extrude(height = vyska_listy)
            square([((pocet_der*vzdalenost_der)+2*vzdalenost_1), tlouska_celicka], center = true); 
   
    
    //otvory pro hlavy sroubu
    
    translate([vzdalenost_der*pocet_der/2,-(((vzdalenost_od_okraje+vzdalenost_od_diry)/2)-vzdalenost_od_okraje),(zapust-vyska_hlavy)+vyska_hlavy/2])  // center top screw
        cylinder(vyska_hlavy, d=prumer_hlavy, center=true);
        
     translate([-vzdalenost_der*pocet_der/2,-(((vzdalenost_od_okraje+vzdalenost_od_diry)/2)-vzdalenost_od_okraje),(zapust-vyska_hlavy)+vyska_hlavy/2])  // center top screw
        cylinder(vyska_hlavy, d=prumer_hlavy, center=true);
 
//otvory pro srouby

 for (i = [0:1:pocet_der]) {      
 translate([(-i*vzdalenost_der)+vzdalenost_der*pocet_der/2,-(((vzdalenost_od_okraje+vzdalenost_od_diry)/2)-vzdalenost_od_okraje),(zapust-vyska_hlavy)+vyska_hlavy/2])  // center top screw
        cylinder((2*(zapust+vyska_listy)), d=prumer_sroubu, center=true); 
      }
//otvory pro matice
     
 for (i = [1:1:(pocet_der-1)]) {      
 translate([(-i*vzdalenost_der)+vzdalenost_der*pocet_der/2,-((((vzdalenost_od_okraje+vzdalenost_od_diry)/2)-vzdalenost_od_okraje)-((((prumer_matice+posuv_dorazu+vzdalenost_od_diry)/2))-(prumer_matice+posuv_dorazu)/2)),matice_sila_materialu])  // center top screw
      cube([prumer_matice, prumer_matice+posuv_dorazu+vzdalenost_od_diry,vyska_matice], center = true);
  
     }       
        
        
        
         }
         
       
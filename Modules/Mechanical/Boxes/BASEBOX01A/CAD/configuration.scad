$fn=20; // model faces resolution.



vzdalenost_der = 10; //rozteč děr mezi sebou

//sloupek
vyska = 60;  //celeho sloupku
zapust=6; //zápust ve sloupku pro listu
tolerance=0.5; //tolerance mezi zapusti v sloupku  a v listě
zapust1=zapust+tolerance;
radidus_hrany = 5; //radius zaobleni sloupku

//parametry šroubu
vyska_hlavy = 3.5;
prumer_hlavy=6;
prumer_sroubu=3.3;

//parametry matice
prumer_matice=6; //hrany k hraně
vyska_matice=3;  //vyska matice
posuv_dorazu=0;  //pro moznost posuvu dorazu pro vsunutí matice
matice_sila_materialu=2; //sila materialu pod maticí na ose z




//---------------------------------------------------
//parametry lišty
//malá list
pocet_der1 = 14; //pocet der pres ktere je lista, ponížené o 1

//velká list
pocet_der2 = 21; //pocet ter pres ktere je lista ponížené o 1


//rozměry výrezu
//rozmer v ose y
vzdalenost_od_okraje = 10; //vzdalenost stredu upevnovaci diry od kraje desky
vzdalenost_od_diry = 5; //vzdalenost od stredu upevnovaci diry na druhou stranu

//rozmery vyrezu v ose x
vzdalenost_1 = 4.6; //od díry ke kraji
vzdalenost_2 = 5;

vyska_listy=5; //definuje výšku žlábku do kterého se vsunuje čelíčko

//parametry pro úžlabinu
sirka_materialu = 3; //sirka materialu od kraje desky k uzlabine


//--------------------------------------------------
//čelicko
vule_vysky_celicka =1; //definuje vůli celicka v liste
delka_celicka=30;
tloustka_celicka = 3;
vule_tlousky = 0.25;



include <celicko.scad>
translate([50,0,0])
celicko (vyska,zapust1,vule_vysky_celicka,delka_celicka,tloustka_celicka,vule_tlousky);


include <sloupek.scad>
sloupek (vyska,zapust1,vzdalenost_der,vzdalenost_od_okraje,vzdalenost_od_diry,radidus_hrany,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);

include <lista.scad>
lista (vzdalenost_der,pocet_der1,vzdalenost_od_okraje,vzdalenost_od_diry,vzdalenost_1,vzdalenost_2, zapust,vyska_listy,tloustka_celicka,sirka_materialu,vyska_hlavy,prumer_hlavy,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);

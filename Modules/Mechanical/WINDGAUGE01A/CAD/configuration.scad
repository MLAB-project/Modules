$fn=40; // model faces resolution.

//OBECNE PARAMETRY 
//----------------------------------------------------------------
//----------------------------------------------------------------
prumer_rotoru1=70;
vyska_rotoru1=5;
vyska_rotoru2=5;
prumer_sroubu=3.2;
prumer_hlavy_sroubu=6;
vyska_hlavy_sroubu=4;
vyska_matky=3;
sirka_matky=6.6;
sirka_matky_tol=0.175;
prumer_orechu=10;
sila_materialu=2;
sila_materialu_vule=0.2;
hloubka_prekryti=0;

//lozisko
lozisko_prumer_vnitrni=5;
lozisko_prumer_vnejsi=16;
lozisko_vyska=5;
lozisko_prekryv=1.5;

//kryt rotoru
sila_materialu_krytu=1;


//stator1
stator1_sila=2;

//stator2
sila_pod_loziskem=1;

//stator3
stator3_sila_steny=2;
stator3_vzdalenost_od_steny=1; //definuje vzdalenost hlavy sroubu od steny statrou 4
stator3_vyska=60;
stator3_vyska_prekryti=10;

//uchyt pro anemometr
uchyt_prumer_sroubu=3.2;
roztec_sroubu=10.16;


//nastevní rotoru2

vzdalenost_rot_stat=2; //vzdálenost mezi statorem a rotorem uvnitř(osa Z)
vzdalenost_rot_stat2=1.5;//vzdálenost mezi statorem a rotorem (osa Z)





//lopatka
hloubka_uchytu=20;
sila_uchytu=12;
vyska_uchytu=10;
tolerance_uchytu=0.2;
delka_uchytu_lopatky=40;
hrana_uchytu_lopatky=4; 
prumer_lopatky=50;
sila_materialu_lopatky=0.8;

//parametry uchytu senzoru
roztec_der=10.16;
vzdalenost_der_x=2*roztec_der;
vzdalenost_der_y=1*roztec_der;

//magnet
magnet_prumer=6;
magnet_vyska=5;
magnet_zapusteni=2;
vyska_pod_magnetem=5;

//rotor2
delka_hridele=5; //delka hridele koukající ve statoru

//rotor2
vyska_kryti=stator1_sila+vyska_matky+vzdalenost_rot_stat+stator3_vyska_prekryti-vzdalenost_rot_stat2; //udává výšku krycího prstence


vule1=1.5; //vůle mezi statorem a rotorem ze vnitř (z boku)




//uchyt pro anemometr
uchyt_prumer_sroubu=3.2;
roztec_sroubu=20;

//stator 4
vyska_stator4=5;
uchyt_vyska_matky=3;
uchyt_prumer_orechu=10;

//parametr kabelu
kabel_prumer=10;

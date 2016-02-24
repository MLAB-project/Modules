$fn=40; // model faces resolution.

//OBECNE PARAMETRY 
//----------------------------------------------------------------
//----------------------------------------------------------------
//S01
S01_vyska=80;
S01_prumer_vnitrni=40;
S01_sila_materialu=2;
S01_vyska_horni_zavit=10;
S01_vyska_spodniho_zavitu=10;
S01_sila_drzaku_RJ11=2;
S01_tolerance_zavit=1.5;


//Obecné parametry
prumer_osicky=5.1;
prumer_pomocne_trubicky=8;
zapusteni_pomocne_trubicky=3;
vule_mezi_statorem_rotorem=3; //vůle mezi statorem a rotorem + sila materialu statoru

//rozmery modulu se senzorem
senzor_delka=20.32;
senzor_sirka=10.16;
senzor_vyska_IO=2;
senzor_odstup_od_magnetu=1;

//lozisko
lozisko_prumer_vnitrni=4.9;
lozisko_prumer_vnejsi=16;
lozisko_vyska=5;
lozisko_prekryv=1.5;

//magnet
magnet_prumer=6.3;
magnet_vyska=5;
magnet_zapusteni=2;
magnet_tolerance_prumeru=0.2;


//parametry sroubu
prumer_sroubu=3.2;
prumer_hlavy_sroubu=6;
vyska_hlavy_sroubu=4;
vyska_matky=3;
sirka_matky=6.7;

sirka_matky_tol=0.175;
prumer_orechu=10;


//WINDGAUGE02A_S01
S01_vyska=5;




//WINDGAUGE02A_L01 //pro lopatku
L01_hloubka_zapusteni=3;
L01_hloubka_zapusteni_drzaku=3;
L01_sila_zapusteni_drzaku=3; //sila drzaku který je v rotoru
L01_hrana_drzaku_a=10;
L01_hrana_drzaku_b=3;
L01_tolerance_drzaku=0.4;
L01_delka_uchytu=20;
L01_prumer_lopatky=40;
L01_sila_materialu_lopatky=0.9;

//WINDGAUGE02A_D01 //uchyt velky
D01_material_pod_zavitem=10;
D01_material_za_zavitem=5;
D01_material_pred_zavitem=5;
D01_delka_tyce=40;
D01_sirka_tyce=20;



//WINDGAUGE02A_D02 //uchyt na sloup
D02_sila_materialu=4;
D02_vyska_uchytky=40;
D02_prumer_obruby=28;
D02_delka_celeho_uchytu=70;
D02_dotahova_vzdalenost=1.5;
D02_prumer_uchytneho_sroubu=6.2;





//WINDGAUGE02A_R01 //rotor s prekritim statoru
R01_vyska_preryti_statoru=10;
R01_sila_materialu_pro_prekriti=1.3;

//WINDGAUGE02A_R02 //rotor spodni dil

R02_sila_mateiralu_pod_lopatkami=1.3;
R02_vzdalenost_mezi_uchyty_lopatek=10;
R02_vyska_matky=5;

//WINDGAUGE02A_R03 //kryt rotoru
R03_sila_materialu=1.3;

//WINDGAUGE02A_R05 //drzak magnetu
R05_sirka_matky=10;

//WINDGAUGE02A_S01 //stator
S01_sila_materialu=1.3;
S01_vyska_zuzene_casti=20;
S01_vyska_komponentu_na_lozisko=15;
S01_vyska_zavitu_na_nasroubovani_drzaku=15;
S01_vyska_na_elektroniku=35;
S01_prumer_zavitu=64;
S01_tolerance_zavit=1.5;
S01_hloubka_zavitu=4;
S01_vyska_prechodu=20;











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
delka_uchytu_lopatky=20;
hrana_uchytu_lopatky=4; 
prumer_lopatky=50;
sila_materialu_lopatky=0.8;

//parametry uchytu senzoru
roztec_der=10.16;
vzdalenost_der_x=2*roztec_der;
vzdalenost_der_y=1*roztec_der;

//magnet
magnet_prumer=6.3;
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

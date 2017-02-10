$fn=40; // model faces resolution.

//OBECNE PARAMETRY 
//----------------------------------------------------------------
//----------------------------------------------------------------


//AWSCREEN01A_D03 -stredni díl
D03_vyska_zavitu=5;
D03_tolerance_zavitu=0.75; //tolerance s poloměru
D03_material_za_zavitem=2;
D03_material_za_zavitem_pridani=1.5; //tímto se pridává materiál za horním závitem 
D03_polomer_zavitu=32.5;
D03_polomer_stitu=47.5;
D03_tloustka_materialu=1.8;
D03_vyska_stitu=20;
D03_pocet_vyztuh=3;
screen_bevel = 20;
PI=3.141592;

//AWSCREEN01A_D04
D04_sila_materialu_na_konektor=3;
D04_konenektor_x=12.3;
D04_konenektor_y=19;
D04_konenektor_z=5; //vyska krytu
D04_vyska_drzaku_senzoru=38;


//AWSCREEN01A_D05 //uchyt velky
D01_material_pod_zavitem=5;
D01_material_za_zavitem=3;
D01_material_pred_zavitem=2;
D01_delka_tyce=50;
D01_sirka_tyce=10;
S01_vyska_komponentu_na_lozisko=D03_vyska_zavitu;
S01_prumer_zavitu=2*D03_polomer_zavitu;


//AWSCREEN01A_D06 //uchyt na sloup
D02_sila_materialu=6;
D02_vyska_uchytky=40;
D02_prumer_obruby=27; 

//27 mm - 3/4 trubka
D02_delka_celeho_uchytu=60;
D02_dotahova_vzdalenost=1.5;
D02_prumer_uchytneho_sroubu=4.2;
D02_sirka_matky=9.1; //pro M4
D02_vyska_matky=3;









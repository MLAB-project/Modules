use <../src/plbase.scad>
use <../src/sloupek.scad>
use <../upravena_bocnice.scad>



include <../src/manufactury_conf.scad>
include <../configuration.scad>



//BOCNICE
//-------------------------------------------------------------

difference () {
translate([0,0,(vyska_bocnice/2)+tloustka_plbase])
upravena_bocnice();


    
    
    }


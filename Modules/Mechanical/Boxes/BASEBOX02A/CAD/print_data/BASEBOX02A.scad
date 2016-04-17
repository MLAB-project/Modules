use <../configuration/plbase.scad>
use <../configuration/sloupek.scad>
use <../upravena_bocnice.scad>



include <../configuration/manufactury_conf.scad>
include <../configuration.scad>



//BOCNICE
//-------------------------------------------------------------

difference () {
translate([0,0,(vyska_bocnice/2)+tloustka_plbase])
upravena_bocnice();


    
    
    }


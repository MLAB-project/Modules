// copyFunctions.scad - library for copy versions of mirror/rotate/translate
// May 2019

// general use: just like normal version of given function

module rotate_copy(v=[1,0,0])
{
    children();
    rotate(v) children();
}

module mirror_copy(v=[1,0,0])
{
    children();
    mirror(v) children();
}

module translate_copy(v=[1,0,0])
{
    children();
    translate(v) children();
}

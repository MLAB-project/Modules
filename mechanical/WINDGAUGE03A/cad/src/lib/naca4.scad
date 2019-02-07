// Naca4.scad - library for parametric airfoils of 4 digit NACA series
// Code: Rudolf Huttary, Berlin
// June 2015
// commercial use prohibited


// general use: for more examples refer to sampler.scad
// naca = naca digits or 3el vector  (default = 12 or [0, 0, .12])
// L    = chord length [mm]      (default= 100)
// N    = # sample points        (default= 81)
// h    = height [mm]            (default= 1)
// open = close at the thin end? (default = true)
// two equivalent example calls
 airfoil(naca = 2408, L = 60, N=1001, h = 30, open = false);
// airfoil(naca = [.2, .4, .32], L = 60, N=1001, h = 30, open = false);

module help()
{
  echo(str("\n\nList of signatures in lib:\n=================\n",
  "module airfoil(naca=2412, L = 100, N = 81, h = 1, open = false) - renders airfoil object\n",
  "module airfoil(naca=[.2, .4, .12], L = 100, N = 81, h = 1, open = false) - renders airfoil object using percentage for camber,  camber distance and thicknes\n",
  "function airfoil_data(naca=12, L = 100, N = 81, open = false)\n",
  "=================\n"));
}

help();
// this is the object
module airfoil(naca=12, L = 100, N = 81, h = 1, open = false)
{
  linear_extrude(height = h)
  polygon(points = airfoil_data(naca, L, N, open));
}

module hollow_airfoil(naca=12, L = 100, N = 81, h = 1, open = false, wall_thickness = 1)
{
    if (open){
        linear_extrude(height = h)

        if (wall_thickness>0){
            difference(){
                polygon(points = airfoil_data(naca, L, N, false));
                offset(delta = - wall_thickness, chamfer = false) polygon(points = airfoil_data(naca, L, N, open = false));
            }
        }
        else{
            difference(){
                offset(delta = - wall_thickness, chamfer = false) polygon(points = airfoil_data(naca, L, N, open = false));
                polygon(points = airfoil_data(naca, L, N, false));
            }
        }
    }
    else{

        linear_extrude(height = abs(wall_thickness))
            polygon(points = airfoil_data(naca, L, N, false));

        linear_extrude(height = h)
            difference(){
                polygon(points = airfoil_data(naca, L, N, open));
                offset(delta = - wall_thickness) polygon(points = airfoil_data(naca, L, N, open = false));
            }

        translate([0,0, h - wall_thickness])
            linear_extrude(height = abs(wall_thickness))
                polygon(points = airfoil_data(naca, L, N, false));

    }
}


// this is the main function providing the airfoil data
function airfoil_data(naca=12, L = 100, N = 81, open = false) =
  let(Na = len(naca)!=3?NACA(naca):naca)
  let(A = [.2969, -0.126, -.3516, .2843, open?-0.1015:-0.1036])
  [for (b=[-180:360/(N):179.99])
    let (x = (1-cos(b))/2)
    let(yt = sign(b)*Na[2]/.2*(A*[sqrt(x), x, x*x, x*x*x, x*x*x*x]))
    Na[0]==0?L*[x, yt]:L*camber(x, yt, Na[0], Na[1], sign(b))];


function trailing_edge_angle(naca=12, open = false) =
  let(Na = len(naca)!=3?NACA(naca):naca)
  let(A = [.2969, -0.126, -.3516, .2843, open?-0.1015:-0.1036])
  let (x =0.999)  // set x near to airfoil trailing edge
  let(yt = Na[2]/.2*(A*[sqrt(x), x, x*x, x*x*x, x*x*x*x])) // calculate distance from x-axis at previously set position
  atan2(yt,1-x);  // calculate angle of triangle between end of airfoil. The triange height corresponds to previously calculated distance from x-axis

function surface_angle(x = 0.5, naca=12, open = false) =
  let(Na = len(naca)!=3?NACA(naca):naca)
  let(A = [0.2969, -0.126, -0.3516, 0.2843, open?-0.1015:-0.1036])
  let(dy = Na[2]/0.2*(A*[(1/2)*(1/sqrt(x)), 1, 2*x, 3*x*x, 4*x*x*x])) // calculate derivative of airfoil function at the x point
  atan(dy);  // calculate  the angle from function derivative

function surface_distance(x = 0.5, naca=12, open = false) =
  let(Na = len(naca)!=3?NACA(naca):naca)
  let(A = [0.2969, -0.126, -0.3516, 0.2843, open?-0.1015:-0.1036])
  Na[2]/.2*(A*[sqrt(x), x, x*x, x*x*x, x*x*x*x]); // calculate distance from x-axis at previously set position

// helper functions
function NACA(naca) =
  let (M = floor(naca/1000))
  let (P = floor((naca-M*1000)/100))
  [M/100, P/10, floor(naca-M*1000-P*100)/100];

function camber(x, y, M, P, upper) =
  let(yc = (x<P)?M/P/P*(2*P*x-x*x): M/(1-P)/(1-P)*(1 - 2*P + 2*P*x -x*x))
  let(dy = (x<P)?2*M/P/P*(P-x):2*M/(1-P)/(1-P)*(P-x))
  let(th = atan(dy))
  [upper ? x - y*sin(th):x + y*sin(th), upper ? yc + y*cos(th):yc - y*cos(th)];

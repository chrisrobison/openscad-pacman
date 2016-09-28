

$fn=64;
module top(a=0) {
   rotate([a,0,0]) union() {
      
      difference() {
         color("Yellow") sphere(10,center=true);
         color("Black") translate([0,0,-10]) cube(20,center=true);
      
         color("Black") translate([3,6,5]) rotate([120,0,-30]) scale([1,1.5,1]) cylinder(h=4,r=2,center=true);
         color("Black") translate([-3,6,5]) rotate([120,0,30]) scale([1,1.5,1]) cylinder(h=4,r=2,center=true);
      }
   }
}

module bottom(a=0) {
   rotate([a,0,0]) union() {
      difference() {
         color("Yellow") sphere(10,center=true);
         color([.2,.2,.2,1]) translate([0,0,10]) cube(20,center=true);
      }
      color("Pink") translate([0,2,0]) union() {
         scale([1.2,2,1]) cylinder(h=1,r=3,center=true);
         translate([0,-3,0]) cube([6,6,1],center=true);
      }
   }
}

x=45;

translate([0,0,0]) top(sin(180*$t)*x);
bottom(sin(-180*$t)*x);


color("White") translate([0,20-(20*$t),0]) sphere(2,center=true);

color("White") translate([0,40-(20*$t),0]) sphere(2,center=true);
color("White") translate([0,60-(20*$t),0]) sphere(2,center=true);
color("White") translate([0,80-(20*$t),0]) sphere(2,center=true);
color("White") translate([0,100-(20*$t),0]) sphere(2,center=true);
color("White") translate([0,120-(20*$t),0]) sphere(2,center=true);
color("White") translate([0,140-(20*$t),0]) sphere(2,center=true);
color("White") translate([0,160-(20*$t),0]) sphere(2,center=true);

$vpr=[ 73.90, 0.00, 150-(0*$t) ];
$vpt=[0,10,0];

module ghost() {
   union() {
      difference() {
         color("Red") union() {
            translate([0,0,7]) sphere(9,center=true);
            translate([0,0,-2]) cylinder(h=18,r=9,center=true);
         }
         translate([0,0,-10]) rotate([0,90,0+($t*360)]) scale([2,1,1]) cylinder(h=30,r=2,center=true);
         translate([0,0,-10]) rotate([0,90,45+($t*360)]) scale([2,1,1]) cylinder(h=30,r=2,center=true);
         translate([0,0,-10]) rotate([0,90,90+($t*360)]) scale([2,1,1]) cylinder(h=30,r=2,center=true);
         translate([0,0,-10]) rotate([0,90,-45+($t*360)]) scale([2,1,1]) cylinder(h=30,r=2,center=true);
      color("White") translate([4,8,8]) rotate([90,0,0]) cylinder(h=3,r=3,center=true);
      color("White") translate([-4,8,8]) rotate([90,0,0]) cylinder(h=3,r=3,center=true);
      }
      color("White") translate([4,6,8]) rotate([90,0,0]) sphere(r=3,center=true);
      color("White") translate([-4,6,8]) rotate([90,0,0]) sphere(r=3,center=true);
      color("Black") translate([4,8,8]) rotate([90,0,0]) cylinder(h=2,r=1.25,center=true);
      color("Black") translate([-4,8,8]) rotate([90,0,0]) cylinder(h=2,r=1.25,center=true);
   }
}
translate([0,-70+(sin($t*360)*1),0]) ghost();


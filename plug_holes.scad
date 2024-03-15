
module ethernet() {
cube([15,30,19.2],center=true);
};

module 12v() {
    translate([0,30,0])rotate([90,0,0])
    difference(){
        cylinder(h=30,r=6.1,$fn=36);
        translate([5.8,-15,0])cube([5,30,30]);
        translate([-10.8,-15,0])cube([5,30,30]);
}}

//12v();
//ethernet();

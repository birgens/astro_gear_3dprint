include <nutsnbolts/cyl_head_bolt.scad>;
include <shoes.scad>;

pinspace = 3; // Plass under

module rpi4bholes(){
    union(){
        rotate([180,0,0])hole_through(name="M3",h=2.);
        translate([58,0,0])rotate([180,0,0])hole_through(name="M3",h=2.5);
        translate([0,49,0])rotate([180,0,0])hole_through(name="M3",h=2.5);
        translate([58,49,0])rotate([180,0,0])hole_through(name="M3",h=2.5);
}}

module rpi4b_spaceinghole(){
    cube([70,80,1]);
}

rpi4width=46.5; //56mm
rpi4length=85.5;
module rpi4_enclosure(){
    difference(){
        cube([rpi4width+6,rpi4length+6,30]); // The outer dimensions
        translate([0,3,3])cube([rpi4width,rpi4length,24]); // PBox dimensions
        translate([3.5+3,3.5+3,0])rotate([0,0,90])rpi4bholes();
    };
}

//translate([0,0,0])rotate([0,0,90])rpi4bholes();
//rpi4_enclosure();
//rpi4b_spaceinghole();
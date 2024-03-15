include <nutsnbolts/cyl_head_bolt.scad>;
include <shoes.scad>;


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

//rpi4b_spaceinghole();
include <rpi4_case.scad>;
include <stack_mount.scad>;

h = 16;
difference() {
union(){
//translate([case_thickness,71-(pid+case_thickness),0])
//    intersection(){ // bottom of case
//        rpi4_case();
//        topSelector();
//    };
cube([106,3,16]);
cube([3,13,16]);
//cube([106,13,3]);
//translate([106-16.5,0,0])cube([16.5,71,3]);
translate([106-3,0,0])cube([3,71,16]);
translate([106-16.5,71-3,0])cube([16.5,3,16]);
translate([0,0,16.])cube([106,71,2]);

// Mellom USB og Ethernet
translate([0,30,0])cube([3,5,h]);
translate([0,48,0])cube([3,5,h]);
translate([0,66,0])cube([3,3,h]);
}
translate([2,2,0])cube([102,67,16]);
translate([106/2,71/2,15])rotate([0,0,0])mount_m4_pb(center=true);
translate([106/2,71/2+3,17])mount_m4_small(center=true);
translate([106/2,71/2+3,17])mount_m4_medium(center=true);
translate([106/2,71/2+3,17])mount_m4_medium(center=true);

}
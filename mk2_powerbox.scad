include <pegasusastro.scad>;
include <stack_mount.scad>;

difference() {
powerbox_enclosure();
    
translate([71/2,106/2+3,-1.5])mount_m4_small(center=true);
translate([71/2,106/2+3,-1.5])mount_m4_medium(center=true);
translate([71/2,106/2+3,-1.5])rotate([0,0,90])mount_m4_medium(center=true);
translate([71/2,106/2,-1.5])rotate([0,0,90])mount_m4_pb(center=true);

translate([71/2,106/2+3,25.3+4+3.5])mount_m4_small(center=true);
translate([71/2,106/2+3,25.3+4+3.5])mount_m4_medium(center=true);
translate([71/2,106/2+3,25.3+4+3.5])rotate([0,0,90])mount_m4_medium(center=true);
translate([71/2,106/2,25.3+4+3.5])rotate([0,0,90])mount_m4_pb(center=true);

//    translate([-10,-10,28])cube(120);
//        translate([65,-10,0])cube(120);
//    translate([-115,-10,0])cube(120);
//        translate([10,20,0])cube([50,80,10]);


}


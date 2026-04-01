include <rpi4_case.scad>;
include <raspberrypi.scad>;
include <stack_mount.scad>;


difference(){
    // Hovedboks:
    cube([106,71,28]);
    
//    union(){
//        // Plate
//        cube([106,71,4]);
//        // Bunnen av rpi case
//        translate([case_thickness,71-(pid+case_thickness),case_thickness+5])
//            difference(){
//                rpi4_case();
//                topSelector();
//                }
//    }
//    
//    // Gjennomgående hull til rpi
//    translate([case_thickness,71-(pid+case_thickness),case_thickness+3])
//    pins();
//        
//    translate([case_thickness,71-(pid+case_thickness),0])
//    translate([1.25,1.25,0]){ // this is to move all the pins
//        translate([22.2,2,0]) cylinder(5,r=3+0.2, center=true,$fn=6);     // hole  top-r
//        translate([22.2,2,0]) cylinder(30,r=1.15+0.2, center=true,$fn=36);
//        translate([22.2,51.1,0]) cylinder(5,r=3+0.2, center=true,$fn=6);  // hole  bot-r
//        translate([22.2,51.1,0]) cylinder(30,r=1.15+0.2, center=true,$fn=36);
//
//        translate([80.2,2,0]) cylinder(5,r=3+0.2, center=true,$fn=6);     // hole  top-l
//        translate([80.2,2,0]) cylinder(30,r=1.15+0.2, center=true,$fn=36);
//
//        translate([80.2,51.1,0]) cylinder(5,r=3+0.2, center=true,$fn=6);  // hole  bot-l
//        translate([80.2,51.1,0]) cylinder(30,r=1.15+0.2, center=true,$fn=36);
//
//        };
//      
//    // Hull til platefester
//    translate([106/2,71/2,-1.])rotate([0,0,0])mount_m4_pb(center=true);
//    translate([106/2,71/2+3,-1.])mount_m4_small(center=true);
//    translate([106/2,71/2+3,-1.])mount_m4_medium(center=true);
//    //translate([106/2,71/2+3,-1.5])rotate([0,0,90])mount_m4_medium(center=true);
        
  
};



//rotate([180,0,0])difference(){
//        rpi4_case();
//        topSelector();}

//difference(){
//intersection(){ // bottom of case
//  rpi4_case();
//  topSelector();
//}
//  cube([85,60,5]);
//}
//
//translate([78,10,14])rotate(90)finder_shoe(35);
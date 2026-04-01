
module bolt_and_nut_m3(length = 2) {
    union(){
        cylinder(h=length, r=1.6,$fn=30);
        translate([0,0,-10])cylinder(h=10, r=3, $fn=6);
        translate([0,0,length])cylinder(h=10, r=3, $fn=6);
    }
}

module bolt_and_nut_m4(length = 2) {
    union(){
        cylinder(h=length, r=2+0.2,$fn=30);
        translate([0,0,-10])cylinder(h=10, r=4+0.2, $fn=6);
        translate([0,0,length])cylinder(h=10, r=4+0.2, $fn=36);
    }
}

//cylinder(h=10, r=100, $fn=6);

module mount_m3_5x5(center=false) {
    offset = center ? [-(50)/2, -(50)/2, 0] : [0, 0, 0]; // Adjust for centering

    union() {
        translate([5,5,0]+offset)bolt_and_nut_m3();
        translate([55,5,0]+offset)bolt_and_nut_m3();
        translate([55,55,0]+offset)bolt_and_nut_m3();
        translate([5,55,0]+offset)bolt_and_nut_m3();
    }
};

//mount_m3_5x5(center=false);

module mount_m3_med(center=false) {
    offset = center ? [-(100-5)/2, -(66-5)/2, 0] : [0, 0, 0]; // Adjust for centering
    union() {
        translate([5,5,0]+offset)bolt_and_nut_m3();
        translate([100,5,0]+offset)bolt_and_nut_m3();
        translate([100,66,0]+offset)bolt_and_nut_m3();
        translate([5,66,0]+offset)bolt_and_nut_m3();
    }
};

module mount_m4_small(center=false) {
    // Medium: 1x1cm
    offset = center ? [-5, -5, 0] : [0, 0, 0]; // Adjust for centering
    union() {
        translate([0,0,0]+offset)bolt_and_nut_m4();
        translate([10,10,0]+offset)bolt_and_nut_m4();
        translate([0,10,0]+offset)bolt_and_nut_m4();
        translate([10,0,0]+offset)bolt_and_nut_m4();
    }
};

module mount_m4_medium(center=false) {
    // Medium: 5x3cm
    offset = center ? [-25, -15, 0] : [0, 0, 0]; // Adjust for centering
    union() {
        translate([0,0,0]+offset)bolt_and_nut_m4();
        translate([50,30,0]+offset)bolt_and_nut_m4();
        translate([0,30,0]+offset)bolt_and_nut_m4();
        translate([50,0,0]+offset)bolt_and_nut_m4();
    }
};

module mount_m4_pb(center=false) {
    // PBsize: 90x60
    offset = center ? [-45, -30, 0] : [0, 0, 0]; // Adjust for centering
    union() {
        translate([0,0,0]+offset)bolt_and_nut_m4();
        translate([90,0,0]+offset)bolt_and_nut_m4();
        translate([90,60,0]+offset)bolt_and_nut_m4();
        translate([0,60,0]+offset)bolt_and_nut_m4();
    }
};

//difference(){
//    plate_med();
//    translate([106/2,71/2,2])mount_m4_medium(center=true);};
    
//    mount_m4_pb(center=true);

module plate_med() {
    cube([106,71,3]);
}
//
//difference(){
//    plate_med();
//    translate([106/2,71/2,2])mount_m3_med();};
    
//    mount_m3_med();
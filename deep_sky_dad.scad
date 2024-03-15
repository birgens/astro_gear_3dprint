include <nutsnbolts/cyl_head_bolt.scad>

EAF_width = 41;
EAF_height = 52;
EAF_corner = 3;
EAF_shape = [[EAF_corner,0],
                [EAF_width-EAF_corner,0],
                [EAF_width,EAF_corner],
                [EAF_width,EAF_height-EAF_corner],
                [EAF_width-EAF_corner,EAF_height],
                [EAF_corner,EAF_height],
                [0,EAF_height-EAF_corner],
                [0,EAF_corner]];


module EAF_shell(depth) {
    difference() {
        translate([0,0,EAF_height])rotate([-90,0,0])linear_extrude(depth){
            polygon(EAF_shape);}
        translate([(41-18)/2,0,EAF_height-4.5])rotate([90,0,0])hole_through("M4",l=25,$fn=18);
        translate([41-(41-18)/2,0,EAF_height-4.5])rotate([90,0,0])hole_through("M4",l=25,$fn=18);
        translate([(41-18)/2,3,EAF_height-4.5])rotate([90,-90,0])nutcatch_sidecut("M4",clk=0.2, clh=0.2,clsl=0.2);
        translate([41-(41-18)/2,3,EAF_height-4.5])rotate([90,-90,0])nutcatch_sidecut("M4",clk=0.2, clh=0.2, clsl=0.2);
            
        // Bakside
        translate([(41-25)/2,depth,EAF_height-4.5])rotate([-90,0,0])hole_through("M4",l=25,$fn=18);
        translate([41-(41-25)/2,depth,EAF_height-4.5])rotate([-90,0,0])hole_through("M4",l=25,$fn=18);
        translate([(41-25)/2,depth-6,EAF_height-4.5])rotate([90,-90,0])nutcatch_sidecut("M4",clk=0.2, clh=0.2,clsl=0.2);
        translate([41-(41-25)/2,depth-6,EAF_height-4.5])rotate([90,-90,0])nutcatch_sidecut("M4",clk=0.2, clh=0.2, clsl=0.2);}}

//EAF_shell(100);

//	name   = "M3",  // name of screw family (i.e. M3, M4, ...) 
//	l      = 50.0,  // length of slot
//	clk    =  0.0,  // key width clearance
//	clh    =  0.0,  // height clearance
//	clsl   =  0.1)  // slot width clearance

module EAF_back(depth) {
    difference() {
        translate([0,0,EAF_height])rotate([-90,0,0])linear_extrude(depth){
            polygon(EAF_shape);}    
        // Bakside
        translate([(41-25)/2,depth,EAF_height-4.5])rotate([-90,0,0])hole_through("M4",l=depth,$fn=18);
        translate([41-(41-25)/2,depth,EAF_height-4.5])rotate([-90,0,0])hole_through("M4",l=depth,$fn=18);
    if(depth>5){
        translate([41-(41-25)/2,0,EAF_height-4.5])rotate([-90,0,0])cylinder(h=depth-3,r=3.6);
        translate([(41-25)/2,0,EAF_height-4.5])rotate([-90,0,0])cylinder(h=depth-3,r=3.6);
    }
}}

        
//EAF_back(6);
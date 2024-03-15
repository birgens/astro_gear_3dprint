include <nutsnbolts/cyl_head_bolt.scad>;
    
finder_shape = [[0,0],[34,0],[27.5,10],[6.5,10]];

module finder_shoe(length){
    holes = ceil(length/20);
    difference(){
        cube([44,length,13]);
        
        translate([5,0,3]) mirror([0,1,0])rotate([90,0,0])
            linear_extrude(length){polygon(finder_shape);}
        
        for(i=[1 : 1 : holes]){
            translate([44,i*length/(holes+1),9])
                rotate([0,90,0])
                    union(){
                    hole_through(name="M4", 
                                  l=20,$fn=18);
                    translate([0,0,-5])
                        rotate([0,180,0])
                        nutcatch_sidecut("M4");}
//                                  thread = "modeled");
        }};}
//finder_shoe(30);
//module finder_fot(length){
//    rotate([0,90,0]) rotate([0,0,90])
//linear_extrude(length){polygon(points=[[0,3],
//     [58,3],
//     [58,0],
//    [47.5,0],
//    [42.5,-10],
//    [48.5,-21.],
//    [15,-21],
//    [21.5,-10],
//    [16,0],
//    [0,0]]);
//};}

module finder_fot(length){
    rotate([0,90,0]) rotate([0,0,90])
linear_extrude(length){polygon(points=[[0,0],
     [33.5,0],
     [27.5,11],
    [30,14],
    [3.5,14],
    [6,11]]);
};}
//finder_fot(30);

//mirror([0,1,0])
//rotate([90,0,0])
//linear_extrude(10){
//    polygon(finder_shape);
//};

//finder_shoe(40);
//finder_fot(100);
//rotate([180,0,0])screw(name="M4x20",thread="modeled");
        
    
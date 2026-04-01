include <pegasusastro.scad>;
include <shoes.scad>;

difference(){
union(){
    powerbox_enclosure();
    translate([29,50,-16])finder_foot(center=true,length=58);
    for(i=[10:4:40]){
    translate([0,i,34.3])cube([58,1.5,1.5]);
    translate([0,i,-1.5])cube([58,1.5,1.5]);
    };
    for(i=[70:4:100]){
    translate([0,i,34.3])cube([58,1.5,1.5]);
    translate([0,i,-1.5])cube([58,1.5,1.5]);
    };  
}
    for(i=[75.5:4:92]){
    translate([0,i,30.8])cube([58,2,2]);
    }
    for(i=[15:4:33]){
    translate([0,i,30.8])cube([58,2,2]);
    }
};
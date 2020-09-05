// Cryptex Disc Model


// Parts
use <base.scad>
use <lid.scad>


// Main Model
radius = 40;
width = 20;
thickness = 2;

clearance = 0.5;
difference(){
    union(){
        cpbBase(radius, width, thickness, clearance);
        translate([0,0,width-4*thickness+clearance])
            cpbLid(radius, thickness, clearance);
    };
    cube(radius);
}
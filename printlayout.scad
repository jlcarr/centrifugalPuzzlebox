// Centrifugal Puzzle Box - Printing Model


// Parts
use <base.scad>
use <lid.scad>


// Main Model
radius = 40;
width = 20;
thickness = 2;

clearance = 0.5;

translate([2*radius,0,0])
    cpbBase(radius, width, thickness, clearance);
translate([-2*radius,0,0])
    cpbLid(radius, thickness, clearance);
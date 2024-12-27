$fn=50;
module sve(){
module telo()
{
//gornji deo tela
difference(){
translate([20,-18,16])
rotate([0,0,45])
cylinder(h=40, r1=28.28, r2=30, $fn=4);
translate([-2,-48,0])
cube([50,30,70]);
}
//donji deo tela
translate([0,-18,0])
cube([40,18,16]);//tamo je 17 zbog spajanja

}
module celotelo()
{
difference()
{
telo();
//rupe sa desne strane
translate([-2,-4,25])
rotate([0,90,0])
cylinder(h=2, r=4);
    
translate([-2,-4,40])
rotate([0,90,0])
cylinder(h=2, r=3);
    
translate([-2,-10,50])
rotate([0,90,0])
cylinder(h=2, r=2);
    
translate([-2,-14,35])
rotate([0,90,0])
cylinder(h=2, r=2.5);

translate([-2,-12,20])
rotate([0,90,0])
cylinder(h=2, r=2.5);

//rupe sa leve strane
translate([40,-4,25])
rotate([0,90,0])
cylinder(h=2, r=4);

translate([40,-4,40])
rotate([0,90,0])
cylinder(h=2, r=3);

translate([40,-10,50])
rotate([0,90,0])
cylinder(h=2, r=2);
    
translate([40,-14,35])
rotate([0,90,0])
cylinder(h=2, r=2.5);

translate([40,-12,20])
rotate([0,90,0])
cylinder(h=2, r=2.5);

//rupe pozadi
translate([8,-18.5,25])
rotate([0,90,90])
cylinder(h=1.5, r=6);

translate([30,-18.5,23])
rotate([0,90,90])
cylinder(h=1.5, r=6);

translate([20,-18.5,30])
rotate([0,90,90])
cylinder(h=1.5, r=3);

translate([33,-18.5,40])
rotate([0,90,90])
cylinder(h=1.5, r=6);

translate([10,-18.5,38])
rotate([0,90,90])
cylinder(h=1.5, r=5);

translate([20,-18.5,48])
rotate([0,90,90])
cylinder(h=1.5, r=4);

translate([36,-18.5,51])
rotate([0,90,90])
cylinder(h=1.5, r=3);

translate([6,-18.5,50])
rotate([0,90,90])
cylinder(h=1.5, r=4);

//rupe na glavi

translate([6,-1.5,55.5])
rotate([0,0,90])
cylinder(h=1.5, r=4);

translate([20,-5,55.5])
rotate([0,0,90])
cylinder(h=1.5, r=5);

translate([34,-10,55.5])
rotate([0,0,90])
cylinder(h=1.5, r=6);

translate([4,-10,55.5])
rotate([0,0,90])
cylinder(h=1.5, r=2);

translate([12,-12,55.5])
rotate([0,0,90])
cylinder(h=1.5, r=3);

translate([30,-1,55.5])
rotate([0,0,90])
cylinder(h=1.5, r=2);

//rupe napred

translate([4,2,50])
rotate([0,90,90])
cylinder(h=1.5, r=3);

translate([37,2,52])
rotate([0,90,90])
cylinder(h=1.5, r=3);

translate([36,1.2,25])
rotate([0,90,90])
cylinder(h=1.5, r=3);

translate([32,1.2,20])
rotate([0,90,90])
cylinder(h=1.5, r=2.5);

translate([6,1.1,22])
rotate([0,90,90])
cylinder(h=1.5, r=3);

}
}
module usne()
{
difference()
{
translate([20,-1,34])
rotate([0,90,90])
cylinder(h=4,r=13);
translate([0,0.5,35])
cube(40);
}
}
module zubi()
{
 color("white")
translate([14,-1.5,29])
cube([4,4,9]);
 color("white")
translate([22,-1.5,29])
cube([4,4,9]);
}

module jezik()
{   
    color("red")
    translate([18,-2,20])
    sphere(4);
    color("red")
    translate([22,-2,20])
    sphere(4);
}


module kravata()
{
    //kosulja
color("White")
translate([15.4,2,14.5])
rotate([90,90,0])
cylinder(h=2, r1=3,r2=3,$fn=3);
color("White")
translate([24.6,2,14.5])
rotate([90,90,0])
cylinder(h=2, r1=3,r2=3,$fn=3);

//kravata
translate([0,19,0])
color("Red")
union()
{
 
//gornji deo kravate
translate([18,-20,14])
cube([4,3,2]);
//sredji deo
translate([20,-31,9])
difference()
{
translate([0,12,1])
rotate([0,0,45])
cylinder(h=4,r1=4.2,r2=2.82,$fn=4);
translate([-5,1,-1])
cube([10,10,10]);
translate([-5,14,-1])
cube(10);
}
//dodnji deo
translate([20,-17,6])
rotate([90,90,0])
cylinder(h=3,r1=5,r2=5,$fn=5);
}

}





module oci()
{
    //desno oko
color("White")
translate([13,0,44])
rotate([90,0,0])
difference()
{
union()
{
sphere(7,$fn=100);
cylinder(h=6,r1=7,r2=7,$fn=50);
}
translate([0,0,4])
cylinder(h=3,r1=8,r2=8,$fn=50);
}

//levo oko
color("White")
translate([28,0,44])
rotate([90,0,0])
difference()
{
union()
{
sphere(7,$fn=100);
cylinder(h=6,r1=7,r2=7,$fn=50);
}
translate([0,0,4])
cylinder(h=3,r1=8,r2=8,$fn=50);
}
}

module jagodice()
{
translate([6,2,35])
sphere(3);
translate([33,2,35])
sphere(3);
}


module trepavice()
{
color("black")
translate([15,3,49])
rotate([0,30,0])
cube([1,1,4.5]);

color("black")
translate([12.5,3,49])
cube([1,1,4.5]);

color("black")
translate([10,3,49])
rotate([0,-30,0])
cube([1,1,4.5]);
}




module braonlinije()
{
        //linije napred
color("brown")
translate([11,-1,7])
cube([18,2,2]);

color("brown")
translate([2,-1,7])
cube([7,2,2]);

color("brown")
translate([31,-1,7])
cube([7,2,2]);

//linije nazad
color("brown")
translate([1.5,-19,7])
cube([7,2,2]);

color("brown")
translate([11.5,-19,7])
cube([7,2,2]);

color("brown")
translate([21.5,-19,7])
cube([7,2,2]);

color("brown")
translate([31.5,-19,7])
cube([7,2,2]);

//linije sa strane
color("brown")
translate([-1,-16.5,7])
cube([2,15,2]);

color("brown")
translate([39,-16.5,7])
cube([2,15,2]);
}

//udubljenje za usne
difference()
{
celotelo();
usne();
}
module ruka(){
minkowski()
{
sphere(1,$fn=40);
rotate([90,0,0])
cylinder(h=25,r=0.6,$fn=40);
}

module saka(){
translate([0,0,1])
minkowski()
{
translate([0,1.5,-2])
cylinder(h=2,r=2.8,$fn=20);
sphere(0.4);
}
}

hull(){
saka();
translate([0,-2,-1])
cylinder(h=2,r=1.5,$fn=20);
}
module prsti(){
rotate([0,0,-35])
hull()
{
sphere(1.4);
translate([5,5,0])
sphere(1.95);
}
translate([1,0.8,0])
rotate([0,0,20])
hull()
{
sphere(1.4);
translate([5,5,0])
sphere(1.95);
}
translate([-0.5,1,0])
rotate([0,0,58])
hull()
{
sphere(1.4);
translate([5,5,0])
sphere(1.95);
}
translate([0,1,0])
rotate([0,0,120])
hull()
{
sphere(1.4);
translate([5,5,0])
sphere(1.95);
}
}

prsti();
}

zubi();
jezik();
kravata();
oci();
jagodice();
trepavice();
translate([15.5,0,0])
trepavice();
braonlinije();

module rukav(){
translate([0,-8,25])
union()
{
color("Red")
translate([0,-1,-1])
cube([7,2,2]);

rotate([90,30,0])
color("White")
union()
{
sphere(3.5,$fn=50);
rotate([90,0,0])
cylinder(h=6,r=3.5,$fn=100);
}
}
}
module rukarukav(){
    union(){
        translate([-12,-8,5])
rotate([90,210,0])
rotate([0,90,0])
ruka();
rukav();
        }
    }
//leva ruka
rukarukav();
translate([40.15,-16,0])
rotate([0,0,0])
rotate([0,0,180])
rukarukav();
}
translate([0,0,25])
sve();
module noga(){
cylinder(h=20,r=2.3,$fn=30);

translate([0,0,25])
union()
{
rotate([90,0,0])
color("White")
union()
{
sphere(4.4,$fn=50);
rotate([90,0,0])
cylinder(h=6,r=4.4,$fn=100);
}
}
difference(){
    //unija 2 lopte
union(){
translate([0,0.7,0])
sphere(5.4);
translate([0,11.7,0.4])
sphere(6.45);
translate([0,6,1])
sphere(3.5);
translate([0,8,0])
cube([3.8,17,7],true);
    }
//sad od njih oduzimamo dno
translate([0,9,-7])
cube([17,29,9],true);

translate([-10,5,-2.2])
rotate([0,90,0])
rotate([0,0,80])
cylinder(h=25,r=2,$fn=3);
    }
}

translate([11,-9,1])
noga();
translate([30,-9,1])
noga();

module nos(){
$fn=40;
hull(){
sphere(1.2);
translate([0,15,2])
sphere(2);
}}
translate([20,-2,62])
nos();

module kapa(){
translate([0,0,18.5])
union()
{
rotate([90,0,0])
color("White")
union()
{
sphere(5,$fn=50);
rotate([90,0,0])
cylinder(h=18,r=5,$fn=100);
}}

color("Red")
cylinder(h=4,r=5,$fn=100);
color("Red")
translate([0,12,0])
cylinder(h=4,r=5,$fn=100);
translate([-5,1.5,0])
cube([10,10,4]);}
//translate([20,-5,81])
//kapa();
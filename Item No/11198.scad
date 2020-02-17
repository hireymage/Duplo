include <Duplo/Setting.scad>;
include <Duplo/upper_button.scad>;
include <Duplo/up_pool.scad>;
include <Duplo/downer_button.scad>;
include <Duplo/downer_button_n.scad>;
include <Duplo/down_pool_n.scad>;
include <Duplo/Basic_Block.scad>;
include <Duplo/zaterasy.scad>;


//include <Duplo/Duplo_Normal.scad>;

module DUPLO_BRICK_1(X,Y,Z,Z_1,X_2,Y_2,Z_2){
DUPLO_UP_POOL(X,Y,X_2,Y_2,Z+Z_2);//počet čudlíku x,y, souřadnice zobrazení x,y,z
//DUPLO_DOWN_POOL(X,Y,Z,X_2,Y_2,Z_2);//počet čudlíku x,y,Výčka z souřadnice zobrazení x,y,z;
BASIC_BLOCK(X,Y,Z,Z_1,X_2,Y_2,Z_2);//Rozměry kostičky x,y,z, Výběr ze zdola z_1, souřadnice zobrazení x,y,z
//ZATERASY(X,Y,Z_1,X_2,Y_2,Z_2,1,1,1,1);
}
module DUPLO_BRICK_2(X,Y,Z,Z_1,X_2,Y_2,Z_2){
DUPLO_UP_POOL(X,Y,X_2,Y_2,Z+Z_2);//počet čudlíku x,y, souřadnice zobrazení x,y,z
DUPLO_DOWN_POOL_N(X,Y,Z,X_2,Y_2,Z_2);//počet čudlíku x,y,Výčka z souřadnice zobrazení x,y,z;
BASIC_BLOCK(X,Y,Z,Z_1,X_2,Y_2,Z_2);//Rozměry kostičky x,y,z, Výběr ze zdola z_1, souřadnice zobrazení x,y,z
ZATERASY(X,Y,Z_1,X_2,Y_2,Z_2,1,1,1,1);
}


difference(){
union(){
DUPLO_BRICK_2(2,1,4,4,0,0,0);
DUPLO_BRICK_2(2,1,4,4,0,3,0);
DUPLO_BRICK_1(2,4,4,4,0,0,0);
}
union(){
rotate(a=[0,90,0])
translate([-DUPLO_VYSKA,DUPLO_SIRKA*2,0])
cylinder(r= (DUPLO_SIRKA*2+DUPLO_SIRKA_ODEBRAT*2)/2, h=(DUPLO_SIRKA*2) ,$fn=DUPLO_KRUH);
translate([0,DUPLO_SIRKA-DUPLO_SIRKA_ODEBRAT,0])
cube ([DUPLO_SIRKA*2+DUPLO_SIRKA_ODEBRAT*2,DUPLO_SIRKA*2+DUPLO_SIRKA_ODEBRAT*2,DUPLO_VYSKA*1]);
}
}
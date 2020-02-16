include <Duplo/Setting.scad>;
include <Duplo/upper_button.scad>;
include <Duplo/up_pool.scad>;
include <Duplo/downer_button.scad>;
include <Duplo/down_pool_n.scad>;
include <Duplo/Basic_Block.scad>;
include <Duplo/zaterasy.scad>;


DUPLO_BRICK(1,4,4,4,0,0,0);

module DUPLO_BRICK(X,Y,Z,Z_1,X_2,Y_2,Z_2){
DUPLO_UP_POOL(X,Y,X_2,Y_2,Z+Z_2);//počet čudlíku x,y, souřadnice zobrazení x,y,z
DUPLO_DOWN_POOL_N(X,Y,Z,X_2,Y_2,Z_2);//počet čudlíku x,y,Výčka z souřadnice zobrazení x,y,z;
BASIC_BLOCK(X,Y,Z,Z_1,X_2,Y_2,Z_2);//Rozměry kostičky x,y,z, Výběr ze zdola z_1, souřadnice zobrazení x,y,z
ZATERASY(X,Y,Z_1,X_2,Y_2,Z_2,1,1,1,1);
}
include <Duplo/setting.scad>;
include <Duplo/upper_button.scad>;
include <Duplo/up_pool.scad>;
include <Duplo/downer_button.scad>;
include <Duplo/down_pool.scad>;
include <Duplo/Basic_Block.scad>;
include <Duplo/zaterasy.scad>;
include <Duplo/Circle.scad>;
include <Duplo/Duplo_Normal.scad>;
DUPLO_CLOCK(2,2,1,2,0,0,0,1,0);//velikost kostičky x,y,z, hloubka dolni kostičky
//DUPLO_CLOCK(2,2,1,2,0,2,0,1,0);

//DUPLO_BRICK(2,2,2,2,0,1,0);

module DUPLO_CLOCK(X,Y,Z,Z_1,X_2,Y_2,Z_2,X_3,Y_3){

//DUPLO_DOWN_POOL(X,Y,Z,X_2,Y_2,Z_2);//počet čudlíku x,y,Výčka z souřadnice zobrazení x,y,z;
//BASIC_BLOCK(X,Y,Z,Z_1,X_2,Y_2,Z_2);//Rozměry kostičky x,y,z, Výběr ze zdola z_1, souřadnice zobrazení x,y,z
//ZATERASY(X,Y,Z_1,X_2,Y_2,Z_2*X_3,X_3,X_3,Y_3,Y_3);//krátky
//ZATERASY(X,Y,Z_1-1,X_2,Y_2,Z_2*Y_3,Y_3,Y_3,X_3,X_3);//dlouhý
    //DUPLO_CIRCLE_X(X,Y,Z,1,1,1);//rozměry kostičky x,y,z, dutost, pouze půlka
    //DUPLO_CIRCLE_Y(X,Y,Z,1,1,1);
//intersection(){
//union() {
//ZATERASY(X,Y,Z_1,X_2,Y_2,Z_2+1*X_3,X_3,X_3,Y_3,Y_3);//krátky
//ZATERASY(X,Y,Z_1,X_2,Y_2,Z_2+1*Y_3,Y_3,Y_3,X_3,X_3);//dlouhý    
//} 
    
  //  translate([X_2*DUPLO_SIRKA,Y_2*DUPLO_SIRKA,-DUPLO_SIRKA/2])DUPLO_CIRCLE(X,Y,Z,1,0,0,1);
//}

translate([X_2*DUPLO_SIRKA,Y_2*DUPLO_SIRKA,-DUPLO_SIRKA/2-DUPLO_SIRKA_ODEBRAT]) DUPLO_CIRCLE(X,Y,Z,1,0,1,1);
}

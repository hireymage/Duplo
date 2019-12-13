include <Duplo/Duplo_Normal.scad>;
module prism(x, y, z,x_1,y_1,z_1,vyber){
       CubePoints = [
              [                x_1*DUPLO_SIRKA + DUPLO_SIRKA_ODEBRAT,                 y_1*DUPLO_SIRKA + DUPLO_SIRKA_ODEBRAT,  z_1*DUPLO_VYSKA+vyber*DUPLO_STENA ],  //0
              [x*DUPLO_SIRKA + x_1*DUPLO_SIRKA - DUPLO_SIRKA_ODEBRAT,                 y_1*DUPLO_SIRKA + DUPLO_SIRKA_ODEBRAT,  z_1*DUPLO_VYSKA+vyber*DUPLO_STENA ],  //1
              [x*DUPLO_SIRKA + x_1*DUPLO_SIRKA - DUPLO_SIRKA_ODEBRAT, y*DUPLO_SIRKA + y_1*DUPLO_SIRKA - DUPLO_SIRKA_ODEBRAT,  z*DUPLO_VYSKA+z_1*DUPLO_VYSKA+vyber*DUPLO_STENA ],  //2
              [                x_1*DUPLO_SIRKA + DUPLO_SIRKA_ODEBRAT, y*DUPLO_SIRKA + y_1*DUPLO_SIRKA - DUPLO_SIRKA_ODEBRAT,  z*DUPLO_VYSKA+z_1*DUPLO_VYSKA+vyber*DUPLO_STENA ],  //3
              [                x_1*DUPLO_SIRKA + DUPLO_SIRKA_ODEBRAT,                 y_1*DUPLO_SIRKA + DUPLO_SIRKA_ODEBRAT,  (z+2)*DUPLO_VYSKA+z_1*DUPLO_VYSKA+vyber*DUPLO_STENA ],  //4
              [x*DUPLO_SIRKA + x_1*DUPLO_SIRKA - DUPLO_SIRKA_ODEBRAT,                 y_1*DUPLO_SIRKA + DUPLO_SIRKA_ODEBRAT,  (z+2)*DUPLO_VYSKA+z_1*DUPLO_VYSKA+vyber*DUPLO_STENA ],  //5
              [x*DUPLO_SIRKA + x_1*DUPLO_SIRKA - DUPLO_SIRKA_ODEBRAT, y*DUPLO_SIRKA + y_1*DUPLO_SIRKA - DUPLO_SIRKA_ODEBRAT,  (z+2)*DUPLO_VYSKA+z_1*DUPLO_VYSKA+vyber*DUPLO_STENA ],  //6
              [                x_1*DUPLO_SIRKA + DUPLO_SIRKA_ODEBRAT, y*DUPLO_SIRKA + y_1*DUPLO_SIRKA - DUPLO_SIRKA_ODEBRAT,  (z+2)*DUPLO_VYSKA+z_1*DUPLO_VYSKA+vyber*DUPLO_STENA ]]; //7
  
        CubeFaces = [
          [0,1,2,3],  // bottom
          [4,5,1,0],  // front
          [7,6,5,4],  // top
          [5,6,2,1],  // right
          [6,7,3,2],  // back
          [7,4,0,3]]; // left
  
polyhedron( CubePoints, CubeFaces );
       

       }


difference () {
    
    union(){
    
        
    DUPLO_BRICK_x(2,4,4,4,0,0,0);
    prism(2, 4, 3, 0,0,1,-1);
    //prism(1, 4, 3, 1,0,2,-1);
    }
    union(){
    prism(2, 4, 3, 0,0,1,0);
    //prism(1, 4, 3, 1,0,2,0);
    }
}


module DUPLO_BRICK_x(X,Y,Z,Z_1,X_2,Y_2,Z_2){
//DUPLO_UP_POOL(X,Y,X_2,Y_2,Z+Z_2);//počet čudlíku x,y, souřadnice zobrazení x,y,z
DUPLO_DOWN_POOL(X,Y,Z,X_2,Y_2,Z_2);//počet čudlíku x,y,Výčka z souřadnice zobrazení x,y,z;
BASIC_BLOCK(X,Y,Z,Z_1,X_2,Y_2,Z_2);//Rozměry kostičky x,y,z, Výběr ze zdola z_1, souřadnice zobrazení x,y,z
ZATERASY(X,Y,Z_1,X_2,Y_2,Z_2,1,1,1,1);
}
intersection(){
union(){
DUPLO_BRICK(1,2,1,1,0,0,1);
DUPLO_BRICK(1,2,2,1,0,1,1);
DUPLO_BRICK(1,2
    ,2,1,0,2,2);
DUPLO_BRICK(1,1,2,1,0,3,3);
}
prism(2, 4, 3, 0,0,1,0);
}
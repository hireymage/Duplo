//Basic Block----------------------------
module BASIC_BLOCK(BLOCK_SIZE_X,BLOCK_SIZE_Y,BLOCK_SIZE_Z,BLOCK_SIZE_Z_1,COORDINATES_X,COORDINATES_Y,COORDINATES_Z){
    translate ([COORDINATES_X*DUPLO_SIRKA,COORDINATES_Y*DUPLO_SIRKA,COORDINATES_Z*DUPLO_VYSKA]) {
        difference(){
//Basic Block
            union(){
                intersection(){
                    cube ([DUPLO_SIRKA*BLOCK_SIZE_X,DUPLO_SIRKA*BLOCK_SIZE_Y,DUPLO_VYSKA*BLOCK_SIZE_Z]);
//Removing material from the sides
                    translate ([DUPLO_SIRKA_ODEBRAT,DUPLO_SIRKA_ODEBRAT,0]) {
                        cube ([DUPLO_SIRKA*BLOCK_SIZE_X-2*DUPLO_SIRKA_ODEBRAT,DUPLO_SIRKA*BLOCK_SIZE_Y-2*DUPLO_SIRKA_ODEBRAT,DUPLO_VYSKA*BLOCK_SIZE_Z]);
                    }
                }
            }
//Lower Selection
            translate ([DUPLO_STENA+DUPLO_SIRKA_ODEBRAT,DUPLO_STENA+DUPLO_SIRKA_ODEBRAT,0]) {
                cube ([(DUPLO_SIRKA*BLOCK_SIZE_X)-(2*(DUPLO_STENA+DUPLO_SIRKA_ODEBRAT)),(DUPLO_SIRKA*BLOCK_SIZE_Y)-(2*(DUPLO_STENA+DUPLO_SIRKA_ODEBRAT)),DUPLO_VYSKA*BLOCK_SIZE_Z_1-(DUPLO_VYSKA-DUPLO_HLOUBKA)]);
            }
        } 
    }
}
   
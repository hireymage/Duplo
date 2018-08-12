//krychle--------------
module ZAKLADNI_KRYCHLE(KRYCHLE_X,KRYCHLE_Y,KRYCHLE_Z,KRYCHLE_Z_1,X,Y,Z){
    translate ([X*DUPLO_SIRKA,Y*DUPLO_SIRKA,Z*DUPLO_VYSKA]) {
        difference(){
        //Základní krychle
            union(){
                intersection(){
                    cube ([DUPLO_SIRKA*KRYCHLE_X,DUPLO_SIRKA*KRYCHLE_Y,DUPLO_VYSKA*KRYCHLE_Z]);
                    //Odebrání materiálu ze stran
                    translate ([DUPLO_SIRKA_ODEBRAT,DUPLO_SIRKA_ODEBRAT,0]) {
                        cube ([DUPLO_SIRKA*KRYCHLE_X-2*DUPLO_SIRKA_ODEBRAT,DUPLO_SIRKA*KRYCHLE_Y-2*DUPLO_SIRKA_ODEBRAT,DUPLO_VYSKA*KRYCHLE_Z]);
                    }
                }
            }
        //Dolní výběr
            translate ([DUPLO_STENA+DUPLO_SIRKA_ODEBRAT,DUPLO_STENA+DUPLO_SIRKA_ODEBRAT,0]) {
                cube ([(DUPLO_SIRKA*KRYCHLE_X)-(2*(DUPLO_STENA+DUPLO_SIRKA_ODEBRAT)),(DUPLO_SIRKA*KRYCHLE_Y)-(2*(DUPLO_STENA+DUPLO_SIRKA_ODEBRAT)),DUPLO_VYSKA*KRYCHLE_Z_1-(DUPLO_VYSKA-DUPLO_HLOUBKA)]);
            }
        } 
    }
}
   
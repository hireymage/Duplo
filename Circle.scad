module DUPLO_CIRCLE_X(DUPLO_X,DUPLO_Y,DUPLO_Z,DUTOST,PULKA,PROTISTRANA) {
    difference(){
        union(){
            difference(){
                rotate(a=[0,90,0]) {
                    translate([-1*(DUPLO_Z*DUPLO_VYSKA),(DUPLO_SIRKA*DUPLO_Y)/2,DUPLO_SIRKA_ODEBRAT]) {
                        cylinder(r= (DUPLO_SIRKA*DUPLO_Y-DUPLO_SIRKA_ODEBRAT*2)/2, h=(DUPLO_SIRKA*DUPLO_X)-DUPLO_SIRKA_ODEBRAT*2 ,$fn=DUPLO_KRUH);
                    }
                }
            if(PULKA==1){
                BASIC_BLOCK(DUPLO_X,DUPLO_Y,DUPLO_Y,0,0,0,DUPLO_Z-DUPLO_Y);
            }
            
            }
        }
        union(){
            if (DUTOST==1){
                rotate(a=[0,90,0]) {
                    translate([-1*(DUPLO_Z*DUPLO_VYSKA),(DUPLO_SIRKA*DUPLO_Y)/2,DUPLO_SIRKA_ODEBRAT+DUPLO_STENA]) {
                        cylinder(r= (DUPLO_SIRKA*DUPLO_Y-DUPLO_SIRKA_ODEBRAT*2-DUPLO_STENA*2)/2, h=(DUPLO_SIRKA*DUPLO_X)-DUPLO_SIRKA_ODEBRAT*2-DUPLO_STENA*2 ,$fn=DUPLO_KRUH);
                    }
                }
            }
            if (PROTISTRANA==1){
                rotate(a=[90,90,0]) {
                    translate([-1*(DUPLO_Z*DUPLO_VYSKA),(DUPLO_SIRKA*DUPLO_X)/2,DUPLO_SIRKA_ODEBRAT-DUPLO_SIRKA*DUPLO_Y]) {
                        cylinder(r= (DUPLO_SIRKA*DUPLO_X-DUPLO_SIRKA_ODEBRAT*2-DUPLO_STENA*2)/2, h=(DUPLO_SIRKA*DUPLO_Y)-DUPLO_SIRKA_ODEBRAT*2 ,$fn=DUPLO_KRUH);
                    }
                }
            }
        }
    }
}
module DUPLO_CIRCLE_Y(DUPLO_X,DUPLO_Y,DUPLO_Z,DUTOST,PULKA,PROTISTRANA) {
    difference(){
        union(){
            difference(){    
                rotate(a=[90,90,0]) {
                    translate([-1*(DUPLO_Z*DUPLO_VYSKA),(DUPLO_SIRKA*DUPLO_X)/2,DUPLO_SIRKA_ODEBRAT-DUPLO_SIRKA*DUPLO_Y]) {
                        cylinder(r= (DUPLO_SIRKA*DUPLO_X-DUPLO_SIRKA_ODEBRAT*2)/2, h=(DUPLO_SIRKA*DUPLO_Y)-DUPLO_SIRKA_ODEBRAT*2 ,$fn=DUPLO_KRUH);
                        }
                    }
                if(PULKA==1){
                    BASIC_BLOCK(DUPLO_X,DUPLO_Y,DUPLO_Y,0,0,0,DUPLO_Z-DUPLO_Y);
                }
            
            }
        }
        union(){
            if (PROTISTRANA==1){
                rotate(a=[0,90,0]) {
                    translate([-1*(DUPLO_Z*DUPLO_VYSKA),(DUPLO_SIRKA*DUPLO_Y)/2,DUPLO_SIRKA_ODEBRAT]) {
                        cylinder(r= (DUPLO_SIRKA*DUPLO_Y-DUPLO_SIRKA_ODEBRAT*2-DUPLO_STENA*2)/2, h=(DUPLO_SIRKA*DUPLO_X)-DUPLO_SIRKA_ODEBRAT*2 ,$fn=DUPLO_KRUH);
                    }
                }
            }
            if (DUTOST==1){
                rotate(a=[90,90,0]) {
                        translate([-1*(DUPLO_Z*DUPLO_VYSKA),(DUPLO_SIRKA*DUPLO_X)/2,DUPLO_SIRKA_ODEBRAT-DUPLO_SIRKA*DUPLO_Y+DUPLO_STENA]) {
                            cylinder(r= (DUPLO_SIRKA*DUPLO_X-DUPLO_SIRKA_ODEBRAT*2-DUPLO_STENA*2)/2, h=(DUPLO_SIRKA*DUPLO_Y)-DUPLO_SIRKA_ODEBRAT*2-DUPLO_STENA*2 ,$fn=DUPLO_KRUH);
                            }
                }
            }
        }
    }
}
module DUPLO_CIRCLE(DUPLO_X,DUPLO_Y,DUPLO_Z,X,Y,DUTOST,PULKA) {
    if(X==1){
        DUPLO_CIRCLE_X(DUPLO_X,DUPLO_Y,DUPLO_Z,DUTOST,PULKA,Y);
    }
    if(Y==1){
        DUPLO_CIRCLE_Y(DUPLO_X,DUPLO_Y,DUPLO_Z,DUTOST,PULKA,X);
    }
}
module DUPLO_DOWN_POOL_N(CUDLIK_X,CUDLIK_Y,CUDLIK_Z,POLE_X,POLE_Y,POLE_Z) {
    translate ([POLE_X*DUPLO_SIRKA+DUPLO_SIRKA-DUPLO_VNITRNI_KRUH_SIRKA_CTVERCE/2,POLE_Y*DUPLO_SIRKA+DUPLO_SIRKA-DUPLO_VNITRNI_KRUH_SIRKA_CTVERCE/2,POLE_Z*DUPLO_VYSKA]) {
    if (CUDLIK_X==1)  {X_1=1;}
    else {X_1=2;}
    if (CUDLIK_Y==1)  {Y_1=1;}
    else {Y_1=2;}
    
    if (CUDLIK_X==1||CUDLIK_Y==1)  {
        
        for (x=[0:CUDLIK_X-X_1])
            for (y=[0:CUDLIK_Y-Y_1])
                for (z=[0:CUDLIK_Z-1])
                    translate([x*DUPLO_SIRKA,y*DUPLO_SIRKA,z*DUPLO_VYSKA])
                        if (CUDLIK_X<4||CUDLIK_Y<4){
                            DUPLO_VNITRNI_KRUH();
                            }
                        else if (x%2&&y%2){
                            DUPLO_VNITRNI_KRUH();
                            }
    else if ((x+1)%2&&(y+1)%2){
        DUPLO_VNITRNI_KRUH();
        }
        
        }
    }
}
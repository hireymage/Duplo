module DUPLO_DOWN_POOL(CUDLIK_X,CUDLIK_Y,CUDLIK_Z,POLE_X,POLE_Y,POLE_Z) {
    translate ([POLE_X*DUPLO_SIRKA+DUPLO_SIRKA-DUPLO_VNITRNI_KRUH_SIRKA_CTVERCE/2,POLE_Y*DUPLO_SIRKA+DUPLO_SIRKA-DUPLO_VNITRNI_KRUH_SIRKA_CTVERCE/2,POLE_Z*DUPLO_VYSKA]) {
 
    if (CUDLIK_X>=2&&CUDLIK_Y>=2)  {
        for (x=[0:CUDLIK_X-2])
            for (y=[0:CUDLIK_Y-2])
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
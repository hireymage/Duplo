module DUPLO_UP_CANNON_BASE(CUDLIK_X,CUDLIK_Y,POLE_X,POLE_Y,POLE_Z){

        translate ([POLE_X*DUPLO_SIRKA+DUPLO_SIRKA/2-DUPLO_KRUH_SIRKA_TOCNA/2,POLE_Y*DUPLO_SIRKA+DUPLO_SIRKA/2-DUPLO_KRUH_SIRKA_TOCNA/2,POLE_Z*DUPLO_VYSKA]) {
                     for (x=[0:CUDLIK_X-1])
                        for (y=[0:CUDLIK_Y-1])
                            translate([x*DUPLO_SIRKA,y*DUPLO_SIRKA,0])
                                TOCNA();
                }
        
    }
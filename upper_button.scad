module HORNI_CUDLIK(){
    //Horní zarážky
    intersection(){
        difference(){
            //Zarážky krychle
            cube ([DUPLO_HORNI_KRUH_SIRKA_CTVERCE,DUPLO_HORNI_KRUH_SIRKA_CTVERCE,DUPLO_HORNI_KRUH_CTVEREC_VYSKA]);
            //Zarážky krychle
            translate ([(DUPLO_HORNI_KRUH_SIRKA_CTVERCE-DUPLO_HORNI_KRUH_SIRKA_VNITRNIHO_CTVERCE)/2,(DUPLO_HORNI_KRUH_SIRKA_CTVERCE-DUPLO_HORNI_KRUH_SIRKA_VNITRNIHO_CTVERCE)/2,0]) {
                cube ([DUPLO_HORNI_KRUH_SIRKA_VNITRNIHO_CTVERCE,DUPLO_HORNI_KRUH_SIRKA_VNITRNIHO_CTVERCE,DUPLO_HORNI_KRUH_CTVEREC_VYSKA]);
            }
        }
        //Zarážka odebrat okolo kruh
        translate ([(DUPLO_HORNI_KRUH_SIRKA_CTVERCE)/2,(DUPLO_HORNI_KRUH_SIRKA_CTVERCE)/2,0]) {
                cylinder(r= DUPLO_HORNI_KRUH_SIRKA_CTVERCE/2, h=DUPLO_HORNI_KRUH_CTVEREC_VYSKA ,$fn=DUPLO_KRUH);
            }
    } 
    //Horní cudlík
    difference(){
        translate ([(DUPLO_HORNI_KRUH_SIRKA_CTVERCE)/2,(DUPLO_HORNI_KRUH_SIRKA_CTVERCE)/2,0]) {
                cylinder(r= DUPLO_HORNI_KRUH_SIRKA_CTVERCE/2, h=DUPLO_HORNI_KRUH_VYSKA ,$fn=DUPLO_KRUH);
            }
        translate ([(DUPLO_HORNI_KRUH_SIRKA_CTVERCE)/2,(DUPLO_HORNI_KRUH_SIRKA_CTVERCE)/2,0]) {
                cylinder(r= (DUPLO_HORNI_KRUH_SIRKA_CTVERCE/2)-DUPLO_HORNI_KRUH_SIRKA_STENY, h=DUPLO_HORNI_KRUH_VYSKA ,$fn=DUPLO_KRUH);
            }
            
        }   
    }
    //HORNI_CUDLIK();

module DUPLO_VNITRNI_KRUH_N(){
    
    difference(){
        
            cylinder(r= DUPLO_ZATERASY_KRUH/2, h=DUPLO_VYSKA ,$fn=DUPLO_KRUH);
            
        
            cylinder(r= (DUPLO_ZATERASY_KRUH/2)-DUPLO_VNITRNI_KRUH_SIRKA_STENY, h=DUPLO_VYSKA ,$fn=DUPLO_KRUH);
            
            
        }
    
    }

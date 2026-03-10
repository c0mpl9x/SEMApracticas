ltl p1 { [] ( (!led1 && pulsador) -> <> led1 ) }
ltl p2 { [] ( (led1 && (!pulsador U end1) ) -> <> !led1 ) }
ltl p3 { []<>end2 -> [] ( (!led2 && end2) -> <> led2 ) }
ltl p4 { []<>end2 -> [] ( (led2 && end2) -> <> !led2 ) }

mtype = { ON, OFF }

bit pulsador;
bit end1;
bit end2;
bit led1;
bit led2;
mtype fsm1_estado;
mtype fsm2_estado;

active proctype fsm1() {
    fsm1_estado = OFF;
    do
    ::( fsm1_estado == OFF ) -> atomic {
        if
        :: pulsador -> 
            led1 = 1; fsm1_estado = ON; pulsador = 0; end1 = 0
            printf("estado = %e, led1 = %d\n", 
                   fsm1_estado, led1)
        fi
    }
    ::( fsm1_estado == ON ) -> atomic {
        if
        :: pulsador && !end1 -> pulsador = 0; end1 = 0;
            printf("estado = %e, led1 = %d\n", 
                   fsm1_estado, led1)
        :: end1 -> led1 = 0; fsm1_estado = OFF; end1 = 0;
            printf("estado = %e, led1 = %d\n", 
                   fsm1_estado, led1)
        fi
    }
    od
}

active proctype fsm2() {
    fsm2_estado = OFF;
    end2 = 0;
    do
    ::( fsm2_estado == OFF ) -> atomic {
        if
        :: end2 -> 
            led2 = 1; fsm2_estado = ON; end2 = 0;
            printf("estado = %e, led2 = %d\n", 
                   fsm2_estado, led2)
        fi
    }
    ::( fsm2_estado == ON ) -> atomic {
        if
        :: end2 -> led2 = 0; fsm2_estado = OFF; end2 = 0;
            printf("estado = %e, led2 = %d\n", 
                   fsm2_estado, led2)
        fi
    }
    od
}


active proctype entorno() {
    do
    :: pulsador = 1; printf("  pulsador = 1\n")
    :: end1 = 1; printf("  end1 = 1\n")
    :: end2 = 1; printf("  end2 = 1\n")
    :: skip -> skip
    od
}

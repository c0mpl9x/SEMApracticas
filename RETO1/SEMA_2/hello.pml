ltl p1 { [] ( (!bombilla && pulsador) -> <> bombilla ) }
ltl p2 { [] ( (bombilla && pulsador) -> <> !bombilla ) }

mtype = { ON, OFF }

bit pulsador;
bit bombilla;
mtype fsm_estado;

active proctype fsm() {
    fsm_estado = OFF;
    do
    ::( fsm_estado == OFF ) -> atomic {
        if
        :: pulsador -> 
            bombilla = 1; fsm_estado = ON; pulsador = 0;
            printf("estado = %e, bombilla = %d\n", 
                   fsm_estado, bombilla)
        fi
    }
    ::( fsm_estado == ON ) -> atomic {
        if
        :: pulsador -> bombilla = 0; fsm_estado = OFF; pulsador = 0;
            printf("estado = %e, bombilla = %d\n", 
                   fsm_estado, bombilla)
        fi
    }
    od
}

active proctype entorno() {
    do
    :: pulsador = 1; printf("  pulsador = 1\n")
    :: skip -> skip
    od
}

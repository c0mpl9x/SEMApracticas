ltl p1 { []<>end -> [] ( (!bombilla && end) -> <> bombilla ) }
ltl p2 { []<>end -> [] ( (bombilla && end) -> <> !bombilla ) }

mtype = { ON, OFF }

bit end;
bit bombilla;
mtype fsm_estado;

active proctype fsm() {
    fsm_estado = OFF;
    end = 0;
    do
    ::( fsm_estado == OFF ) -> atomic {
        if
        :: end -> 
            bombilla = 1; fsm_estado = ON; end = 0;
            printf("estado = %e, bombilla = %d\n", 
                   fsm_estado, bombilla)
        fi
    }
    ::( fsm_estado == ON ) -> atomic {
        if
        :: end -> bombilla = 0; fsm_estado = OFF; end = 0;
            printf("estado = %e, bombilla = %d\n", 
                   fsm_estado, bombilla)
        fi
    }
    od
}

active proctype entorno() {
    do
    :: end = 1; printf("  end = 1\n")
    :: skip -> skip
    od
}

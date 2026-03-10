/* ------------------------------------------------------------------ */
/* 1. Propiedades LTL (Especificación)                                */
/* ------------------------------------------------------------------ */

/* Nunca puede haber verde simultáneo para vehículos en ambas carreteras. */
ltl p1 { [] !(sem_princ == VERDE && sem_sec == VERDE) }

/* Nunca puede haber verde simultáneo para vehículos y peatones
   en la carretera principal. */
ltl p2 { [] !(sem_princ == VERDE && peat_princ == 1) }

/* Nunca puede haber verde simultáneo para vehículos y peatones
   en la carretera secundaria. */
ltl p3 { [] !(sem_sec == VERDE && peat_sec == 1) }

/* Suponiendo que el tiempo mínimo y el tiempo de ámbar aparecen
   infinitas veces, si un peatón de la carretera principal pulsa
   el botón mientras su semáforo está en rojo, eventualmente podrá cruzar. */
ltl p4 { (([]<> t_min) && ([]<> t_ambar)) ->
         [] ((peat_princ == 0 && btn_p_princ) -> <> (peat_princ == 1)) }

/* Suponiendo que el tiempo mínimo, el tiempo máximo y el tiempo de ámbar
   aparecen infinitas veces, si un peatón de la carretera secundaria pulsa
   el botón mientras su semáforo está en rojo, eventualmente podrá cruzar. */
ltl p5 { (([]<> t_min) && ([]<> t_max) && ([]<> t_ambar)) ->
         [] ((peat_sec == 0 && btn_p_sec) -> <> (peat_sec == 1)) }

/* Suponiendo que el tiempo mínimo y el tiempo de ámbar aparecen
   infinitas veces, si hay un coche esperando en la carretera secundaria
   mientras su semáforo está en rojo, eventualmente obtendrá verde. */
ltl p6 { (([]<> t_min) && ([]<> t_ambar)) ->
         [] ((sem_sec == ROJO && coche_sec) -> <> (sem_sec == VERDE)) }

/* Suponiendo que los temporizadores siguen ocurriendo infinitas veces,
   la carretera principal recupera el verde infinitas veces. */
ltl p7 { (([]<> t_min) && ([]<> t_max) && ([]<> t_ambar)) ->
         []<> (sem_princ == VERDE) }

/* ------------------------------------------------------------------ */
/* 2. Declarar Estados, Entradas, Salidas y Variables                 */
/* ------------------------------------------------------------------ */

mtype = { S0_PRINC_VERDE, S1_PRINC_AMBAR, S2_SEC_VERDE, S3_SEC_AMBAR, VERDE, AMBAR, ROJO }

/* Entradas (Entorno) */
bit coche_sec = 0;
bit btn_p_princ = 0;
bit btn_p_sec = 0;
bit t_min = 0;
bit t_max = 0;
bit t_ambar = 0;

/* Salidas */
mtype sem_princ = VERDE;
mtype sem_sec = ROJO;
bit peat_princ = 0; /* 1 = Verde, 0 = Rojo */
bit peat_sec = 1;   /* 1 = Verde, 0 = Rojo */

/* Variable de Estado de la FSM */
mtype fsm_estado = S0_PRINC_VERDE;

/* ------------------------------------------------------------------ */
/* 3. FSM del Sistema                                                 */
/* ------------------------------------------------------------------ */

active proctype fsm() {
    do
    :: (fsm_estado == S0_PRINC_VERDE) -> atomic {
        if
        :: ((coche_sec || btn_p_princ) && t_min) ->
            sem_princ = AMBAR;
            peat_sec = 0;
            t_min = 0; t_max = 0; t_ambar = 0; btn_p_princ = 0;
            fsm_estado = S1_PRINC_AMBAR;
            printf("estado = %e, sem_princ = %e, peat_sec = %d\n",
                   fsm_estado, sem_princ, peat_sec)
        fi
    }
    :: (fsm_estado == S1_PRINC_AMBAR) -> atomic {
        if
        :: t_ambar ->
            sem_princ = ROJO;
            sem_sec = VERDE;
            peat_princ = 1;
            t_min = 0; t_max = 0; t_ambar = 0;
            fsm_estado = S2_SEC_VERDE;
            printf("estado = %e, sem_sec = %e, peat_princ = %d\n",
                   fsm_estado, sem_sec, peat_princ)
        fi
    }
    :: (fsm_estado == S2_SEC_VERDE) -> atomic {
        if
        :: ((!coche_sec || btn_p_sec || t_max) && t_min) ->
            sem_sec = AMBAR;
            peat_princ = 0;
            t_min = 0; t_max = 0; t_ambar = 0; btn_p_sec = 0;
            fsm_estado = S3_SEC_AMBAR;
            printf("estado = %e, sem_sec = %e, peat_princ = %d\n",
                   fsm_estado, sem_sec, peat_princ)
        fi
    }
    :: (fsm_estado == S3_SEC_AMBAR) -> atomic {
        if
        :: t_ambar ->
            sem_sec = ROJO;
            sem_princ = VERDE;
            peat_sec = 1;
            t_min = 0; t_max = 0; t_ambar = 0; coche_sec = 0;
            fsm_estado = S0_PRINC_VERDE;
            printf("estado = %e, sem_princ = %e, peat_sec = %d\n",
                   fsm_estado, sem_princ, peat_sec)
        fi
    }
    od
}

/* ------------------------------------------------------------------ */
/* 4. Entorno (mismo estilo que los ejemplos)                         */
/* ------------------------------------------------------------------ */

active proctype entorno() {
    do
    :: coche_sec = 1; printf("  coche_sec = 1\n")
    :: btn_p_princ = 1; printf("  btn_p_princ = 1\n")
    :: btn_p_sec = 1; printf("  btn_p_sec = 1\n")
    :: t_min = 1; printf("  t_min = 1\n")
    :: t_max = 1; printf("  t_max = 1\n")
    :: t_ambar = 1; printf("  t_ambar = 1\n")
    :: skip -> skip
    od
}
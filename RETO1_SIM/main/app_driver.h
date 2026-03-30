#ifndef APP_DRIVER_H
#define APP_DRIVER_H

typedef enum
{
    SIM_SCENARIO_SIN_TRAFICO = 0,
    SIM_SCENARIO_PEATON_INSISTENTE,
    SIM_SCENARIO_TRAFICO_ALTO_SECUNDARIA,
    SIM_SCENARIO_MIXTO
} sim_scenario_t;

void sim_inputs_init(volatile int *btn_p_princ,
                     volatile int *btn_p_sec,
                     volatile int *coche_sec,
                     sim_scenario_t scenario);

const char *sim_scenario_to_str(sim_scenario_t scenario);

#endif

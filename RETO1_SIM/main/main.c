#include "app_driver.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "fsm.h"
#include <stdint.h>
#include <stdio.h>

static volatile int btn_p_princ = 0;
static volatile int btn_p_sec = 0;
static volatile int coche_sec = 0;

enum FSM_COLOR_MODEL_PUBLIC
{
    MODEL_VERDE = 0,
    MODEL_AMBAR,
    MODEL_ROJO,
};

/*
 * ESCENARIOS SIMULADOS:
 * - SIM_SCENARIO_SIN_TRAFICO
 * - SIM_SCENARIO_PEATON_INSISTENTE
 * - SIM_SCENARIO_TRAFICO_ALTO_SECUNDARIA
 * - SIM_SCENARIO_MIXTO
 */
static const sim_scenario_t selected_scenario = SIM_SCENARIO_TRAFICO_ALTO_SECUNDARIA;

/* Temporizadores */
static const uint32_t timeout_min_s = 5;
static const uint32_t timeout_max_s = 15;
static const uint32_t timeout_ambar_s = 2;

fsm_t *fsm_new_model(volatile int *btn_p_princ,
                     volatile int *btn_p_sec,
                     volatile int *coche_sec,
                     uint32_t tmin_s,
                     uint32_t tmax_s,
                     uint32_t tambar_s);

int model_get_sem_princ(fsm_t *this);
int model_get_sem_sec(fsm_t *this);
int model_get_peat_princ(fsm_t *this);
int model_get_peat_sec(fsm_t *this);
int model_get_state(fsm_t *this);

static const char *color_to_str(int color)
{
    switch (color)
    {
    case MODEL_VERDE:
        return "VERDE";
    case MODEL_AMBAR:
        return "AMBAR";
    case MODEL_ROJO:
        return "ROJO";
    default:
        return "DESCONOCIDO";
    }
}

static void print_inputs_if_changed(void)
{
    static int prev_btn_p_princ = -1;
    static int prev_btn_p_sec = -1;
    static int prev_coche_sec = -1;

    if ((int)btn_p_princ != prev_btn_p_princ ||
        (int)btn_p_sec != prev_btn_p_sec ||
        (int)coche_sec != prev_coche_sec)
    {
        printf("[IN ] btn_p_princ=%d btn_p_sec=%d coche_sec=%d\n",
               (int)btn_p_princ,
               (int)btn_p_sec,
               (int)coche_sec);

        prev_btn_p_princ = (int)btn_p_princ;
        prev_btn_p_sec = (int)btn_p_sec;
        prev_coche_sec = (int)coche_sec;
    }
}

void app_main(void)
{
    int prev_state = -1;
    int prev_sem_princ = -1;
    int prev_sem_sec = -1;
    int prev_peat_princ = -1;
    int prev_peat_sec = -1;

    fsm_t *model_fsm;

    printf("=== Cruce semaforico con entradas simuladas ===\n");
    printf("[CFG] escenario=%s tmin=%lus tmax=%lus tambar=%lus\n",
           sim_scenario_to_str(selected_scenario),
           (unsigned long)timeout_min_s,
           (unsigned long)timeout_max_s,
           (unsigned long)timeout_ambar_s);

    model_fsm = fsm_new_model(&btn_p_princ,
                              &btn_p_sec,
                              &coche_sec,
                              timeout_min_s,
                              timeout_max_s,
                              timeout_ambar_s);

    sim_inputs_init(&btn_p_princ, &btn_p_sec, &coche_sec, selected_scenario);

    while(1)
    {
        int state;
        int sem_princ;
        int sem_sec;
        int peat_princ;
        int peat_sec;

        fsm_fire(model_fsm);

        state = model_get_state(model_fsm);
        sem_princ = model_get_sem_princ(model_fsm);
        sem_sec = model_get_sem_sec(model_fsm);
        peat_princ = model_get_peat_princ(model_fsm);
        peat_sec = model_get_peat_sec(model_fsm);

        print_inputs_if_changed();

        if (state != prev_state ||
            sem_princ != prev_sem_princ ||
            sem_sec != prev_sem_sec ||
            peat_princ != prev_peat_princ ||
            peat_sec != prev_peat_sec)
        {
            printf("[OUT] state=%d sem_princ=%s sem_sec=%s peat_princ=%d peat_sec=%d\n",
                   state,
                   color_to_str(sem_princ),
                   color_to_str(sem_sec),
                   peat_princ,
                   peat_sec);

            prev_state = state;
            prev_sem_princ = sem_princ;
            prev_sem_sec = sem_sec;
            prev_peat_princ = peat_princ;
            prev_peat_sec = peat_sec;
        }

        vTaskDelay(pdMS_TO_TICKS(100));
    }
}

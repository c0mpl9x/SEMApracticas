#include "fsm.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include <stdint.h>
#include <stdlib.h>

enum FSM_ESTADOS_MODEL
{
    S0_PRINC_VERDE = 0,
    S1_PRINC_AMBAR,
    S2_SEC_VERDE,
    S3_SEC_AMBAR,
};

enum FSM_COLOR_MODEL
{
    VERDE = 0,
    AMBAR,
    ROJO,
};

struct model_fsm_t
{
    fsm_t fsm;
    volatile int *btn_p_princ;
    volatile int *btn_p_sec;
    volatile int *coche_sec;
    uint32_t tmin_s;
    uint32_t tmax_s;
    uint32_t tambar_s;
    TickType_t next_tmin;
    TickType_t next_tmax;
    TickType_t next_tambar;
    int sem_princ;
    int sem_sec;
    int peat_princ;
    int peat_sec;
};

typedef struct model_fsm_t model_fsm_t;

static TickType_t model_seconds_to_ticks(uint32_t timeout_s)
{
    uint64_t timeout_ms = (uint64_t)timeout_s * 1000ULL;
    return pdMS_TO_TICKS(timeout_ms);
}

static int model_timeout_expired(TickType_t next_timeout)
{
    return ((int32_t)(xTaskGetTickCount() - next_timeout) >= 0);
}

static void model_arm_tmin(model_fsm_t *model_fsm)
{
    model_fsm->next_tmin = xTaskGetTickCount() + model_seconds_to_ticks(model_fsm->tmin_s);
}

static void model_arm_tmax(model_fsm_t *model_fsm)
{
    model_fsm->next_tmax = xTaskGetTickCount() + model_seconds_to_ticks(model_fsm->tmax_s);
}

static void model_arm_tambar(model_fsm_t *model_fsm)
{
    model_fsm->next_tambar = xTaskGetTickCount() + model_seconds_to_ticks(model_fsm->tambar_s);
}

void model_clear_btn_p_princ(fsm_t *this)
{
    model_fsm_t *model_fsm = (model_fsm_t *)this;
    *model_fsm->btn_p_princ = 0;
}

void model_clear_btn_p_sec(fsm_t *this)
{
    model_fsm_t *model_fsm = (model_fsm_t *)this;
    *model_fsm->btn_p_sec = 0;
}

void model_clear_coche_sec(fsm_t *this)
{
    model_fsm_t *model_fsm = (model_fsm_t *)this;
    *model_fsm->coche_sec = 0;
}

void model_clear_all_inputs(fsm_t *this)
{
    model_clear_btn_p_princ(this);
    model_clear_btn_p_sec(this);
    model_clear_coche_sec(this);
}

int model_get_sem_princ(fsm_t *this)
{
    model_fsm_t *model_fsm = (model_fsm_t *)this;
    return model_fsm->sem_princ;
}

int model_get_sem_sec(fsm_t *this)
{
    model_fsm_t *model_fsm = (model_fsm_t *)this;
    return model_fsm->sem_sec;
}

int model_get_peat_princ(fsm_t *this)
{
    model_fsm_t *model_fsm = (model_fsm_t *)this;
    return model_fsm->peat_princ;
}

int model_get_peat_sec(fsm_t *this)
{
    model_fsm_t *model_fsm = (model_fsm_t *)this;
    return model_fsm->peat_sec;
}

int model_get_state(fsm_t *this)
{
    model_fsm_t *model_fsm = (model_fsm_t *)this;
    return model_fsm->fsm.current_state;
}

static int comprueba_s0_a_s1(fsm_t *this)
{
    model_fsm_t *model_fsm = (model_fsm_t *)this;
    return ((*model_fsm->coche_sec || *model_fsm->btn_p_princ) &&
            model_timeout_expired(model_fsm->next_tmin));
}

static int comprueba_s1_a_s2(fsm_t *this)
{
    model_fsm_t *model_fsm = (model_fsm_t *)this;
    return model_timeout_expired(model_fsm->next_tambar);
}

static int comprueba_s2_a_s3(fsm_t *this)
{
    model_fsm_t *model_fsm = (model_fsm_t *)this;
    return ((!*model_fsm->coche_sec || *model_fsm->btn_p_sec ||
             model_timeout_expired(model_fsm->next_tmax)) &&
            model_timeout_expired(model_fsm->next_tmin));
}

static int comprueba_s3_a_s0(fsm_t *this)
{
    model_fsm_t *model_fsm = (model_fsm_t *)this;
    return model_timeout_expired(model_fsm->next_tambar);
}

static void model_s0_a_s1(fsm_t *this)
{
    model_fsm_t *model_fsm = (model_fsm_t *)this;

    model_fsm->sem_princ = AMBAR;
    model_fsm->peat_sec = 0;
    model_clear_btn_p_princ(this);
    model_arm_tambar(model_fsm);
}

static void model_s1_a_s2(fsm_t *this)
{
    model_fsm_t *model_fsm = (model_fsm_t *)this;

    model_fsm->sem_princ = ROJO;
    model_fsm->sem_sec = VERDE;
    model_fsm->peat_princ = 1;
    model_arm_tmin(model_fsm);
    model_arm_tmax(model_fsm);
}

static void model_s2_a_s3(fsm_t *this)
{
    model_fsm_t *model_fsm = (model_fsm_t *)this;

    model_fsm->sem_sec = AMBAR;
    model_fsm->peat_princ = 0;
    model_clear_btn_p_sec(this);
    model_arm_tambar(model_fsm);
}

static void model_s3_a_s0(fsm_t *this)
{
    model_fsm_t *model_fsm = (model_fsm_t *)this;

    model_fsm->sem_sec = ROJO;
    model_fsm->sem_princ = VERDE;
    model_fsm->peat_sec = 1;
    model_clear_coche_sec(this);
    model_arm_tmin(model_fsm);
}

fsm_t *fsm_new_model(volatile int *btn_p_princ, volatile int *btn_p_sec, volatile int *coche_sec,
                     uint32_t tmin_s, uint32_t tmax_s, uint32_t tambar_s)
{
    static fsm_trans_t tt[] = {
        {S0_PRINC_VERDE, comprueba_s0_a_s1, S1_PRINC_AMBAR, model_s0_a_s1},
        {S1_PRINC_AMBAR, comprueba_s1_a_s2, S2_SEC_VERDE, model_s1_a_s2},
        {S2_SEC_VERDE, comprueba_s2_a_s3, S3_SEC_AMBAR, model_s2_a_s3},
        {S3_SEC_AMBAR, comprueba_s3_a_s0, S0_PRINC_VERDE, model_s3_a_s0},
        {-1, NULL, -1, NULL}};

    model_fsm_t *model_fsm = (model_fsm_t *)malloc(sizeof(model_fsm_t));
    fsm_init((fsm_t *)model_fsm, tt);

    model_fsm->btn_p_princ = btn_p_princ;
    model_fsm->btn_p_sec = btn_p_sec;
    model_fsm->coche_sec = coche_sec;

    model_fsm->tmin_s = tmin_s;
    model_fsm->tmax_s = tmax_s;
    model_fsm->tambar_s = tambar_s;

    model_fsm->sem_princ = VERDE;
    model_fsm->sem_sec = ROJO;
    model_fsm->peat_princ = 0;
    model_fsm->peat_sec = 1;

    model_fsm->next_tmax = xTaskGetTickCount();
    model_fsm->next_tambar = xTaskGetTickCount();
    model_arm_tmin(model_fsm);

    return (fsm_t *)model_fsm;
}

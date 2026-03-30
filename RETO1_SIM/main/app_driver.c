#include "app_driver.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

typedef struct
{
    volatile int *btn_p_princ;
    volatile int *btn_p_sec;
    volatile int *coche_sec;
    sim_scenario_t scenario;
} sim_inputs_ctx_t;

static const TickType_t sim_period_ticks = pdMS_TO_TICKS(1000);

const char *sim_scenario_to_str(sim_scenario_t scenario)
{
    switch (scenario)
    {
    case SIM_SCENARIO_SIN_TRAFICO:
        return "SIN_TRAFICO";
    case SIM_SCENARIO_PEATON_INSISTENTE:
        return "PEATON_INSISTENTE";
    case SIM_SCENARIO_TRAFICO_ALTO_SECUNDARIA:
        return "TRAFICO_ALTO_SECUNDARIA";
    case SIM_SCENARIO_MIXTO:
        return "MIXTO";
    default:
        return "DESCONOCIDO";
    }
}

static void sim_raise_request(volatile int *signal, const char *name)
{
    if (*signal == 0)
    {
        *signal = 1;
        printf("[SIM] %s=1\n", name);
    }
}

static void sim_run_sin_trafico(const sim_inputs_ctx_t *ctx, uint32_t second)
{
    (void)ctx;
    if ((second % 15U) == 0U)
    {
        printf("[SIM] sin eventos\n");
    }
}

static void sim_run_peaton_insistente(const sim_inputs_ctx_t *ctx, uint32_t second)
{
    if ((second % 7U) == 0U)
    {
        sim_raise_request(ctx->btn_p_princ, "btn_p_princ");
    }

    if ((second % 11U) == 3U)
    {
        sim_raise_request(ctx->btn_p_sec, "btn_p_sec");
    }
}

static void sim_run_trafico_alto_secundaria(const sim_inputs_ctx_t *ctx, uint32_t second)
{
    if ((second % 2U) == 0U)
    {
        sim_raise_request(ctx->coche_sec, "coche_sec");
    }

    if ((second % 20U) == 5U)
    {
        sim_raise_request(ctx->btn_p_princ, "btn_p_princ");
    }
}

static void sim_run_mixto(const sim_inputs_ctx_t *ctx, uint32_t second)
{
    uint32_t phase = second % 60U;

    if (phase < 15U)
    {
        sim_run_sin_trafico(ctx, second);
    }
    else if (phase < 30U)
    {
        if ((phase % 5U) == 0U)
        {
            sim_raise_request(ctx->btn_p_princ, "btn_p_princ");
        }
    }
    else if (phase < 45U)
    {
        if ((phase % 2U) == 0U)
        {
            sim_raise_request(ctx->coche_sec, "coche_sec");
        }
    }
    else
    {
        if ((phase % 4U) == 0U)
        {
            sim_raise_request(ctx->coche_sec, "coche_sec");
        }
        if ((phase % 6U) == 0U)
        {
            sim_raise_request(ctx->btn_p_princ, "btn_p_princ");
        }
        if ((phase % 7U) == 0U)
        {
            sim_raise_request(ctx->btn_p_sec, "btn_p_sec");
        }
    }
}

static void sim_inputs_task(void *arg)
{
    sim_inputs_ctx_t *ctx = (sim_inputs_ctx_t *)arg;
    TickType_t last_wake = xTaskGetTickCount();
    uint32_t second = 0U;

    printf("[SIM] escenario=%s\n", sim_scenario_to_str(ctx->scenario));

    while(1)
    {
        switch (ctx->scenario)
        {
        case SIM_SCENARIO_SIN_TRAFICO:
            sim_run_sin_trafico(ctx, second);
            break;
        case SIM_SCENARIO_PEATON_INSISTENTE:
            sim_run_peaton_insistente(ctx, second);
            break;
        case SIM_SCENARIO_TRAFICO_ALTO_SECUNDARIA:
            sim_run_trafico_alto_secundaria(ctx, second);
            break;
        case SIM_SCENARIO_MIXTO:
        default:
            sim_run_mixto(ctx, second);
            break;
        }

        second++;
        vTaskDelayUntil(&last_wake, sim_period_ticks);
    }
}

void sim_inputs_init(volatile int *btn_p_princ,
                     volatile int *btn_p_sec,
                     volatile int *coche_sec,
                     sim_scenario_t scenario)
{
    sim_inputs_ctx_t *ctx = (sim_inputs_ctx_t *)malloc(sizeof(sim_inputs_ctx_t));

    ctx->btn_p_princ = btn_p_princ;
    ctx->btn_p_sec = btn_p_sec;
    ctx->coche_sec = coche_sec;
    ctx->scenario = scenario;

    xTaskCreate(sim_inputs_task,
                "sim_inputs",
                4096,
                ctx,
                tskIDLE_PRIORITY + 1,
                NULL);
}

#include "app_driver.h"
#include "esp_attr.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "fsm.h"
#include <stdint.h>
#include <stdio.h>

static volatile int btn_p_princ = 0;
static volatile int btn_p_sec = 0;
static volatile int coche_sec = 0;

/* API pública de model.c (sin header dedicado) */
fsm_t *fsm_new_model(volatile int *btn_p_princ, volatile int *btn_p_sec, volatile int *coche_sec,
                     uint32_t tmin_s, uint32_t tmax_s, uint32_t tambar_s);
int model_get_sem_princ(fsm_t *this);
int model_get_sem_sec(fsm_t *this);
int model_get_peat_princ(fsm_t *this);
int model_get_peat_sec(fsm_t *this);
int model_get_state(fsm_t *this);

enum FSM_COLOR_MODEL_PUBLIC
{
    MODEL_VERDE = 0,
    MODEL_AMBAR,
    MODEL_ROJO,
};

static const uint32_t timeout_min_s = 10;
static const uint32_t timeout_max_s = 60;
static const uint32_t timeout_ambar_s = 5;

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

static void IRAM_ATTR gpio_isr_handler_btn_princ(void *arg)
{
    (void)arg;
    const int antirrebotes_ms = 250;
    static TickType_t next_antirrebotes = 0;
    TickType_t now = xTaskGetTickCountFromISR();

    if (now >= next_antirrebotes)
    {
        btn_p_princ = 1;
        next_antirrebotes = now + pdMS_TO_TICKS(antirrebotes_ms);
    }
}

static void IRAM_ATTR gpio_isr_handler_btn_sec(void *arg)
{
    (void)arg;
    const int antirrebotes_ms = 250;
    static TickType_t next_antirrebotes = 0;
    TickType_t now = xTaskGetTickCountFromISR();

    if (now >= next_antirrebotes)
    {
        btn_p_sec = 1;
        next_antirrebotes = now + pdMS_TO_TICKS(antirrebotes_ms);
    }
}

static void IRAM_ATTR gpio_isr_handler_espira(void *arg)
{
    (void)arg;
    const int antirrebotes_ms = 250;
    static TickType_t next_antirrebotes = 0;
    TickType_t now = xTaskGetTickCountFromISR();

    if (now >= next_antirrebotes)
    {
        coche_sec = 1;
        next_antirrebotes = now + pdMS_TO_TICKS(antirrebotes_ms);
    }
}

static void config_ISR(void)
{
    gpio_install_isr_service(ESP_INTR_FLAG_DEFAULT);
    gpio_isr_handler_add(GPIO_INPUT_BTN_PRINC, gpio_isr_handler_btn_princ, (void *)GPIO_INPUT_BTN_PRINC);
    gpio_isr_handler_add(GPIO_INPUT_BTN_SEC, gpio_isr_handler_btn_sec, (void *)GPIO_INPUT_BTN_SEC);
    gpio_isr_handler_add(GPIO_INPUT_ESPIRA, gpio_isr_handler_espira, (void *)GPIO_INPUT_ESPIRA);
}

void app_main(void)
{
    int prev_state = -1;
    int prev_sem_princ = -1;
    int prev_sem_sec = -1;
    int prev_peat_princ = -1;
    int prev_peat_sec = -1;

    fsm_t *model_fsm = NULL;

    config_gpios_esp();
    config_ISR();
    model_fsm = fsm_new_model(&btn_p_princ, &btn_p_sec, &coche_sec,
                              timeout_min_s, timeout_max_s, timeout_ambar_s);

    while (1)
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

        if (state != prev_state || sem_princ != prev_sem_princ || sem_sec != prev_sem_sec ||
            peat_princ != prev_peat_princ || peat_sec != prev_peat_sec)
        {
            printf("state=%d sem_princ=%s sem_sec=%s peat_princ=%d peat_sec=%d\n",
                   state, color_to_str(sem_princ), color_to_str(sem_sec), peat_princ, peat_sec);
            prev_state = state;
            prev_sem_princ = sem_princ;
            prev_sem_sec = sem_sec;
            prev_peat_princ = peat_princ;
            prev_peat_sec = peat_sec;
        }

        vTaskDelay(pdMS_TO_TICKS(100));
    }
}

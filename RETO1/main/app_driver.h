#ifndef APP_DRIVER_H
#define APP_DRIVER_H

#include "driver/gpio.h"

#define GPIO_INPUT_BTN_PRINC 25
#define GPIO_INPUT_BTN_SEC 26
#define GPIO_INPUT_ESPIRA 27
#define GPIO_INPUT_PIN_SEL ((1ULL << GPIO_INPUT_BTN_PRINC) | (1ULL << GPIO_INPUT_BTN_SEC) | (1ULL << GPIO_INPUT_ESPIRA))

#define ESP_INTR_FLAG_DEFAULT 0

void config_gpios_esp(void);

#endif

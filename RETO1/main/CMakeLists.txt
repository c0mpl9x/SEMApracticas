idf_component_register(
    SRCS "app_driver.c"
         "main.c"
         "../src/fsm.c"
         "../src/model.c"
    INCLUDE_DIRS "." "../src"
)

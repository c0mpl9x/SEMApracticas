# Optimización del consumo de memoria con Valgrind y CACTI

## Integrantes

- Nombre Apellido
- Nombre Apellido

## 1. Objetivo

El objetivo de la práctica es implementar una versión optimizada de multiplicación de matrices, `mm_opt`, equivalente a `mm_basic`, pero con mejor uso de la jerarquía de memoria.

## 2. Código base

La versión base realiza la multiplicación con tres bucles anidados en orden `i-j-k`.

Este orden provoca un acceso no consecutivo a la matriz `c`, ya que se recorre por columnas.

## 3. Optimización implementada

Se ha implementado una versión por bloques utilizando el parámetro `bs`.

## 4. Metodología de medida

Se han usado:

- tiempo de ejecución interno del programa;
- Valgrind/Callgrind con simulación de caché;
- `callgrind_annotate`;
- CACTI/eCACTI para estimación energética.

## 5. Resultados

Pendiente.

## 6. Estimación de consumo

Pendiente.

## 7. Conclusiones

Pendiente.
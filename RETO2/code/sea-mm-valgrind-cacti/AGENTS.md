# AGENTS.md

## Objetivo

Implementar `mm_opt` en `src/mm.c` igual que `mm_basic`, pero optimizada para reducir tiempo de ejecución mediante mejora del uso de memoria.

La práctica debe producir:

- `documentacion.pdf`
- `src/mm.c`
- `src/Makefile`

## Contexto técnico

El programa multiplica matrices cuadradas `n x n` de tipo `double`.

La versión base es:

```c
a[i * n + j] += b[i * n + k] * c[k * n + j];
```

La optimización debe centrarse en memoria:

* mejorar localidad espacial
* mejorar localidad temporal
* reducir fallos de caché
* aplicar tiling/blocking usando el parámetro `bs`
* mantener el resultado correcto respecto a `mm_basic`

No usar OpenMP, threads, GPU, BLAS externa ni librerías externas de multiplicación. La mejora debe venir del código propio.

## Reglas de implementación

1. No modificar la semántica de `mm_basic`
2. No eliminar la comprobación `checkmm`
3. `mm_opt` debe usar el parámetro `bs`
4. `n` será múltiplo de `bs`, como ya comprueba `main`
5. Se puede reordenar el cuerpo de `mm_opt`
6. Se pueden añadir funciones auxiliares si están justificadas
7. Priorizar código claro frente a micro-optimizaciones opacas
8. Mantener compilación con `gcc`
9. Añadir comentarios breves solo donde expliquen decisiones de memoria

## Reglas de medición

Toda optimización debe medirse con:

```bash
make bench
make callgrind
make annotate
```

Debe guardarse el resultado en `results/`.

Comparar siempre:

* tiempo de `mm_basic`
* tiempo de `mm_opt`
* instrucciones
* lecturas de datos
* escrituras de datos
* fallos D1
* fallos LL

## Documentación incremental

Después de cada cambio relevante, actualizar:

* `STATUS.md`
* `DECISIONS.md`
* `docs/resultados.md`

No dejar decisiones importantes solo en el chat.

## Criterio de éxito

La práctica se considera aceptable si:

* `check OK`
* `mm_opt` es más rápida que `mm_basic`
* Callgrind muestra reducción clara de fallos de caché o mejora razonada del patrón de acceso
* la documentación justifica las decisiones y estima ahorro energético con CACTI/eCACTI

---

# STATUS.md

## Estado actual

- [ ] Proyecto inicial creado
- [ ] Compila `mm.c`
- [ ] Ejecuta baseline
- [ ] Ejecuta Valgrind/Callgrind
- [ ] `mm_opt` implementada
- [ ] `mm_opt` validada con `check OK`
- [ ] Benchmarks recogidos
- [ ] Resultados de Callgrind recogidos
- [ ] Estimación CACTI/eCACTI realizada
- [ ] Documentación final generada

## Último resultado conocido

Pendiente.

## Próximo paso

Implementar infraestructura mínima de Makefile y medición baseline.
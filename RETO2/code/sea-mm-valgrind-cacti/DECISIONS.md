# DECISIONS.md

## D1. Optimización principal: tiling

Se usará multiplicación por bloques para mejorar la localidad de memoria.

Justificación:
- `mm_basic` accede a `c[k*n+j]` variando `k` en el bucle interno, lo que
  salta entre filas separadas por `n` elementos.
- En C las matrices están almacenadas por filas.
- Ese patrón reduce la localidad espacial sobre `c`.
- El tiling permite reutilizar bloques de `b`, `c` y `a` en caché.

## D2. No usar paralelismo

No se usará OpenMP, threads ni SIMD explícito.

Justificación:
- La práctica pide optimizar tiempo mediante memoria.
- El paralelismo mezclaría efectos y dificultaría atribuir la mejora a la jerarquía de memoria.

## D3. Métricas

Se usarán:
- tiempo de ejecución del programa;
- Callgrind con `--cache-sim=yes`;
- `callgrind_annotate`;
- estimación energética con CACTI/eCACTI.

## D4. Compatibilidad POSIX para `clock_gettime`

Se añade `-D_POSIX_C_SOURCE=199309L` a `CFLAGS` en `src/Makefile`.

Justificación:
- El código usa `clock_gettime`, `CLOCK_REALTIME` y `struct timespec`.
- Con `gcc -std=c99` esos símbolos no quedan visibles en este entorno si no se
  solicita explícitamente la interfaz POSIX.
- Esta decisión permite compilar y medir el baseline sin modificar `src/mm.c`.

## D5. Orden de bucles en `mm_opt`

`mm_opt` usa tiling con orden de bloques `ii`, `kk`, `jj` y orden interno
`i`, `k`, `j`.

Justificación:
- El parámetro `bs` define bloques cuadrados y `main` ya comprueba que `n` sea
  múltiplo de `bs`.
- El bucle interno recorre `j`, por lo que `a[i*n+j]` y `c[k*n+j]` se acceden
  de forma consecutiva en memoria.
- Para cada elemento `a[i,j]`, las contribuciones de `k` se acumulan en orden
  ascendente por bloques `kk`, manteniendo la misma secuencia de sumas que
  `mm_basic`.
- Se carga `b[i*n+k]` una vez por cada par `(i,k)` y se reutiliza para todos
  los `j` del bloque.
- No se usa OpenMP, threads, BLAS ni SIMD explícito.

## D6. Tamaño de bloque recomendado para `N=512`

Se recomienda `BS=64` para `N=512` en las medidas actuales.

Justificación:
- Fue el tamaño con menor tiempo de `mm_opt`: `0.085227 s`.
- Obtuvo el mayor speedup: `6.17x`.
- Fue el tamaño con menos instrucciones en `mm_opt`: `963,189,327`.
- Fue el tamaño con menos fallos D1 en `mm_opt`: `19,472,315`.
- Aunque `BS=16` minimiza LL misses (`1,115,010` frente a `3,245,563` en
  `BS=64`), su tiempo nativo fue peor (`0.099579 s`).

## D7. Modelo de estimación energética

La estimación energética usa un modelo paramétrico basado en contadores de
Callgrind y energías dinámicas por acceso obtenidas con CACTI.

Fórmula:

```text
E_mem = Dr * E_L1_read + Dw * E_L1_write + (D1mr + D1mw) * E_LL_access
```

Justificación:
- `Dr` y `Dw` representan accesos de datos a L1.
- Cada fallo D1 accede al siguiente nivel, por eso `D1mr + D1mw` aproxima los
  accesos a LL.
- Los fallos LL (`DLmr + DLmw`) se reportan como presión hacia memoria inferior,
  pero no se les asigna energía adicional porque no se ha definido
  `E_DRAM_access`.
- Solo se estima energía dinámica de caché; no se incluye leakage ni energía de
  instrucciones.

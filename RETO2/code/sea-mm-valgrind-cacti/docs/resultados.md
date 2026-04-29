# Resultados

Resultados experimentales.

## Estado inicial

Fecha: 2026-04-29.

Antes de implementar la optimización se ejecutó el programa base con los
parámetros por defecto del `Makefile`:

- `N=512`
- `BS=32`
- comando: `make bench`
- salida guardada inicialmente en `results/bench_N512_BS32.txt`

Resultado obtenido:

```text
matrix size (512 x 512), blocksize (32, 32)
mm_basic (n, aa, b, c) -> 0.655847
mm_opt (n, a, b, c, bs) -> 0.000000
(0, 0) -> diff: -59.097729
```

Interpretación:

- `mm_basic` sí ejecuta la multiplicación completa.
- `mm_opt` todavía está vacía en el estado inicial, por eso su tiempo medido es
  prácticamente cero.
- La comprobación no imprime `check OK`; detecta diferencia en `(0, 0)`.
- Este resultado no es una optimización válida, sino el punto de partida antes
  de implementar blocking/tiling.

Nota de compilación: fue necesario añadir `-D_POSIX_C_SOURCE=199309L` en
`src/Makefile` para que `clock_gettime`, `CLOCK_REALTIME` y `struct timespec`
estén disponibles al compilar con `-std=c99`.

Nota: el fichero `results/bench_N512_BS32.txt` fue actualizado posteriormente
al repetir el benchmark con `mm_opt` ya implementada.

## Infraestructura de medición

Fecha: 2026-04-29.

Se dejó `src/Makefile` con los objetivos requeridos:

- `all`
- `run`
- `bench`
- `memcheck`
- `callgrind`
- `annotate`
- `sweep`
- `clean`

Los parámetros `N` y `BS` son configurables desde línea de comandos:

```bash
make -C src bench N=256 BS=16
```

Se ejecutaron los comandos pedidos:

```bash
make -C src clean all
make -C src bench N=256 BS=16
make -C src callgrind N=256 BS=16
make -C src annotate N=256 BS=16
```

Archivos generados en `results/`:

- `results/bench_N256_BS16.txt`
- `results/callgrind_N256_BS16.out`
- `results/annotate_N256_BS16.txt`

### Benchmark `N=256`, `BS=16`

```text
matrix size (256 x 256), blocksize (16, 16)
mm_basic (n, aa, b, c) -> 0.048413
mm_opt (n, a, b, c, bs) -> 0.000000
(0, 0) -> diff: -30.259644
```

Como `mm_opt` todavía está vacía, la comprobación sigue fallando. Este dato se
usa únicamente como baseline de infraestructura.

### Callgrind `N=256`, `BS=16`

Configuración de caché simulada:

- I1: 32768 B, 8-way, 64 B
- D1: 32768 B, 8-way, 64 B
- LL: 262144 B, 8-way, 64 B

Totales del programa:

```text
I refs:      144,085,283
I1 misses:        1,540
LLi misses:       1,533
D refs:       54,028,419  (35,889,129 rd + 18,139,290 wr)
D1 misses:    16,903,000  (16,869,538 rd +     33,462 wr)
LLd misses:   16,896,032  (16,862,615 rd +     33,417 wr)
LL misses:    16,897,565  (16,864,148 rd +     33,417 wr)
```

Fragmento relevante de `callgrind_annotate`:

```text
mm.c:mm_basic
Ir:    134,941,202
Dr:     33,619,972
Dw:     16,777,219
D1mr:   16,867,843
DLmr:   16,861,187
```

La línea crítica anotada es:

```c
a[i * n + j] += b[i * n + k] * c[k * n + j];
```

Este patrón de acceso es el que se optimizó posteriormente mediante
tiling/blocking en `mm_opt`.

## `mm_opt` con tiling/blocking

Fecha: 2026-04-29.

Se implementó `mm_opt` con bloques de tamaño `bs`. El orden de bloques es
`ii`, `kk`, `jj` y el orden interno es `i`, `k`, `j`.

Este orden se eligió por localidad:

- `j` es el bucle interno, así que `a[i*n+j]` se actualiza de forma consecutiva.
- `c[k*n+j]` también se lee de forma consecutiva porque las matrices están en
  row-major.
- `b[i*n+k]` se carga una vez y se reutiliza para todos los `j` del bloque.
- Para cada `a[i,j]`, las contribuciones de `k` se aplican en orden ascendente,
  manteniendo la misma secuencia de sumas que `mm_basic`.

No se ha usado OpenMP, BLAS, threads ni SIMD explícito.

### Benchmarks tras implementar `mm_opt`

Comandos ejecutados:

```bash
make -C src bench N=256 BS=16
make -C src bench N=512 BS=32
```

Resultados:

| N | BS | `mm_basic` (s) | `mm_opt` (s) | Speedup | Check |
|---:|---:|---:|---:|---:|---|
| 256 | 16 | 0.047581 | 0.011643 | 4.09x | OK |
| 512 | 32 | 0.478211 | 0.106933 | 4.47x | OK |

Salida para `N=256`, `BS=16`:

```text
matrix size (256 x 256), blocksize (16, 16)
mm_basic (n, aa, b, c) -> 0.047581
mm_opt (n, a, b, c, bs) -> 0.011643
check OK
```

Salida para `N=512`, `BS=32`:

```text
matrix size (512 x 512), blocksize (32, 32)
mm_basic (n, aa, b, c) -> 0.478211
mm_opt (n, a, b, c, bs) -> 0.106933
check OK
```

Los resultados quedan guardados en:

- `results/bench_N256_BS16.txt`
- `results/bench_N512_BS32.txt`

## Barrido de tamaño de bloque para `N=512`

Fecha: 2026-04-29.

Se ejecutó:

```bash
make -C src sweep N=512
```

El barrido prueba `BS=8,16,32,64`, ejecutando tiempo nativo y Callgrind para
cada caso. Los ficheros quedan en `results/cache-sweep/`.

Para las métricas de Callgrind se usa la línea de `mm_opt` en
`callgrind_annotate`, no los totales del programa, porque cada ejecución incluye
también `mm_basic` y esa parte no depende de `BS`.

| BS | `mm_basic` (s) | `mm_opt` (s) | Speedup | Instr. `mm_opt` | D1 misses `mm_opt` | LL misses `mm_opt` | Check |
|---:|---:|---:|---:|---:|---:|---:|---|
| 8 | 0.440163 | 0.096255 | 4.57x | 1,164,768,159 | 38,219,459 | 2,163,203 | OK |
| 16 | 0.548070 | 0.099579 | 5.50x | 1,041,612,255 | 28,359,651 | 1,115,010 | OK |
| 32 | 0.614967 | 0.118392 | 5.19x | 988,069,887 | 22,298,355 | 1,170,005 | OK |
| 64 | 0.525598 | 0.085227 | 6.17x | 963,189,327 | 19,472,315 | 3,245,563 | OK |

Ficheros generados:

- `results/cache-sweep/bench_N512_BS8.txt`
- `results/cache-sweep/bench_N512_BS16.txt`
- `results/cache-sweep/bench_N512_BS32.txt`
- `results/cache-sweep/bench_N512_BS64.txt`
- `results/cache-sweep/callgrind_N512_BS8.out`
- `results/cache-sweep/callgrind_N512_BS16.out`
- `results/cache-sweep/callgrind_N512_BS32.out`
- `results/cache-sweep/callgrind_N512_BS64.out`
- `results/cache-sweep/annotate_N512_BS8.txt`
- `results/cache-sweep/annotate_N512_BS16.txt`
- `results/cache-sweep/annotate_N512_BS32.txt`
- `results/cache-sweep/annotate_N512_BS64.txt`

### Recomendación

El mejor tamaño de bloque observado para tiempo de ejecución es `BS=64`:

- consigue el menor tiempo de `mm_opt`: `0.085227 s`;
- obtiene el mayor speedup: `6.17x`;
- ejecuta menos instrucciones que el resto de tamaños;
- reduce los D1 misses de `mm_opt` hasta `19,472,315`, el menor valor del
  barrido.

La contrapartida es que `BS=64` aumenta los LL misses de `mm_opt` frente a
`BS=16` y `BS=32`. Si el criterio principal fuese minimizar fallos de último
nivel, `BS=16` sería el mejor valor (`1,115,010` LL misses). Sin embargo, para
esta práctica se recomienda `BS=64`, porque ofrece el mejor rendimiento medido y
la mejor presión sobre D1, que es la caché más sensible al patrón de acceso del
bucle interno.

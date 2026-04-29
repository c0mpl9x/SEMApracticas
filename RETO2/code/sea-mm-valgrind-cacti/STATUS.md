# STATUS.md

## Estado actual

- [x] Proyecto inicial creado
- [x] Compila `mm.c`
- [x] Ejecuta baseline
- [x] Ejecuta Valgrind/Callgrind
- [x] `mm_opt` implementada
- [x] `mm_opt` validada con `check OK`
- [x] Benchmarks recogidos
- [x] Resultados de Callgrind recogidos
- [x] Estimación CACTI/eCACTI realizada
- [x] Documentación final generada en Markdown

## Último resultado conocido

Fecha: 2026-04-29.

Revisión general final:

- `make -C src clean all` compila correctamente y sin warnings.
- `make -C src bench N=256 BS=16` termina con `check OK`.
- `make -C src bench N=512 BS=64` termina con `check OK`.

Resultados de esta comprobación:

```text
N=256 BS=16
mm_basic -> 0.045426
mm_opt   -> 0.011216
check OK
```

```text
N=512 BS=64
mm_basic -> 0.541831
mm_opt   -> 0.078064
check OK
```

No se han encontrado problemas bloqueantes en la revisión general.

## Cierre acordado

Fecha: 2026-04-29.

Se acuerda cerrar la documentación final en Markdown:

- documento principal: `docs/documentacion.md`
- no se generará `documentacion.pdf`
- no se generará `entrega.zip`
- no se actualizan los nombres de integrantes

## Resultado de estimación anterior

Fecha: 2026-04-29.

Se preparó una estimación de consumo de memoria en `docs/documentacion.md`.

Supuestos CACTI usados:

- `E_L1_read = 0.728950 nJ`
- `E_L1_write = 0.684048 nJ`
- `E_LL_access = 1.047090 nJ`

Fórmula:

```text
E_mem = Dr * E_L1_read + Dw * E_L1_write + (D1mr + D1mw) * E_LL_access
```

Resultado para `N=512`, comparando `mm_basic` con `mm_opt BS=64`:

- baseline: `428.596 mJ`
- optimizada: `309.576 mJ`
- ahorro estimado: `27.77 %`

## Resultado de barrido anterior

Fecha: 2026-04-29.

Se realizó un barrido para `N=512` con `BS=8,16,32,64` usando tiempos nativos y
Callgrind.

Comando:

```bash
make -C src sweep N=512
```

Todos los casos terminan con `check OK`.

Resumen de `mm_opt`:

| BS | `mm_opt` (s) | Speedup | Instr. | D1 misses | LL misses |
|---:|---:|---:|---:|---:|---:|
| 8 | 0.096255 | 4.57x | 1,164,768,159 | 38,219,459 | 2,163,203 |
| 16 | 0.099579 | 5.50x | 1,041,612,255 | 28,359,651 | 1,115,010 |
| 32 | 0.118392 | 5.19x | 988,069,887 | 22,298,355 | 1,170,005 |
| 64 | 0.085227 | 6.17x | 963,189,327 | 19,472,315 | 3,245,563 |

Recomendación actual: `BS=64`, por mejor tiempo, mayor speedup, menos
instrucciones y menos D1 misses. `BS=16` minimiza LL misses, pero fue más lento
en tiempo nativo.

## Resultado de implementación anterior

Fecha: 2026-04-29.

Se implementó `mm_opt` en `src/mm.c` usando tiling/blocking con el parámetro
`bs`.

Orden usado:

- bloques: `ii`, `kk`, `jj`
- bucles internos: `i`, `k`, `j`

El bucle interno recorre `j`, de modo que `a[i*n+j]` y `c[k*n+j]` se recorren
de forma consecutiva. Para cada elemento `a[i,j]`, las sumas sobre `k` mantienen
orden ascendente, lo que conserva la corrección exacta frente a `mm_basic`.

Comandos ejecutados:

```bash
make -C src bench N=256 BS=16
make -C src bench N=512 BS=32
```

Resultados:

```text
N=256 BS=16
mm_basic -> 0.047581
mm_opt   -> 0.011643
check OK
speedup  -> 4.09x
```

```text
N=512 BS=32
mm_basic -> 0.478211
mm_opt   -> 0.106933
check OK
speedup  -> 4.47x
```

Ficheros actualizados:

- `results/bench_N256_BS16.txt`
- `results/bench_N512_BS32.txt`

## Resultado de infraestructura anterior

Fecha: 2026-04-29.

Se revisó y corrigió `src/Makefile` para asegurar estos objetivos:

- `all`
- `run`
- `bench`
- `memcheck`
- `callgrind`
- `annotate`
- `sweep`
- `clean`

`N` y `BS` se pueden configurar desde línea de comandos mediante variables de
Make, por ejemplo `make -C src bench N=256 BS=16`.

Comandos ejecutados:

```bash
make -C src clean all
make -C src bench N=256 BS=16
make -C src callgrind N=256 BS=16
make -C src annotate N=256 BS=16
```

Ficheros generados:

- `results/bench_N256_BS16.txt`
- `results/callgrind_N256_BS16.out`
- `results/annotate_N256_BS16.txt`

Resultado de `make -C src bench N=256 BS=16`:

```text
matrix size (256 x 256), blocksize (16, 16)
mm_basic (n, aa, b, c) -> 0.048413
mm_opt (n, a, b, c, bs) -> 0.000000
(0, 0) -> diff: -30.259644
```

Resumen de Callgrind para `N=256`, `BS=16`:

```text
I refs:      144,085,283
D refs:       54,028,419  (35,889,129 rd + 18,139,290 wr)
D1 misses:    16,903,000  (16,869,538 rd +     33,462 wr)
LL misses:    16,897,565  (16,864,148 rd +     33,417 wr)
```

La anotación muestra que `mm_basic` concentra el coste principal:

```text
mm.c:mm_basic
Ir: 134,941,202
Dr:  33,619,972
Dw:  16,777,219
D1mr: 16,867,843
DLmr: 16,861,187
```

`mm_opt` sigue vacía; por tanto, estos resultados son de infraestructura y
baseline, no de optimización válida.

## Resultado inicial anterior

Fecha: 2026-04-29.

Se revisaron `AGENTS.md`, `STATUS.md` y `DECISIONS.md`.

Estado inicial antes de optimizar:

- `src/mm.c` no se ha modificado.
- `mm_opt` está vacía, por lo que no calcula la matriz resultado.
- La compilación base fallaba con `-std=c99` porque `clock_gettime`,
  `CLOCK_REALTIME` y `struct timespec` no quedaban expuestos en este entorno.
- Se actualizó `src/Makefile` para compilar con
  `-D_POSIX_C_SOURCE=199309L`, sin cambiar el código C.

Resultado de `make bench` con `N=512`, `BS=32`:

```text
matrix size (512 x 512), blocksize (32, 32)
mm_basic (n, aa, b, c) -> 0.655847
mm_opt (n, a, b, c, bs) -> 0.000000
(0, 0) -> diff: -59.097729
```

Este resultado se guardó inicialmente en `results/bench_N512_BS32.txt`; ese
fichero se actualizó después al repetir el benchmark con `mm_opt` implementada.

## Cierre

No quedan acciones obligatorias pendientes según el alcance acordado: la entrega
se mantiene en Markdown y no se generarán PDF ni ZIP.

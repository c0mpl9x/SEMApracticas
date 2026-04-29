# sea-mm-valgrind-cacti

Proyecto para analizar multiplicacion de matrices con Valgrind/Callgrind y estimaciones con CACTI.

## Estructura

- `src/`: codigo fuente y Makefile de compilacion.
- `scripts/`: automatizacion de benchmarks, parseo y reportes.
- `docs/`: documentacion, metodologia, resultados y figuras.
- `results/`: salidas experimentales separadas por escenario.
- `external/cacti/`: ubicacion prevista para CACTI.

## Uso basico

```sh
make
make run
make clean
```

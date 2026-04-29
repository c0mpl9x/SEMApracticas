# Optimización del consumo de memoria con Valgrind y CACTI

## Integrantes

- Nombre Apellido
- Nombre Apellido

## 1. Objetivo

El objetivo de la práctica es implementar una versión optimizada de multiplicación de matrices, `mm_opt`, equivalente a `mm_basic`, pero con mejor uso de la jerarquía de memoria.

## 2. Código base

La versión base realiza la multiplicación con tres bucles anidados en orden `i-j-k`.

Este orden provoca un acceso no consecutivo a la matriz `c`: en el bucle
interno cambia `k`, por lo que `c[k*n+j]` salta entre filas separadas por `n`
elementos.

## 3. Optimización implementada

Se ha implementado una versión por bloques utilizando el parámetro `bs`.

## 4. Metodología de medida

Se han usado:

- tiempo de ejecución interno del programa;
- Valgrind/Callgrind con simulación de caché;
- `callgrind_annotate`;
- CACTI/eCACTI para estimación energética.

## 5. Resultados

Para `N=512` se realizó un barrido de tamaños de bloque. El mejor resultado de
tiempo se obtuvo con `BS=64`:

| Versión | Tiempo (s) | Validación |
|---|---:|---|
| `mm_basic` | 0.525598 | referencia |
| `mm_opt`, `BS=64` | 0.085227 | `check OK` |

El speedup medido para este caso fue:

```text
speedup = 0.525598 / 0.085227 = 6.17x
```

## 6. Estimación de consumo

CACTI está disponible en `external/cacti`. Para estimar energía se generaron dos
configuraciones derivadas del `cache.cfg` incluido:

- `results/cacti/cacti_l1_32k.cfg`: 32 KiB, 8-way, línea de 64 B.
- `results/cacti/cacti_ll_256k.cfg`: 256 KiB, 8-way, línea de 64 B.

Estas configuraciones coinciden con las cachés usadas en Callgrind:

```text
D1 = 32768,8,64
LL = 262144,8,64
```

La estimación considera solo energía dinámica de accesos a memoria caché. No
incluye fugas, energía de DRAM ni coste de instrucciones, por lo que debe leerse
como una comparación relativa entre las dos versiones.

### Supuestos de energía por acceso

| Parámetro | Valor usado | Origen / supuesto |
|---|---:|---|
| `E_L1_read` | 0.728950 nJ | CACTI, caché 32 KiB 8-way, lectura dinámica |
| `E_L1_write` | 0.684048 nJ | CACTI, caché 32 KiB 8-way, escritura dinámica |
| `E_LL_access` | 1.047090 nJ | CACTI, caché 256 KiB 8-way, lectura dinámica |

Se usa una única `E_LL_access` porque en las líneas anotadas de `mm_basic` y
`mm_opt` los fallos D1 relevantes son de lectura (`D1mw = 0`). Si se quisiera
modelar escrituras o writebacks de último nivel por separado, habría que añadir
un parámetro adicional para escritura LL.

### Fórmula

Con los contadores de Callgrind:

- `Dr`: lecturas de datos.
- `Dw`: escrituras de datos.
- `D1mr`: fallos de lectura en D1.
- `D1mw`: fallos de escritura en D1.
- `DLmr + DLmw`: fallos en último nivel, reportados como indicador de presión
  hacia memoria inferior.

La energía estimada es:

```text
E_mem =
    Dr * E_L1_read
  + Dw * E_L1_write
  + (D1mr + D1mw) * E_LL_access
```

Los accesos a LL se aproximan mediante los fallos de D1, ya que cada fallo en
D1 consulta el siguiente nivel. Los fallos LL se muestran en la tabla, pero no se
les asigna energía DRAM porque no se ha definido `E_DRAM_access`.

### Contadores y energía estimada

Los contadores se han tomado de `callgrind_annotate` para `N=512`, usando
`mm_basic` como baseline y `mm_opt` con `BS=64` como versión optimizada.

| Versión | `Dr` | `Dw` | D1 misses | LL misses | Energía L1 read (mJ) | Energía L1 write (mJ) | Energía LL access (mJ) | Energía total (mJ) |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Baseline `mm_basic` | 268,697,604 | 134,217,731 | 134,579,715 | 134,573,571 | 195.867 | 91.811 | 140.917 | 428.596 |
| Optimizada `mm_opt`, `BS=64` | 270,765,871 | 134,217,983 | 19,472,315 | 3,245,563 | 197.375 | 91.812 | 20.389 | 309.576 |

La reducción estimada es:

```text
ahorro = 1 - 309.576 / 428.596 = 27.77 %
```

Aunque las lecturas y escrituras L1 son parecidas, la optimización reduce de
forma clara los fallos D1 y los fallos LL. Por eso la mayor parte del ahorro
estimado aparece en el término de accesos al último nivel:

```text
E_LL_basic = 140.917 mJ
E_LL_opt   =  20.389 mJ
```

## 7. Conclusiones

La versión optimizada mantiene la corrección (`check OK`) y mejora el tiempo de
ejecución para `N=512` con `BS=64`, pasando de `0.525598 s` a `0.085227 s`.

Desde el punto de vista energético, el beneficio principal no viene de reducir
el número total de accesos L1, sino de mejorar la localidad y evitar accesos a
niveles más costosos de la jerarquía. Con los supuestos CACTI anteriores, la
energía dinámica estimada baja de `428.596 mJ` a `309.576 mJ`, un ahorro
aproximado del `27.77 %`.

Por tanto, `BS=64` es la configuración recomendada para `N=512`: es la más
rápida en las medidas realizadas y reduce fuertemente la presión sobre la
jerarquía de memoria, especialmente los fallos D1.

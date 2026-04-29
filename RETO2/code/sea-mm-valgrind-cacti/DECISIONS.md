# DECISIONS.md

## D1. Optimización principal: tiling

Se usará multiplicación por bloques para mejorar la localidad de memoria.

Justificación:
- `mm_basic` accede a `c[k*n+j]` recorriendo columnas.
- En C las matrices están almacenadas por filas.
- El acceso por columnas reduce localidad espacial.
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
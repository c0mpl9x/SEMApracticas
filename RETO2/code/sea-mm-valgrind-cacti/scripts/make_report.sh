#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

printf 'Documentacion: %s\n' "$ROOT_DIR/docs/documentacion.md"
printf 'Metodologia: %s\n' "$ROOT_DIR/docs/metodologia.md"
printf 'Resultados: %s\n' "$ROOT_DIR/docs/resultados.md"

#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

make -C "$ROOT_DIR"
mkdir -p "$ROOT_DIR/results/baseline"

valgrind --tool=callgrind \
  --callgrind-out-file="$ROOT_DIR/results/baseline/callgrind.out" \
  "$ROOT_DIR/src/mm"

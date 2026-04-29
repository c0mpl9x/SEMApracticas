#!/usr/bin/env python3
"""Parsea salidas basicas de Callgrind."""

from __future__ import annotations

import argparse
from pathlib import Path


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Parsear un archivo callgrind.out.*")
    parser.add_argument("input", type=Path, help="Archivo de entrada de Callgrind")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    if not args.input.exists():
        raise SystemExit(f"No existe el archivo: {args.input}")
    print(args.input.read_text(encoding="utf-8", errors="replace"))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

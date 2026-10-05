#!/usr/bin/env bash
set -euo pipefail
repo_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
cd -- "$repo_root"
uv run --locked mypy --strict src
uv run --locked ruff check .
uv run --locked python scripts/check_release.py metadata
uv run --locked python scripts/check_release.py links
uv run --locked python scripts/check_release.py instructions
uv build
uv run --locked python scripts/check_release.py archives
uv run --locked python scripts/check_release.py bundle

#!/usr/bin/env bash
set -euo pipefail
repo_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
cd -- "$repo_root"
command -v uv >/dev/null 2>&1 || { echo "Install uv from https://docs.astral.sh/uv/getting-started/installation/ and retry." >&2; exit 1; }
uv sync --locked

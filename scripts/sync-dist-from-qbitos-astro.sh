#!/usr/bin/env bash
# Copy qbitos-astro production output into site/ for GitHub Pages (see UPSTREAM.md).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ASTRO="${ASTRO:-$HOME/dev/projects/qbitos-astro}"
ASTRO_DIST="${ASTRO_DIST:-dist}"

if [[ ! -d "$ASTRO/$ASTRO_DIST" ]]; then
  echo "error: missing $ASTRO/$ASTRO_DIST — build qbitos-astro first (e.g. npm run build / Makefile)." >&2
  echo "  Set ASTRO=/path/to/qbitos-astro and optionally ASTRO_DIST=output-dir" >&2
  exit 1
fi

mkdir -p "$ROOT/site"
rsync -a --delete "$ASTRO/$ASTRO_DIST/" "$ROOT/site/"
touch "$ROOT/site/.nojekyll"
echo "synced: $ASTRO/$ASTRO_DIST/ → $ROOT/site/"

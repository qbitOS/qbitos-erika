# Build — Erika (`site/` from qbitos-astro)

## 1. Build upstream

In **[qbitOS/qbitos-astro](https://github.com/qbitOS/qbitos-astro)** (your clone, e.g. `~/dev/projects/qbitos-astro`):

- Install deps (`npm ci` or project Makefile).
- Produce **`dist/`** (or the configured output directory — the sync script defaults to **`dist/`**).

If your Astro project outputs elsewhere, set **`ASTRO_DIST`** when calling the sync script (see **`scripts/sync-dist-from-qbitos-astro.sh`**).

## 2. Sync into qbitos-erika

From **this** repo:

```bash
ASTRO=/path/to/qbitos-astro ./scripts/sync-dist-from-qbitos-astro.sh
```

This copies **`dist/`** → **`site/`** and adds **`.nojekyll`** for GitHub Pages.

## 3. Verify

- Open **`site/index.html`** locally (or `npx serve site`).
- Push **`main`**; **Actions** deploy **GitHub Pages** from **`site/`**.

## 4. Compliance

Root **COMPLIANCE.qmd** stays aligned with [qbitOS/compliance](https://github.com/qbitOS/compliance) policy. License triple: **LICENSE**, **LICENSE-MIT**, **LICENSE-APACHE** (Apache text matches **qbitos-freya**).

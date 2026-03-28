# Syncing from qbitos-astro

Canonical **site** code lives in **[qbitOS/qbitos-astro](https://github.com/qbitOS/qbitos-astro)** (or your local clone). This repo tracks **compliance + CI + optional static mirror** under **`site/`**; it does not replace the Astro monorepo.

## Local clone path

Default in scripts: **`$HOME/dev/projects/qbitos-astro`** — override with **`ASTRO`**.

## Merge dist → site (recommended)

From the **qbitos-erika** repo root, after a production build in **qbitos-astro**:

```bash
cd /path/to/qbitos-astro
# npm ci && npm run build   # or your Makefile / uv pipeline — produce dist/

cd /path/to/qbitos-erika
ASTRO=/path/to/qbitos-astro ./scripts/sync-dist-from-qbitos-astro.sh
git add site
git status
git commit -m "sync: site from qbitos-astro dist"
git push origin main
```

## One-way flow

```
qbitos-astro (src/) → build → dist/ → rsync → qbitos-erika/site/ → GitHub Pages → erika.qbitos.ai (Worker)
```

## Related uvspeed docs

- [erika-qbitos-astro-launch.md](https://github.com/qbitOS/uvspeed/blob/main/docs/deployment/erika-qbitos-astro-launch.md)
- [erika-qbitos-astro-cloudflare.md](https://github.com/qbitOS/uvspeed/blob/main/docs/deployment/erika-qbitos-astro-cloudflare.md)

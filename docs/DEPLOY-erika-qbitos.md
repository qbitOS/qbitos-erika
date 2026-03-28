# erika.qbitos.ai — Cloudflare + GitHub Pages

**Canonical implementation** (Worker source, full checklist): **[uvspeed `docs/deployment/erika-qbitos-astro-cloudflare.md`](https://github.com/qbitOS/uvspeed/blob/main/docs/deployment/erika-qbitos-astro-cloudflare.md)**

## This repo’s role

- **GitHub Pages** on **qbitOS/qbitos-erika** serves **`site/`** (synced from **qbitos-astro** `dist/`).
- **`PAGES_WEB_ORIGIN`** for the Worker should match the URL that serves **`index.html`** at the Astro root, e.g. **`https://qbitos.github.io/qbitos-erika`** (no trailing slash).

## Quick table

| Step | Action |
|------|--------|
| Worker | [uvspeed `cloudflare/erika-qbitos-astro-worker.js`](https://github.com/qbitOS/uvspeed/blob/main/cloudflare/erika-qbitos-astro-worker.js) |
| Env | `PAGES_WEB_ORIGIN` = your live static origin |
| Route | `erika.qbitos.ai/*` |
| DNS | **CNAME** `erika` → Pages / org policy |

## Launch gates

See **[erika-qbitos-astro-launch.md](https://github.com/qbitOS/uvspeed/blob/main/docs/deployment/erika-qbitos-astro-launch.md)** (compliance + approval).

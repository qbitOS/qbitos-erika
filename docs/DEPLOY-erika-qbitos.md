# erika.qbitos.ai — Cloudflare + GitHub Pages

**Public site:** **[https://erika.qbitos.ai](https://erika.qbitos.ai)**  
**Canonical implementation** (Worker source, full checklist): **[uvspeed `docs/deployment/erika-qbitos-astro-cloudflare.md`](https://github.com/qbitOS/uvspeed/blob/main/docs/deployment/erika-qbitos-astro-cloudflare.md)**

## This repo’s role

- **GitHub Pages** on **[qbitOS/qbitos-erika](https://github.com/qbitOS/qbitos-erika)** serves **`site/`** (synced from **qbitos-astro** `dist/`).
- **Worker default** **`PAGES_WEB_ORIGIN`** = **`https://qbitos.github.io/qbitos-erika`** (no trailing slash) — the **`index.html`** at **`/`** on that origin.

## Quick table

| Step | Action |
|------|--------|
| Worker | [uvspeed `cloudflare/erika-qbitos-astro-worker.js`](https://github.com/qbitOS/uvspeed/blob/main/cloudflare/erika-qbitos-astro-worker.js) |
| Env | `PAGES_WEB_ORIGIN` = `https://qbitos.github.io/qbitos-erika` (default) unless you host elsewhere |
| Route | `erika.qbitos.ai/*` |
| DNS | **CNAME** `erika` → Cloudflare / **qbitos.github.io** per org policy |

## Launch gates

See **[erika-qbitos-astro-launch.md](https://github.com/qbitOS/uvspeed/blob/main/docs/deployment/erika-qbitos-astro-launch.md)** (compliance + approval).

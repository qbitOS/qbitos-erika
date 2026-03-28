# qbitOS — qbitos-erika (Erika surface)

**qbitos-erika** is the **compliance + CI + deploy reference** home for the **Erika** static site built from **[qbitOS/qbitos-astro](https://github.com/qbitOS/qbitos-astro)**. Canonical **application source** stays in the **Astro** repo; this repo tracks **org alignment** (same envelope as [qbitos-freya](https://github.com/qbitOS/qbitos-freya), [qbitos-iron-line](https://github.com/qbitOS/qbitos-iron-line), [qbitos-gluelam](https://github.com/qbitOS/qbitos-gluelam), [qbitos-gameHUB](https://github.com/qbitOS/qbitos-gameHUB), [mu.eee](https://github.com/qbitOS/mu.eee)) while **build output** is merged from **`qbitos-astro/dist/`** into **`site/`** for **GitHub Pages**.

## Upstream

| Source | Role |
|--------|------|
| [qbitOS/qbitos-astro](https://github.com/qbitOS/qbitos-astro) | Astro + Freya Codex / static **dist/** (authoritative) |
| [qbitOS/uvspeed](https://github.com/qbitOS/uvspeed) | Iron Line bridges, **`docs/deployment/erika-qbitos-astro-*.md`**, Cloudflare Worker source |
| [qbitOS/qbitos-freya](https://github.com/qbitOS/qbitos-freya) | Compliance pattern (`COMPLIANCE.qmd`) |

See **[UPSTREAM.md](UPSTREAM.md)** and **[docs/BUILD.md](docs/BUILD.md)** for merge and build.

## Live: erika.qbitos.ai

| Step | Action |
|------|--------|
| Worker | [uvspeed `cloudflare/erika-qbitos-astro-worker.js`](https://github.com/qbitOS/uvspeed/blob/main/cloudflare/erika-qbitos-astro-worker.js) |
| Env | `PAGES_WEB_ORIGIN` = `https://qbitos.github.io/qbitos-erika` (this repo **Pages**) or `https://qbitos.github.io/qbitos-astro` if Astro publishes there |
| Route | `erika.qbitos.ai/*` |
| DNS | CNAME **`erika`** on **`qbitos.ai`** |

**Operator checklist:** **[docs/DEPLOY-erika-qbitos.md](docs/DEPLOY-erika-qbitos.md)**

## Contents (this repo)

| Path | Purpose |
|------|---------|
| [site/](site/) | Static mirror of **qbitos-astro** `dist/` (via **`scripts/sync-dist-from-qbitos-astro.sh`**) |
| [COMPLIANCE.qmd](COMPLIANCE.qmd) | Runtime path + control envelope |
| [docs/BUILD.md](docs/BUILD.md) | Merge Astro → `site/` |
| [reference/qbitos-erika-manifest.json](reference/qbitos-erika-manifest.json) | Machine-readable upstream pointers |
| [.github/workflows](.github/workflows) | Compliance + GitHub Pages |

## Community

- **[Code of Conduct](CODE_OF_CONDUCT.md)**
- **[Contributing](CONTRIBUTING.md)**
- **[Security](SECURITY.md)**

## License

Licensed under **MIT OR Apache-2.0** — [LICENSE](LICENSE), [LICENSE-MIT](LICENSE-MIT), [LICENSE-APACHE](LICENSE-APACHE). Apache-2.0 text matches [qbitOS/qbitos-freya](https://github.com/qbitOS/qbitos-freya).

Copyright © 2026 Tad R. Ericson.

## GitHub

Push instructions: **[GITHUB.md](GITHUB.md)**.

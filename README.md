# ValorCMO

[![Release](https://img.shields.io/github/v/release/spaceghost69/ValorCMO?display_name=tag)](https://github.com/spaceghost69/ValorCMO/releases)
[![Open Issues](https://img.shields.io/github/issues/spaceghost69/ValorCMO)](https://github.com/spaceghost69/ValorCMO/issues)
[![Repo Size](https://img.shields.io/github/repo-size/spaceghost69/ValorCMO)](https://github.com/spaceghost69/ValorCMO)

OpenClaw-native marketing skill pack for operators who want a reusable CMO layer inside an OpenClaw workspace.

ValorCMO packages a cleaned, portable subset of marketing skills with:
- `.agents`-native shared context lookup
- repaired internal references
- local compatibility docs for common marketing integrations
- a cleaner install path for OpenClaw workspaces

## At a glance

**Best for:** operators, founders, growth builders, and AI-assisted GTM workflows inside OpenClaw

**Includes:**
- growth, content, CRO, RevOps, research, SEO, and paid-media skills
- `.agents/product-marketing-context.md` as the shared context convention
- `tools/REGISTRY.md` and `tools/integrations/*.md` as compatibility scaffolding
- install docs and a shared context starter template

**Does not include:**
- private company context by default
- Valkyr-specific swarm lane logic
- fake claims of live platform access when a skill is really drafting or planning

## Why this exists

The original imported marketing skill pack was useful, but it was not fully native to this workspace. ValorCMO turns that raw import into a cleaner operator package that is easier to install, easier to reason about, and more honest about what is and is not actually connected.

## What is included

- portable marketing skill directories under `skills/`
- OpenClaw-friendly compatibility docs under `tools/`
- `.agents/product-marketing-context.md` as the shared context convention
- cleaned wording and fixed broken reference paths
- install docs and a sample shared context file

## Repo layout

- `skills/` , portable marketing skills
- `tools/REGISTRY.md` , local compatibility registry for imported skill references
- `tools/integrations/*.md` , lightweight integration notes used by skills
- `.agents/product-marketing-context.example.md` , starter template for shared product context
- `INSTALL.md` , install instructions for OpenClaw workspaces
- `UPSTREAM.md` , source lineage and fork strategy notes

## Quick start

1. Copy these paths into your OpenClaw workspace root:
   - `skills/*`
   - `tools/REGISTRY.md`
   - `tools/integrations/*.md`
2. Create your shared context file at:
   - `.agents/product-marketing-context.md`
3. If needed, start from:
   - `.agents/product-marketing-context.example.md`
4. Keep your company-specific context local and do not overwrite it during upgrades.

See `INSTALL.md` for the full install flow.

## Design principles

- truth over theater
- portable over tangled
- local context should be explicit
- compatibility layers should be obvious
- drafts are better than pretending execution happened

## Best fit

ValorCMO is a good fit if you want:
- reusable marketing skills across OpenClaw workspaces
- a shared product-marketing context pattern
- a portable operator layer for content, growth, RevOps, paid, CRO, and research work

It is not meant to be a private company brain dump or a full replacement for business-specific operating context.

## Upstream lineage

ValorCMO is derived from the `marketingskills` project and currently reflects an OpenClaw-oriented cleanup and packaging pass rather than a formal GitHub fork relationship.

See `UPSTREAM.md` for source lineage, what changed, and how to keep the boundary clean.

## Current release

Current public release:
- `v0.1.0`

Release focus:
- OpenClaw compatibility
- `.agents` alignment
- reference cleanup
- installability
- honest workspace behavior assumptions

## Roadmap

- add an install script for OpenClaw workspaces
- add validation checks for broken internal references
- add a smaller “core pack” install profile
- add more explicit examples for B2B SaaS, agencies, and creator products

## Links

- Repo: https://github.com/spaceghost69/ValorCMO
- Releases: https://github.com/spaceghost69/ValorCMO/releases
- OpenClaw docs: https://docs.openclaw.ai

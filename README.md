# ValorCMO

OpenClaw-native marketing skill pack for operators who want a reusable CMO layer inside an OpenClaw workspace.

ValorCMO packages a cleaned, portable subset of marketing skills with:
- `.agents`-native shared context lookup
- repaired internal references
- local compatibility docs for common marketing integrations
- a cleaner install path for OpenClaw workspaces

## Why this exists

The original imported marketing skill pack was useful, but it was not fully native to this workspace. ValorCMO turns that raw import into a cleaner operator package that is easier to install, easier to reason about, and more honest about what is and is not actually connected.

## What is included

- portable marketing skill directories under `skills/`
- OpenClaw-friendly compatibility docs under `tools/`
- `.agents/product-marketing-context.md` as the shared context convention
- cleaned wording and fixed broken reference paths
- install docs and a sample shared context file

## What is intentionally not included

- Valkyr-private product context contents
- local house lane skills from the main swarm workspace
- hardwired `api-0`, GrayMatter, or private ops assumptions as repo-wide requirements
- claims of live platform access when a skill may only be drafting, planning, or preparing assets

## Repo layout

- `skills/` — portable marketing skills
- `tools/REGISTRY.md` — local compatibility registry for imported skill references
- `tools/integrations/*.md` — lightweight integration notes used by skills
- `.agents/product-marketing-context.example.md` — starter template for shared product context
- `INSTALL.md` — install instructions for OpenClaw workspaces
- `UPSTREAM.md` — source lineage and fork strategy notes

## Install into an OpenClaw workspace

Copy these paths into the workspace root:

- `skills/*`
- `tools/REGISTRY.md`
- `tools/integrations/*.md`

Then create your shared context file at:

- `.agents/product-marketing-context.md`

A starter template is included at:

- `.agents/product-marketing-context.example.md`

See `INSTALL.md` for the quick install flow.

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

## Current status

Initial public packaging release:
- version: `v0.1.0`
- focus: OpenClaw compatibility, `.agents` alignment, reference cleanup, installability

## Next good improvements

- add an install script for OpenClaw workspaces
- add tests or lint checks for broken internal references
- add a smaller “core pack” install profile
- add more explicit examples for B2B SaaS, agencies, and creator products

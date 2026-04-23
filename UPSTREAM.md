# Upstream Lineage

## Source project

ValorCMO is derived from:
- upstream repo: `https://github.com/coreyhaines31/marketingskills`
- upstream branch used for import: `development`

## Important note

This repository is currently a standalone GitHub repository, not a GitHub-native fork relationship.

That means lineage is documented here in-repo rather than represented by GitHub's fork UI.

## What changed in ValorCMO

Compared with the imported upstream skill pack, ValorCMO currently adds:
- `.agents` path alignment for shared product-marketing context
- repaired internal reference resolution via `tools/REGISTRY.md`
- local compatibility docs under `tools/integrations/`
- wording cleanup for more honest OpenClaw behavior
- packaging for portable install into OpenClaw workspaces

## What stays out of scope

ValorCMO should avoid becoming a dump of one workspace's private operating state.

Keep these concerns separate unless they are generalized intentionally:
- company-private product context
- private CRM or memory assumptions
- local automation glue that only makes sense in one workspace
- swarm-specific lane behavior unique to Valkyr

## Suggested maintenance model

- periodically inspect upstream for useful additions
- port over improvements selectively
- keep OpenClaw compatibility changes explicit and reviewable
- avoid hiding private workflow assumptions inside generic skills

## If a true fork relationship is desired later

If you want GitHub to show fork lineage directly, create a GitHub fork first and then replay these commits onto that fork, or document the migration path in this file.

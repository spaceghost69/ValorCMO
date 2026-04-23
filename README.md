# ValorCMO

OpenClaw-friendly fork packaging for the imported marketing skills, cleaned up for `.agents` context paths and local reference resolution.

## What is included
- portable marketing skill directories under `skills/`
- local compatibility references under `tools/`
- OpenClaw-native path cleanup (`.agents/product-marketing-context.md`)
- broken cross-reference fixes from the original upstream pack

## What is intentionally not included
- Valkyr-specific product context contents
- house lane skills that belong to the local swarm
- api-0 / GrayMatter operating assumptions as repo-wide hard requirements

## Suggested first push sequence
1. Create or open the `ValorCMO` fork repo
2. Copy these exported contents into the repo root
3. Commit as the initial OpenClaw compatibility layer
4. Add repo docs for install / update flow

## Recommended follow-up
- add a sample `.agents/product-marketing-context.example.md`
- add an install script for OpenClaw workspaces
- split generic compatibility docs from Valkyr-specific workflow docs

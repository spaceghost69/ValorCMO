# Install ValorCMO into an OpenClaw workspace

## Quick install

Copy the repo contents into your workspace root so these paths resolve:

- `skills/*`
- `tools/REGISTRY.md`
- `tools/integrations/*.md`

Then create your shared context file at:

- `.agents/product-marketing-context.md`

If you do not already have one, start from:

- `.agents/product-marketing-context.example.md`

## Recommended workflow

1. Copy the files into the workspace
2. Keep your local `.agents/product-marketing-context.md` workspace-specific
3. Treat `tools/integrations/*.md` as compatibility notes, not proof of live auth
4. Update skills locally if your workspace has company-specific preferences

## What not to overwrite

Do not replace your private or business-specific context just because the repo updates.

In particular, keep these workspace-specific when they already exist:
- `.agents/product-marketing-context.md`
- local business playbooks
- private integration assumptions
- operational memory or CRM data

## Upgrade guidance

When pulling a newer ValorCMO version:
- prefer merging `skills/` and `tools/`
- preserve your local `.agents/product-marketing-context.md`
- review release notes for reference-path or wording changes

# Install ValorCMO into an OpenClaw workspace

## Fastest path

From inside the ValorCMO repo:

```bash
./scripts/install-openclaw-workspace.sh /path/to/openclaw/workspace
```

If you run it while already inside the target workspace, you can just do:

```bash
/path/to/ValorCMO/scripts/install-openclaw-workspace.sh .
```

## What the installer does

The installer copies these repo paths into the target workspace:

- `skills/*`
- `tools/REGISTRY.md`
- `tools/integrations/*.md`
- `.agents/product-marketing-context.example.md`

It also creates `.agents/product-marketing-context.md` only if one does not already exist.

That means your workspace-specific context is preserved by default.

## Optional overwrite behavior

If you want to overwrite an existing `.agents/product-marketing-context.md` with the starter template:

```bash
VALORCMO_FORCE_CONTEXT=1 ./scripts/install-openclaw-workspace.sh /path/to/openclaw/workspace
```

## Manual install

If you do not want to use the script, copy these paths into your workspace root:

- `skills/*`
- `tools/REGISTRY.md`
- `tools/integrations/*.md`

Then create your shared context file at:

- `.agents/product-marketing-context.md`

If you do not already have one, start from:

- `.agents/product-marketing-context.example.md`

## Recommended workflow

1. Run the installer
2. Edit `.agents/product-marketing-context.md` with your actual product context
3. Treat `tools/integrations/*.md` as compatibility notes, not proof of live auth
4. Keep business-specific context local to the workspace

## What not to overwrite

Do not replace your private or business-specific context just because the repo updates.

In particular, keep these workspace-specific when they already exist:
- `.agents/product-marketing-context.md`
- local business playbooks
- private integration assumptions
- operational memory or CRM data

## Upgrade guidance

When pulling a newer ValorCMO version:
- rerun `./scripts/install-openclaw-workspace.sh /path/to/openclaw/workspace`
- preserve your local `.agents/product-marketing-context.md`
- review release notes for reference-path or wording changes

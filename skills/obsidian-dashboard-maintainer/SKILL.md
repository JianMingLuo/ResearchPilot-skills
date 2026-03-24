---
name: obsidian-dashboard-maintainer
description: Use when maintaining the Obsidian-facing dashboard, homepage navigation, index links, Dataview blocks, or CSS snippets for a ResearchPilot workspace so the Vault opens into a clear, up-to-date research control panel.
---

# Obsidian Dashboard Maintainer

Use this skill for the Vault presentation layer, not for project research content itself.

## Use when
- The user wants to update `Dashboard.md`
- Homepage navigation or index links need to be fixed or expanded
- Dataview dashboard blocks should be added or adjusted
- Obsidian CSS snippets or dashboard styling need maintenance
- The workspace should open into a clearer research control panel

## Do not use when
- The task is only a daily log, report, experiment plan, or meeting note
- The task is only protocol normalization or publishing
- The task is only to edit project-specific scientific content

## Core behavior
- Maintain the Obsidian-facing layer of the workspace:
  - `Dashboard.md`
  - `Home.md`
  - root `*_Index.md` pages
  - `.obsidian/snippets/`
  - Obsidian guide docs in `09_Templates/`
- Prefer a lightweight Obsidian setup:
  - Markdown
  - YAML front matter
  - wikilinks
  - Dataview
  - CSS snippets
- Keep the dashboard useful even if Dataview is not installed

## Default subagent level
- `single-agent`
- user-visible process: `silent`
- default handoff: no

## Maintenance checklist
- `Dashboard.md` exists and works as the main dashboard
- `Home.md` links all primary indexes including `Handoffs_Index`
- Dashboard snippets and `cssclasses` stay aligned
- Obsidian guide docs match the actual workspace structure

## Recommended workspace outputs
- `Dashboard.md`
- `Home.md`
- `Handoffs_Index.md`
- `09_Templates/OBSIDIAN_OPTIMIZATION_GUIDE.md`
- `.obsidian/snippets/researchpilot-dashboard.css`

## Definition of done
- The workspace opens into a clear, navigable research dashboard
- Navigation, index links, and dashboard presentation are consistent
- The Obsidian-facing layer is maintainable without relying on heavy plugins

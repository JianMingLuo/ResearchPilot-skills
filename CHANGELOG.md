# Changelog

All notable changes to `ResearchPilot-skills` will be documented in this file.

The format is intentionally lightweight and human-maintainable.

## 2026-03-24

### Added

- Added `obsidian-dashboard-maintainer` as a first-class skill for maintaining:
  - `Dashboard.md`
  - `Home.md`
  - root index navigation
  - Dataview blocks
  - Obsidian CSS snippets
- Added cross-session continuity support documentation:
  - `workflow_handoff` policy references
  - bounded retrieval guidance for new sessions
- Added package-level `LICENSE`
- Added package-level `CHANGELOG.md`

### Changed

- Updated package documentation for public release readiness
- Rewrote `README.md` into a GitHub-facing repository overview
- Corrected `experiment-planner` description to reflect its current `full-council` positioning
- Generalized local install instructions to remove machine-specific absolute paths

### Notes

- Existing skill updates continue to flow through symlink installs
- Newly added skill directories still need a one-time install into `~/.codex/skills/`

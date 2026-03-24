# ResearchPilot Skills

ResearchPilot Skills is a Codex skill pack for PhD research workflows.

It is designed for researchers who want their daily research operations to live in a local, file-based system rather than in scattered chat history. The package focuses on turning routine research work into reusable, maintainable workflows:

- research idea to formal experiment plan
- daily log, weekly report, and monthly review pipelines
- meeting notes to action tracking
- protocol normalization and publishing
- project-level progress synthesis and retrieval control
- Obsidian dashboard, homepage, and navigation maintenance

Current domain fit is strongest for:

- molecular biology
- bioinformatics
- pomology and plant science PhD workflows

## Design principles

- Default output language is Chinese
- Missing or weakly supported information should be marked as `待确认`
- Do not fabricate experimental conditions, data, citations, or conclusions
- Prefer durable local files over fragile short-term chat memory
- Optimize for rigor, clarity, and execution quality

## Included skills

- `action-tracker`
- `daily-log-to-report`
- `experiment-planner`
- `inbox-triage`
- `meeting-note-to-action`
- `monthly-review`
- `obsidian-dashboard-maintainer`
- `project-index-maintainer`
- `project-progress-synthesizer`
- `protocol-normalizer`
- `protocol-publisher`
- `schedule-manager`
- `weekly-review`

## Best used with

This repository is the skill layer. It works best together with a matching workspace template:

- `ResearchPilot-skills`
  - installable skills
- `ResearchPilot-workspace`
  - directory structure, templates, indexes, and file conventions

You can install the skills alone, but the full workflow is designed around a companion workspace.

## What makes this package different

- It is file-first rather than chat-first
- It separates logs, reports, plans, meetings, actions, schedules, protocols, and project synthesis
- It is designed for bounded retrieval and anti-hallucination use as the workspace grows
- It supports cross-session continuation through local handoff files
- `experiment-planner` already serves as the `full-council` reference implementation inside the system

## Multi-agent policy

ResearchPilot does not treat all workflows the same.

- `experiment-planner`
  - `full-council`
  - mentor-board style visible process
  - separate `experiment_council_record`
- `weekly-review`
  - `medium-council`
- `monthly-review`
  - `medium-council`
- `project-progress-synthesizer`
  - `medium-council`
- `protocol-normalizer`
  - `medium-council`
- `schedule-manager`
  - `lite-council`
- `action-tracker`
  - `lite-council`
- `meeting-note-to-action`
  - `lite-council`
- `daily-log-to-report`
  - `single-agent`
- `inbox-triage`
  - `single-agent`
- `protocol-publisher`
  - `single-agent`
- `project-index-maintainer`
  - `single-agent`
- `obsidian-dashboard-maintainer`
  - `single-agent`

## Install

### Option 1: local install for development

From this repository:

```bash
./scripts/install-local-skills.sh
```

This installs all skills into `~/.codex/skills/` as symlinks by default.

Useful options:

```bash
./scripts/install-local-skills.sh --copy
./scripts/install-local-skills.sh --force
```

After installation, restart Codex or start a new session.

For a more detailed local setup example, see [LOCAL_INSTALL.md](LOCAL_INSTALL.md).

### Option 2: publish and install from GitHub

Recommended release path:

1. Publish this repository to GitHub
2. Share it as an installable Codex skill repository
3. Pair it with a public `ResearchPilot-workspace` template repository

If you later want to polish trigger wording, product-facing descriptions, or metadata chips, that is a good time to use `skill-creator`. It is helpful, but not required for basic publication.

## Suggested starter sets

### Minimal starter set

- `experiment-planner`
- `daily-log-to-report`
- `weekly-review`

### Protocol workflow

- `protocol-normalizer`
- `protocol-publisher`
- `schedule-manager`

### Project governance workflow

- `project-progress-synthesizer`
- `project-index-maintainer`
- `action-tracker`

### Obsidian presentation layer

- `obsidian-dashboard-maintainer`

## Recommended repository structure

If you want to share the ecosystem publicly, the cleanest setup is:

```text
ResearchPilot/
  README.md
  LICENSE
  CHANGELOG.md
  ResearchPilot-skills/
    README.md
    LOCAL_INSTALL.md
    scripts/
      install-local-skills.sh
    skills/
      <skill-name>/
        SKILL.md
        agents/openai.yaml
        scripts/        # optional
        references/     # optional
        assets/         # optional
  ResearchPilot-workspace/
    README.md
    AGENTS.md
    Home.md
    Dashboard.md
    09_Templates/
    14_Protocols/
```

If you prefer separate repositories, that also works well:

- `ResearchPilot-skills`
- `ResearchPilot-workspace`

## Public release notes

Before publishing, review these categories carefully:

- absolute local filesystem paths
- private project names or unpublished experiments
- personal schedules, habits, or identity-bearing examples
- internal-only template assumptions

In the current repository, the main item that required cleanup was local absolute path examples in installation documentation.

## Maturity snapshot

The current package already covers:

- day to month reporting
- formal experiment planning
- protocol normalization and publishing
- project synthesis and retrieval control
- Obsidian dashboard and navigation maintenance
- cross-session handoff support

## License

This repository includes an MIT license in [LICENSE](LICENSE).

---
name: project-progress-synthesizer
description: Build a project-level progress synthesis across logs, plans, reports, meetings, and actions. Use when the user wants the current project stage, milestones, gaps, blockers, and next actions summarized without scanning the whole workspace.
---

# Project Progress Synthesizer

Use this skill for project-level state, not for raw project indexing.

## Use when
- A project has multiple related files and needs a current status synthesis
- The user wants stage, milestones, blockers, and next actions

## Do not use when
- The task is only to maintain a project entry page
- The task is just a single report or meeting note

## Core behavior
- Prefer bounded project source sets
- Output:
  - 当前阶段
  - 已完成关键进展
  - 当前缺口
  - 主要阻塞
  - 下一步动作
  - bounded continuity index when possible
- Do not replace source files; summarize them

## Default subagent level
- `medium-council`
- user-visible process: `audit-board`
- default handoff: yes

## Default sub-agent council
- This skill should use a 3-agent pattern by default:
  - agent 1: project fact-chain agent
    - extracts stage-relevant progress from bounded project files
  - agent 2: stage judgment agent
    - evaluates current stage, milestone maturity, and missing links
  - agent 3: blocker and action agent
    - identifies blockers, deferred paths, and next actions
- The main agent must still produce the only final project progress synthesis.
- User-visible process should be a short `audit-board`.
- This skill should generate a `workflow_handoff` by default.

## Recommended workspace outputs
- `04_Projects/<project>/YYYY-MM-project-progress.md`

## Definition of done
- The project state is clear and traceable
- Retrieval can start from a small bounded file set

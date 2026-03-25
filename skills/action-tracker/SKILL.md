---
name: action-tracker
description: Consolidate follow-up items across meetings, reports, project summaries, and protocol preparation. Use when the user needs a project-level action list with priorities, blockers, source traceability, and next steps.
---

# Action Tracker

Use this skill for task closure, not for raw note capture.

## Use when
- Actions are scattered across meeting notes, reports, and project summaries
- The user needs a single follow-up list with ownership and blocking logic

## Do not use when
- The user only wants a meeting note
- The task is only project progress synthesis

## Core behavior
- Distinguish:
  - decided actions
  - suggested but unconfirmed actions
  - blocked actions
  - completed actions
- Keep traceability to source files
- Surface protocol preparation tasks when they affect execution
- Act as a task hub for downstream daily, weekly, monthly, and handoff workflows
- Distinguish which tasks should feed:
  - daily logs
  - weekly reviews
  - monthly reviews or next-month planning
  - longer-lived project backlog

## Default subagent level
- `medium-council`
- user-visible process: `silent`
- default handoff: yes

## Default sub-agent council
- This skill should use a 3-agent pattern by default:
  - agent 1: action extraction agent
    - extracts candidate actions from bounded source files
  - agent 2: dedup and status agent
    - removes duplicates and classifies actions into decided, suggested, blocked, or completed
  - agent 3: task routing agent
    - assigns actions to daily, weekly, monthly, or backlog carry-forward layers
- The main agent must still produce the only final action tracker.
- This skill should generate a `workflow_handoff` by default.

## Recommended workspace outputs
- `12_Actions/<project>/YYYY-MM-action-tracker.md`

## Definition of done
- Follow-up items are consolidated without duplicating or replacing source documents
- Action routing is explicit enough to feed daily logs, weekly reviews, monthly reviews, and handoffs

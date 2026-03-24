---
name: schedule-manager
description: Manage experiment and non-experiment schedule constraints for PhD research. Use when planning weekly or monthly schedules that include experiments, meetings, lab duties, party meetings, recurring obligations, and changes that may conflict with experimental timing.
---

# Schedule Manager

Use this skill when time constraints must be made explicit.

## Use when
- The user wants weekly or monthly schedule planning
- The task includes experiments plus recurring or fixed obligations
- A schedule needs conflict detection or change history

## Do not use when
- The task is only a weekly report or monthly report with no schedule arrangement
- The task is only protocol normalization

## Core behavior
- Separate:
  - fixed obligations
  - flexible plans
  - recurring items
  - changed plans
- Detect likely time conflicts
- If a local protocol exists, use only:
  - lead time
  - prerequisites
  - time-sensitive steps
- If no protocol exists, use restricted planning and mark details `待确认`

## Default subagent level
- `lite-council`
- user-visible process: `audit-board`
- default handoff: yes

## Default sub-agent council
- This skill should use a 2-agent pattern by default:
  - agent 1: time-conflict agent
    - checks collisions among fixed obligations, flexible tasks, and experimental windows
  - agent 2: protocol dependency agent
    - checks lead time, prerequisites, and time-sensitive steps from bounded protocol sources
- The main agent must still produce the only final schedule.
- User-visible process should be a short `audit-board`.
- This skill should generate a `workflow_handoff` by default.

## Recommended workspace outputs
- `11_Schedules/YYYY-Www-weekly-schedule.md`
- `11_Schedules/YYYY-MM-monthly-schedule.md`

## Definition of done
- The schedule is readable, bounded, and conflict-aware
- Protocol-derived preparation logic is explicit when available

---
name: monthly-review
description: Synthesize weekly and daily materials into a monthly research report with next-month goals and time distribution. Use when the user wants a monthly summary plus structured big goals, subgoals, and expected completion timing.
---

# Monthly Review

Use this skill for month-level synthesis and forward planning.

## Use when
- Weekly reports exist or can be used as the main monthly source
- The user wants a monthly summary plus next-month goals

## Do not use when
- Only a single week or single day should be summarized
- The task is only schedule management

## Core behavior
- Prefer weekly reports first, then daily logs
- Include:
  - 本月主要进展
  - 本月问题与风险
  - 下月整体目标
  - 下月目标拆解
  - 预计完成时间分布
- Keep month review as a planning framework, not a diary

## Default subagent level
- `medium-council`
- user-visible process: `audit-board`
- default handoff: yes

## Default sub-agent council
- This skill should use a 3-agent pattern by default:
  - agent 1: monthly fact aggregator
    - consolidates confirmed monthly progress from bounded weekly and daily sources
  - agent 2: stage and risk reviewer
    - checks whether monthly conclusions match actual evidence and current project stage
  - agent 3: next-month goal planner
    - decomposes next-month goals into realistic subgoals and expected timing
- The main agent must still produce the only final monthly report.
- User-visible process should be a short `audit-board`.
- This skill should generate a `workflow_handoff` by default.

## Recommended workspace outputs
- `03_Monthly_Reports/YYYY-MM-monthly-report.md`

## Definition of done
- The monthly report is based on bounded source material
- Next-month goals are decomposed and time-distributed

---
name: weekly-review
description: Synthesize multiple daily logs into a weekly research report. Use when the user wants a weekly summary, risk review, next-week plan, and a readable next-week schedule table based on existing daily logs and schedule constraints.
---

# Weekly Review

Use this skill for multi-day weekly synthesis.

## Use when
- There are multiple daily logs for the week
- The user wants weekly progress, blockers, and next-week arrangement
- Schedule constraints should be surfaced in a weekly table

## Do not use when
- Only a single-day log exists
- The task is a monthly report
- The task is an experiment plan

## Core behavior
- Prefer existing daily logs as primary sources
- Optionally integrate meeting notes and weekly schedules
- Include:
  - 本周主要进展
  - 本周问题与风险
  - 未完成项
  - 下周重点任务
  - 下周日程安排表
- Keep research reporting primary; inject non-experiment schedule only when relevant or requested

## Default subagent level
- `medium-council`
- user-visible process: `audit-board`
- default handoff: yes

## Default sub-agent council
- This skill should use a 3-agent pattern by default:
  - agent 1: weekly fact summarizer
    - extracts completed work, unresolved work, blockers, and core progress only from bounded weekly sources
  - agent 2: weekly audit reviewer
    - checks omissions, duplicate summaries, plan-vs-done confusion, and weakly supported conclusions
  - agent 3: next-week schedule integrator
    - checks whether next-week priorities and schedule constraints actually align
- The main agent must still produce the only final weekly report.
- User-visible process should be a short `audit-board`, not raw agent transcripts.
- This skill should generate a `workflow_handoff` by default.

## Recommended workspace outputs
- `02_Weekly_Reports/YYYY-Www-weekly-report.md`

## Definition of done
- The week is summarized without replacing source daily logs
- A clear next-week schedule table is present

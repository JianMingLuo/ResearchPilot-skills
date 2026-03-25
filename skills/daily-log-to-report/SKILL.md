---
name: daily-log-to-report
description: Formalize a single day of PhD research progress into a structured daily log. Use when the user reports what they did today and wants a clean saved record with time usage, problems, downstream impact, and next-day planning.
---

# Daily Log To Report

Use this skill only for single-day reporting.

## Use when
- The user gives today’s progress, experiment execution, observations, delays, or tomorrow’s plan
- The output should become a formal daily log file

## Do not use when
- The task spans multiple days
- The task is weekly or monthly synthesis
- The task is a meeting note or experiment plan

## Core behavior
- Keep to one calendar day
- Preserve only stated facts
- Mark missing project names, anomalies, or next steps as `待确认`
- Include:
  - 今日完成
  - 关键观察/结果
  - 时间占用与安排情况
  - 问题与阻碍
  - 对后续计划的影响
  - 前序任务承接
    - 从前几日延续到今天的事项
    - 已安排到明日的优先事项
    - 尚未完成但需继续挂起的事项
  - 明日计划
  - 待确认事项
- Do not rely only on the current chat turn when prior task commitments already exist
- When available, prefer bounded retrieval from:
  - recent related daily logs
  - the current action tracker
  - the latest relevant workflow handoff
- If earlier planned tasks were supposed to happen today or tomorrow, surface them explicitly rather than silently dropping them

## Default subagent level
- `single-agent`
- user-visible process: `silent`
- default handoff: yes

## Carry-forward rule
- This skill should explicitly carry forward unfinished or already-scheduled tasks from earlier sources
- If a task was already scheduled in prior daily logs, action trackers, or handoff notes, it should appear in the daily log rather than being lost between sessions
- If source files conflict on whether a task is still active, mark that status as `待确认`

## Handoff expectations
- This skill should generate a `workflow_handoff` by default
- The handoff should carry forward:
  - tomorrow or next-workday priorities
  - unfinished carried-over tasks
  - tasks inherited from earlier daily logs or action trackers
  - the next files a fresh session should read

## Recommended workspace outputs
- `01_Daily_Logs/YYYY-MM-DD-daily-log.md`

## Definition of done
- A single-day record is formalized without cross-day synthesis
- Downstream impact and next-day implications are explicit
- Carried-over tasks and next-day inherited tasks are explicit rather than lost

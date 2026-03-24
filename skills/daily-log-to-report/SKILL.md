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
  - 明日计划
  - 待确认事项

## Recommended workspace outputs
- `01_Daily_Logs/YYYY-MM-DD-daily-log.md`

## Definition of done
- A single-day record is formalized without cross-day synthesis
- Downstream impact and next-day implications are explicit


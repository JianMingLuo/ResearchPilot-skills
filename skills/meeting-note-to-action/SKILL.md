---
name: meeting-note-to-action
description: Convert advisor discussions, lab meetings, or project conversations into structured meeting notes plus follow-up actions. Use when the user provides discussion notes and needs decisions, action items, responsibilities, and deadlines captured without inventing new facts.
---

# Meeting Note To Action

Use this skill for meetings, discussions, and decision capture.

## Use when
- The user provides advisor discussion notes, lab meeting notes, or project decisions
- The output should separate discussion, decisions, and actions

## Do not use when
- The input is just a daily log
- The task is to create a project-wide action tracker

## Core behavior
- Separate:
  - 会议背景
  - 讨论内容
  - 已决定事项
  - 行动项
  - 待确认事项
- Stable research memory may be cited only as background constraint
- Do not rewrite memory as if it were newly decided in the meeting

## Default subagent level
- `lite-council`
- user-visible process: `silent`
- default handoff: no

## Default sub-agent council
- This skill should use a 2-agent pattern by default:
  - agent 1: decision and action extractor
    - extracts meeting decisions, responsibilities, and follow-up items
  - agent 2: fidelity reviewer
    - checks that discussion, decisions, and actions are not conflated or over-interpreted
- The main agent must still produce the only final meeting note.

## Recommended workspace outputs
- `06_Meeting_Notes/YYYY-MM-DD-topic-meeting-note.md`

## Definition of done
- Decisions and action items are explicit
- Background constraints and meeting facts are not conflated

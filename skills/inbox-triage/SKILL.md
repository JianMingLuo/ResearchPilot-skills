---
name: inbox-triage
description: Route mixed raw inputs into the correct ResearchPilot workflow. Use when the user has raw notes, Word/PDF files, screenshots, mixed updates, or unclear input types and needs the right skill/target directory chosen before formalization.
---

# Inbox Triage

Use this skill before formalization when the input boundary is unclear.

## Use when
- The input mixes multiple content types
- The user is unsure which skill should be applied first
- `00_Inbox/` contains pending raw files

## Do not use when
- The correct downstream skill is already obvious and explicitly invoked

## Core behavior
- Determine the primary type first:
  - daily progress
  - meeting material
  - schedule constraint
  - protocol source
  - research idea
- Recommend:
  - next skill
  - target directory
  - required follow-up info
- If content spans multiple boundaries, state the processing order

## Definition of done
- The user gets a clear routing decision without premature formalization


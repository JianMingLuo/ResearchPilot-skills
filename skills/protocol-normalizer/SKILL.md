---
name: protocol-normalizer
description: Normalize heterogeneous protocol source files into structured reusable Markdown protocols. Use when the user provides Word, PDF, text, or mixed-format protocol material that needs a consistent method document without fabricating missing details.
---

# Protocol Normalizer

Use this skill for protocol ingestion and normalization.

## Use when
- The user provides Word, PDF, or text protocol files
- The source formats vary significantly across authors
- A reusable method document is needed for later planning and scheduling

## Do not use when
- The task is to publish a finished protocol for humans
- The input is already a high-quality normalized protocol

## Core behavior
- Preserve source originals
- Normalize into a method document with:
  - applicable scenarios
  - materials, reagents, equipment
  - lead time
  - prerequisites
  - time-sensitive steps
  - quality checkpoints
  - pending confirmations
- If extraction quality is weak, produce a safe draft rather than hallucinating details
- Distinguish:
  - `standard`
  - `workflow_mixed`

## Default subagent level
- `medium-council`
- user-visible process: `audit-board`
- default handoff: yes

## Default sub-agent council
- This skill should use a 3-agent pattern by default:
  - agent 1: source extraction agent
    - extracts only reliably readable content from the original source
  - agent 2: structure normalization agent
    - maps extracted content into protocol slots
  - agent 3: gap audit agent
    - flags `待确认` gaps and prevents speculative completion
- The main agent must still preserve original-source linkage and produce the only final normalized protocol.
- User-visible process should be a short `audit-board`.
- This skill should generate a `workflow_handoff` by default.

## Recommended workspace outputs
- `14_Protocols/_normalized/<slug>.md`

## Definition of done
- A reusable normalized protocol exists with explicit source linkage and pending gaps

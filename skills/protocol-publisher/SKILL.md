---
name: protocol-publisher
description: Publish normalized protocols into human-readable Markdown and Word outputs. Use when a structured protocol is ready for release and needs a readable Markdown version plus a styled Word document, ideally via pandoc and reference.docx.
---

# Protocol Publisher

Use this skill for protocol release, not source normalization.

## Use when
- A normalized protocol already exists
- The user needs a readable Markdown and/or Word release
- Published paths should be synchronized back into the protocol index

## Do not use when
- The source file has not been normalized yet
- The protocol is too incomplete to publish safely

## Core behavior
- Keep normalized Markdown as the source of truth
- Publish:
  - human-readable Markdown
  - Word output
- Prefer `pandoc + reference.docx`
- Allow fallback behavior when Word generation is blocked
- Keep `workflow_mixed` protocols visibly marked as mixed workflows

## Bundled script
- `scripts/publish_protocol.sh` can be used as a deterministic publishing helper

## Definition of done
- The protocol has a readable Markdown release
- If the environment allows it, a Word release also exists
- Published paths are synchronized into the index


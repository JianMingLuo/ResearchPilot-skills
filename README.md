# ResearchPilot Skills

ResearchPilot Skills is a file-first Codex skill pack for PhD research workflows.

It is designed for researchers who want their daily research work to be written into durable local files instead of being scattered across chat history. The package focuses on turning routine research operations into reusable, structured workflows for planning, reporting, project tracking, protocol management, and workspace maintenance.

## 中文简介

ResearchPilot Skills 是一套面向博士科研工作的、以本地文件为中心的 Codex skills 集合。

它不是普通的提示词集合，而是一组围绕真实科研场景设计的可安装技能，目标是把原本容易散落在聊天记录里的内容，持续沉淀为本地可维护文件。

它重点支持：

- 研究构思到正式实验方案
- 日报、周报、月报的持续落盘
- 会议纪要到行动项闭环
- protocol 的规范化与发布
- 项目级进展综合与检索控制
- Obsidian 首页看板与导航维护

当前最适合的领域包括：

- 分子生物学
- 生物信息学
- 果树学与植物科学博士工作流

## English Overview

ResearchPilot Skills is an installable Codex skill pack for file-based PhD research management.

It is intended for researchers who want a durable local workflow rather than a chat-only workflow. The repository emphasizes bounded retrieval, structured outputs, and long-term maintainability. It works especially well when paired with `ResearchPilot-workspace`.

The strongest current fit is:

- molecular biology
- bioinformatics
- plant science and pomology workflows

## 中文：核心设计原则

- 默认输出语言为中文
- 信息不足或证据不足时，明确标记 `待确认`
- 不编造实验条件、数据、文献或结论
- 优先本地文件沉淀，而不是依赖短期聊天上下文
- 随着文件增多，优先做有边界的检索，而不是全局无差别扫描
- 优先保证学术严谨、结构清晰和可执行性

## English: Core Design Principles

- Default output language is Chinese
- Weakly supported or missing information should be marked as `待确认`
- Do not fabricate experimental conditions, data, citations, or conclusions
- Prefer durable local files over short-lived conversation memory
- Use bounded retrieval rather than broad, unscoped scanning
- Optimize for rigor, clarity, and execution quality

## 中文：包含的 Skills

- `action-tracker`
  - 汇总会议、报告、项目输出中的行动项与阻塞
- `daily-log-to-report`
  - 将单日科研进展整理为正式日报
- `experiment-planner`
  - 将课题设想推进为正式实验方案
- `inbox-triage`
  - 对混杂输入做分流和路由
- `meeting-note-to-action`
  - 将讨论内容整理为会议纪要和行动项
- `monthly-review`
  - 基于周报和日报形成月度总结
- `obsidian-dashboard-maintainer`
  - 维护 Obsidian 首页、Dashboard、索引页与展示层
- `project-index-maintainer`
  - 维护项目入口页和检索边界
- `project-progress-synthesizer`
  - 形成项目级进展画像与阶段判断
- `protocol-normalizer`
  - 将异构 protocol 原件规范化为结构化方法文件
- `protocol-publisher`
  - 将规范化 protocol 发布为可读 Markdown / Word 版本
- `schedule-manager`
  - 管理实验与非实验事务安排
- `weekly-review`
  - 基于日报和日程约束形成周报

## English: Included Skills

- `action-tracker`
  - consolidate actions, blockers, and follow-ups
- `daily-log-to-report`
  - formalize one day of research work into a daily log
- `experiment-planner`
  - refine a research idea into a formal experiment plan
- `inbox-triage`
  - route mixed raw inputs into the right workflow
- `meeting-note-to-action`
  - turn discussions into meeting notes plus follow-up actions
- `monthly-review`
  - build a monthly review from weekly and daily materials
- `obsidian-dashboard-maintainer`
  - maintain the Obsidian-facing dashboard and navigation layer
- `project-index-maintainer`
  - maintain project entry pages and retrieval boundaries
- `project-progress-synthesizer`
  - synthesize project-level progress, gaps, and next actions
- `protocol-normalizer`
  - normalize heterogeneous protocol sources into structured documents
- `protocol-publisher`
  - publish normalized protocols into human-readable release formats
- `schedule-manager`
  - manage experimental and non-experimental scheduling constraints
- `weekly-review`
  - synthesize daily logs into a weekly report

## 中文：多代理策略

ResearchPilot 并不要求所有 skill 都使用同样的代理复杂度。

- `experiment-planner`
  - `full-council`
  - 作为当前最完整的多代理样板
  - 支持导师组纪要板和单独的 `experiment_council_record`
- `weekly-review`
  - `medium-council`
- `monthly-review`
  - `medium-council`
- `project-progress-synthesizer`
  - `medium-council`
- `protocol-normalizer`
  - `medium-council`
- `schedule-manager`
  - `lite-council`
- `action-tracker`
  - `lite-council`
- `meeting-note-to-action`
  - `lite-council`
- `daily-log-to-report`
  - `single-agent`
- `inbox-triage`
  - `single-agent`
- `protocol-publisher`
  - `single-agent`
- `project-index-maintainer`
  - `single-agent`
- `obsidian-dashboard-maintainer`
  - `single-agent`

## English: Subagent Policy Snapshot

ResearchPilot does not force every workflow into the same agent architecture.

- `experiment-planner`
  - `full-council`
  - current reference implementation for structured multi-agent planning
- review and synthesis workflows
  - mostly `medium-council`
- scheduling and action closure workflows
  - mostly `lite-council`
- publication and simple formalization workflows
  - mostly `single-agent`

## 中文：如何使用

### 1. 安装

在本仓库目录下运行：

```bash
./scripts/install-local-skills.sh
```

默认会把所有 skills 以软链接方式安装到：

```text
~/.codex/skills/
```

常用参数：

```bash
./scripts/install-local-skills.sh --copy
./scripts/install-local-skills.sh --force
```

安装完成后，建议重启 Codex 或新开会话。

### 2. 推荐搭配 workspace 使用

最推荐的配套仓库是：

- `ResearchPilot-workspace`

`ResearchPilot-skills` 负责能力层，`ResearchPilot-workspace` 负责：

- 目录结构
- 模板
- 首页导航
- 项目入口
- protocol 库
- handoff 与检索边界

### 3. 调用方式

安装完成后，可以直接在对话里显式调用 skill，例如：

```text
@experiment-planner 帮我把这个课题构思整理成正式实验方案
@daily-log-to-report 帮我把今天的工作整理成日报
@weekly-review 根据这些日报生成本周周报
@meeting-note-to-action 帮我整理这次导师讨论
@protocol-normalizer 把这份 Word protocol 规范化成结构化方法文件
@obsidian-dashboard-maintainer 帮我更新首页看板和索引导航
```

如果你不显式写 skill 名，Codex 也可以根据任务边界推断，但明确写出来通常更稳。

### 4. 推荐上手顺序

最小起步建议：

1. `experiment-planner`
2. `daily-log-to-report`
3. `weekly-review`

如果你已经在管理 protocol：

1. `protocol-normalizer`
2. `protocol-publisher`
3. `schedule-manager`

如果你已经进入项目治理阶段：

1. `project-progress-synthesizer`
2. `project-index-maintainer`
3. `action-tracker`

如果你想把 Vault 首页做起来：

1. `obsidian-dashboard-maintainer`

## English: How To Use

### 1. Install

From this repository:

```bash
./scripts/install-local-skills.sh
```

By default, all skills are installed into `~/.codex/skills/` as symlinks.

Useful options:

```bash
./scripts/install-local-skills.sh --copy
./scripts/install-local-skills.sh --force
```

After installation, restart Codex or begin a new session.

### 2. Pair with the workspace template

The recommended companion repository is:

- `ResearchPilot-workspace`

Use `ResearchPilot-skills` as the capability layer and `ResearchPilot-workspace` as the file structure and template layer.

### 3. Invoke a skill explicitly

Example prompts:

```text
@experiment-planner Help me turn this idea into a formal experiment plan
@daily-log-to-report Turn today’s research progress into a formal daily log
@weekly-review Build this week’s report from my daily logs
@meeting-note-to-action Formalize this advisor discussion into a meeting note
@protocol-normalizer Normalize this protocol source file into a structured method document
@obsidian-dashboard-maintainer Update the dashboard and homepage navigation
```

### 4. Suggested onboarding path

- Start with:
  - `experiment-planner`
  - `daily-log-to-report`
  - `weekly-review`
- Add protocol workflows when needed
- Add project synthesis and action tracking once your workspace grows
- Add dashboard maintenance when you want a stronger Obsidian front page

## 中文：推荐仓库结构

如果你要公开分享整套系统，最推荐的结构是分成两个仓库：

- `ResearchPilot-skills`
- `ResearchPilot-workspace`

如果你想做成一个总仓库，也可以参考：

```text
ResearchPilot/
  README.md
  LICENSE
  CHANGELOG.md
  ResearchPilot-skills/
  ResearchPilot-workspace/
```

## English: Recommended Repository Structure

The cleanest public setup is usually two repositories:

- `ResearchPilot-skills`
- `ResearchPilot-workspace`

If you prefer a single umbrella repository, a two-folder layout also works.

## 中文：发布前检查重点

发布前建议重点检查：

- 是否残留绝对本地路径
- 是否残留个人项目名、真实实验内容或私人习惯
- README 是否和实际 skill 状态一致
- 新增 skill 是否已经安装测试过

## English: Pre-release Checks

Before publishing, review:

- local absolute paths
- personal or unpublished project content
- README accuracy versus current skill behavior
- whether newly added skills have been installation-tested

## License

This repository is released under the MIT license. See [LICENSE](LICENSE).

# Local Install Guide

如果你现在本地已有一堆测试数据，想重新开一个干净目录来正式使用 `ResearchPilot`，推荐按下面做。

## 一次性准备

### 1. 安装 skills 到本地 Codex

默认安装目标：
- `~/.codex/skills/`

在当前仓库内运行：

```bash
cd /path/to/ResearchPilot-skills
./scripts/install-local-skills.sh
```

如果你希望复制而不是软链接：

```bash
./scripts/install-local-skills.sh --copy
```

如果已经装过，想覆盖：

```bash
./scripts/install-local-skills.sh --force
```

安装完成后：
- 重启 Codex，让新 skills 生效

## 新开一个干净工作区

### 2. 用 workspace 模板初始化新目录

在当前仓库内运行：

```bash
cd /path/to/ResearchPilot-workspace
./scripts/init-workspace.sh ~/ResearchPilot-MyPhD
```

这样会生成一个新的干净目录，例如：
- `~/ResearchPilot-MyPhD`

其中不会带当前测试项目和 synthetic 数据，只包含模板结构。

## 初始化后建议

进入新目录后，先做这几件事：
1. 补 `13_Research_Memory/user-research-profile.md`
2. 把常用 protocol 原件放到 `14_Protocols/_raw/`
3. 为真实项目建立 `04_Projects/<project>/PROJECT.md`
4. 开始用：
   - `@daily-log-to-report`
   - `@experiment-planner`
   - `@meeting-note-to-action`

## 推荐的“彻底切换”方式

如果你不想让当前测试数据干扰正式使用，最稳妥的方式是：
- 保留当前开发仓库作为开发/测试环境
- 新建一个正式工作区，比如：
  - `~/ResearchPilot-Workspace`
- 在正式工作区中只保留真实项目和真实 protocol

这样以后：
- 当前目录继续用来迭代 skills 和模板
- 新目录专门用于真实科研工作

# CQN Skill Pack Index

CQN (Carlos's Quality eNgineering) Skill Pack — a two-layer skill set for
engineering research, built on top of the legacy `nature-skills` repository.

---

## Architecture

```
CQN Skill Pack
├── Daily Engineering Research Layer (high-frequency)
│   ├── cqn-experiment-planner
│   ├── cqn-lab-record
│   ├── cqn-data-analysis
│   ├── cqn-engineering-reviewer
│   ├── cqn-figure           (dual-mode: eng-report / high-impact)
│   ├── cqn-report-writing
│   ├── cqn-paper2ppt
│   ├── cqn-paper-reader
│   └── cqn-paper-writing
│
└── High-impact Paper Layer (low-frequency)
    ├── cqn-high-impact-writing
    ├── cqn-high-impact-polishing
    ├── cqn-high-impact-reviewer
    ├── cqn-response
    ├── cqn-citation
    ├── cqn-data-availability
    └── cqn-journal-style
```

---

## Skill Trigger Matrix

| When you want to... | Use this skill |
|---|---|
| 设计实验 | `cqn-experiment-planner` |
| 记录实验 | `cqn-lab-record` |
| 分析波形/FFT/THD/ENOB | `cqn-data-analysis` |
| 工程审查/PCB/采样链路/FPGA | `cqn-engineering-reviewer` |
| 画工程图/论文图 | `cqn-figure` |
| 写组会/阶段/开题报告 | `cqn-report-writing` |
| 做组会/答辩 PPT | `cqn-paper2ppt` |
| 读工程论文 | `cqn-paper-reader` |
| 写工程论文 | `cqn-paper-writing` |
| 高水平论文写作 | `cqn-high-impact-writing` |
| 高水平论文润色 | `cqn-high-impact-polishing` |
| 高水平论文预审 | `cqn-high-impact-reviewer` |
| 审稿回复 | `cqn-response` |
| 引用管理 | `cqn-citation` |
| 数据可用性声明 | `cqn-data-availability` |
| 期刊格式对齐 | `cqn-journal-style` |

---

## High-Frequency Recommended Workflow

```
cqn-experiment-planner
  → cqn-lab-record
  → cqn-data-analysis
  → cqn-figure
  → cqn-report-writing
  → cqn-paper2ppt
```

This is the typical weekly engineering research cycle: plan → do → analyse →
visualise → report → present.

---

## Paper Workflow

```
cqn-paper-reader
  → cqn-paper-writing
  → cqn-high-impact-writing / cqn-high-impact-polishing / cqn-high-impact-reviewer
  → cqn-response / cqn-citation / cqn-data-availability / cqn-journal-style
```

This is the publication workflow: read → draft → upgrade/submit → respond.

---

## Safety Principles

1. **No fabricated data.** Every `[CF]` claim must be traceable to evidence.
2. **No disguised unknowns.** Missing data is labelled `Unknown` / `Not specified`,
   not wrapped in plausible-sounding prose.
3. **No fake references.** Without search tools, `cqn-citation` outputs
   requirements only — never plausible-looking fabricated citations.
4. **High-impact does not mean fewer rules.** `cqn-high-impact-*` skills
   must preserve evidence tags, limitations, and engineering accuracy.
5. **Legacy `nature-*` skills are read-only references.** They are not modified,
   not migrated, not archived. CQN skills coexist with and reference them
   without altering them.

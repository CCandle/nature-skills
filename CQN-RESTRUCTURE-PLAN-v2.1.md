# CQN Skill Pack 重构计划 v2.1

> 基于 v2.0 的修正版本，明确执行边界和 _shared 共存策略
> 面向 Phase 1~3 本轮执行，Phase 4~6 推迟到后续轮次
> 生成日期：2026-06-09

---

## 0. v2.1 修正项

### 0.1 `_shared` 共存策略（修正 v2.0）

**禁止表述"两个 _shared 共存"**。

正确策略：
- 保留现有 `skills/_shared/` 原文件**不动**
- 只向现有 `skills/_shared/` 中**追加** cqn 文件和 cqn 子目录
- 不删除、不移动、不覆盖原 _shared 文件

最终结构：
```
skills/_shared/
├── README.md                         # 原文件，保留
├── core/
│   ├── ethics.md                     # 原文件，保留
│   ├── paper-type-taxonomy.md        # 原文件，保留
│   ├── reader-workflow.md            # 原文件，保留
│   ├── terminology-ledger.md         # 原文件，保留
│   ├── cqn-research-principles.md    # 新增
│   ├── cqn-engineering-claim-rules.md
│   ├── cqn-source-grounding.md
│   ├── cqn-no-hallucination-policy.md
│   └── cqn-agent-working-rules.md
├── measurement/                      # 新增子目录
├── templates/                        # 新增子目录
├── terminology/                      # 新增子目录
└── journal-formats/                  # 原目录，保留
```

### 0.2 Phase 数量（修正 v2.0）

当前包含 Phase 0~6，共 **7 个 Phase**。
- v2.0 误写为"6 个 Phase"
- v2.1 修正：Phase 0, 1, 2, 3, 4, 5, 6A, 6B = **8 个子阶段**

### 0.3 High-impact layer 拆分

Phase 6 拆为两个子阶段，不要一次性完成：

| 子阶段 | 包含 skill | 执行轮次 |
|---|---|---|
| Phase 6A | cqn-high-impact-writing, cqn-high-impact-polishing, cqn-high-impact-reviewer | 后续轮次 |
| Phase 6B | cqn-response, cqn-citation, cqn-data-availability, cqn-journal-style | 后续轮次 |

### 0.4 Citation 策略

**禁止默认找 Nature 系列引用**。

正确策略：
- 根据 claim 和目标期刊选择引用来源
- 工程方向优先：IEEE、IET、Elsevier/Springer 工程期刊、权威教材、TI/ADI/ST/Xilinx/AMD 应用笔记或 datasheet
- 只有目标期刊或论证需要时，再补 Nature/Science 系列

### 0.5 ENOB 验收标准

ENOB ≥ 10.5 bit **只能作为示例 suggested threshold**，不得作为默认结论。

规则：
- 用户给了系统需求 → 以用户需求为 pass/fail 标准
- 给了 datasheet target → 以 datasheet typical/minimum ENOB 为参考
- 都没给 → 只能提出 Suggested threshold，标注为 `[RH]`

### 0.6 cqn-figure 后端策略

- Python backend 是默认且必须支持
- R backend 可继承保留，为 optional
- R backend 不应阻塞 acceptance tests

### 0.7 本轮执行边界

| Phase | 内容 | 本轮执行 |
|---|---|---|
| Phase 0 | Read-only Repo Audit | ✅ 已完成 |
| Phase 1 | Branch + Planning + Validation Scaffold | ✅ 本轮执行 |
| Phase 2 | Shared Foundation | ✅ 本轮执行 |
| Phase 3 | Daily Engineering Core Skills (4个) | ✅ 本轮执行 |
| Phase 4 | Engineering Figure and Report Layer | ❌ 不执行 |
| Phase 5 | Paper Reader and Paper Writing | ❌ 不执行 |
| Phase 6A | High-impact Adapter Layer | ❌ 不执行 |
| Phase 6B | Submission Support Tools | ❌ 不执行 |

---

## 1. Phase 1: Branch + Planning + Validation Scaffold

### 1.1 已创建
- 分支 `refactor/cqn-skill-pack`（基于 main）

### 1.2 新增脚本

#### `scripts/check-cqn-skills.sh`
- 遍历 `skills/cqn-*` 检查：SKILL.md / manifest.yaml / README.md / (static/ 或 references/)
- 不检查 `nature-*`
- 没有 `cqn-*` 时 warning 但不错误退出
- 发现结构缺失返回非 0

#### `scripts/update-cqn-skills.sh`
- 同步 `skills/cqn-*` 到 `$HERMES_SKILLS_DIR`
- 不同步 `nature-*`
- 不删除远端非 cqn skill
- 未设置目标路径时提示用户设置

### 1.3 commit
```
feat(scripts): add cqn skill validation and sync scripts
```

---

## 2. Phase 2: Shared Foundation

向现有 `skills/_shared/` 追加 13 个文件：

### core/ (5 new)
- `cqn-research-principles.md` — 8 条核心原则
- `cqn-engineering-claim-rules.md` — [CF]/[RH]/[UG] 三类证据
- `cqn-source-grounding.md` — 来源锚定规则
- `cqn-no-hallucination-policy.md` — 不编造红线
- `cqn-agent-working-rules.md` — AI agent 约束

### measurement/ (4 new)
- `cqn-measurement-rules.md` — 测量数据声明要求
- `cqn-fft-rules.md` — FFT 分析强制声明的参数
- `cqn-calibration-rules.md` — 校准规则
- `cqn-uncertainty-rules.md` — 不确定度报告

### templates/ (3 new)
- `cqn-hardware-ledger-template.md`
- `cqn-project-context-template.md`
- `cqn-lab-record-template.md`

### terminology/ (1 new)
- `cqn-terminology-ledger.md` — 工程术语一致性规则

commits 拆为：
```
feat(_shared): add cqn core research foundation
feat(_shared): add cqn measurement and analysis rules
feat(_shared): add cqn templates and terminology ledger
```

---

## 3. Phase 3: Daily Engineering Core Skills

新增 4 个完整 skill，每个含 SKILL.md / manifest.yaml / README.md / static/core/ / references/：

### 3.1 `cqn-experiment-planner`
- 用途：设计电力电子 / ADC / FPGA / 热模型 / 嵌入式 AI 实验
- 输出：Objective → Hypothesis → Variables → Setup → Safety → Expected → Pass/Fail → Minimal Next Test
- 规则：不得脑补硬件参数，Unknown 必须列出，Pass/Fail 未给出时只能提 Suggested threshold `[RH]`

### 3.2 `cqn-lab-record`
- 用途：实验过程格式化记录
- 输出：Metadata → Setup → Observation → Diagnosis ([CF]/[RH]/[UG]) → Decision (Keep/Change/Rollback)
- 规则：零散文本结构化，猜测不能写成事实，波形结论挂接数据文件

### 3.3 `cqn-data-analysis`
- 用途：波形/FFT/THD/ENOB/校准/控制响应/AI 指标分析
- 输出：Input Data → Preprocessing → Time-domain → Frequency-domain → Metrics → Limits
- 规则：Python 默认，分析参数必须写入报告，不得只输出图

### 3.4 `cqn-engineering-reviewer`
- 用途：PCB/采样链路/FPGA/固件/DMA/AI 部署审查
- 输出：Verdict → Critical Issues → Major Issues → Minor Issues → Risk Register
- 关注：ADC 链路、Vref/GND、电源完整性、抗混叠滤波、FPGA 时钟域、DMA 吞吐、AI 部署

---

## 4. Phase 4~6（本轮不执行）

| 内容 | 推迟原因 |
|---|---|
| cqn-figure | 需要 Phase 3 skill 稳定后再基于工程数据需求设计 |
| cqn-report-writing | 需要 lab-record + data-analysis 产生的数据格式 |
| cqn-paper2ppt | 同上 |
| cqn-paper-reader | 同上 |
| cqn-paper-writing | 同上 |
| cqn-high-impact-* | 需要先确认工程层质量和完整性 |
| legacy archive | 不在本轮范围内 |

---

## 5. 生命周期策略（重申）

- Phase 1~3 期间：原 `nature-*` **原位不动**
- Phase 4~6 期间：原 `nature-*` **原位不动**
- 全部 cqn-* 稳定后：再评估每个 nature-* 的去向（保留/整合/归档）
- 不在本计划中提前决定 legacy 处理

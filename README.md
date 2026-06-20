# shall-we

A [Claude Code](https://claude.com/claude-code) skill that helps you decide whether an idea is worth building.

It asks focused questions one at a time — covering business value, market demand, complexity, and risk — then delivers an honest verdict: **yes / no / later**, with reasoning and what would need to change for a "yes."

## Installation

```
/plugin marketplace add Tacsiazuma/shall-we
/plugin install shall-we@shall-we
```

## Usage

```
/shall-we
```

Then describe your idea. The skill takes it from there.

## How it works

1. Restates your idea to confirm it understood correctly
2. Asks one question at a time — only what it needs to know
3. Stops early if a deal-breaker surfaces
4. Delivers a structured verdict:

```
## Verdict: YES / NO / LATER

**Why:** ...

**Strengths:**
- ...

**Concerns:**
- ...

**What would need to be true for a YES:**
- ...
```

## Structure

```
.
├── .claude-plugin/
│   └── marketplace.json
└── plugins/
    └── shall-we/
        ├── .claude-plugin/
        │   └── plugin.json
        └── skills/
            └── shall-we/
                └── SKILL.md
```

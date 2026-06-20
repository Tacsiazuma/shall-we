```
███████╗ ██╗  ██╗  █████╗  ██╗      ██╗         ██╗    ██╗ ███████╗ ██████╗ 
██╔════╝ ██║  ██║ ██╔══██╗ ██║      ██║         ██║    ██║ ██╔════╝ ╚════██╗
███████╗ ███████║ ███████║ ██║      ██║         ██║ █╗ ██║ █████╗       ██╔╝
╚════██║ ██╔══██║ ██╔══██║ ██║      ██║         ██║███╗██║ ██╔══╝      ╚═╝  
███████║ ██║  ██║ ██║  ██║ ███████╗ ███████╗    ╚███╔███╔╝ ███████╗    ██╗  
╚══════╝ ╚═╝  ╚═╝ ╚═╝  ╚═╝ ╚══════╝ ╚══════╝     ╚══╝╚══╝  ╚══════╝    ╚═╝
```

A [Claude Code](https://claude.com/claude-code) skill that helps you decide whether an idea is worth building — before you build it.

---

## The problem

We're in an AI hype cycle where everyone wants to build everything, just because they can. Features get shipped because they're technically possible. Products get started because the demo looked good. Nobody stops to ask the uncomfortable question.

**Shall we, though?**

This skill is the uncomfortable question. It was inspired by two characters who've been fighting this battle from different angles:

- The **caveman** ([grugbrain.dev](https://grugbrain.dev)) — who's been saying *no* to complexity since before it was cool, and whose club has saved more codebases than any design pattern
- The **ponytail** — the architect who's seen enough hype cycles to know that most ideas aren't bad, they're just badly timed, badly scoped, or solving the wrong problem

`shall-we` thinks like both of them, but operates one level higher: at the PM layer, where the decision to build (or not) is still cheap. It asks the questions that should happen before any code is written, any ticket is created, any design doc is started.

---

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

The four lenses it uses: **business value**, **market demand**, **complexity**, and **risk**.

---

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

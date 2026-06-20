#!/usr/bin/env bash
set -euo pipefail

REPO="Tacsiazuma/shall-we"
SKILL="shall-we"
INSTALL_DIR="${AGENT_SKILLS_DIR:-$HOME/.agent-skills}/$SKILL"
RAW="https://raw.githubusercontent.com/$REPO/main/skills/$SKILL/SKILL.md"

echo "Installing shall-we skill..."

mkdir -p "$INSTALL_DIR"
curl -fsSL "$RAW" -o "$INSTALL_DIR/SKILL.md"

echo "Installed to: $INSTALL_DIR"
echo ""

# Claude Code
if command -v claude &>/dev/null; then
  echo "Claude Code detected. Run these commands inside Claude Code:"
  echo ""
  echo "  /plugin marketplace add $REPO"
  echo "  /plugin install $SKILL@$SKILL"
  echo ""
fi

# Cursor
if [ -d "$HOME/.cursor" ] || [ -d "$HOME/Library/Application Support/Cursor" ]; then
  echo "Cursor detected. Add this path as a skill source in Cursor settings:"
  echo ""
  echo "  $INSTALL_DIR"
  echo ""
fi

# Generic fallback
echo "For any agentskills.io-compatible agent, point it to:"
echo ""
echo "  $INSTALL_DIR"
echo ""
echo "Full skill list: https://agentskills.io/clients"

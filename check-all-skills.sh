#!/bin/bash

# Wrapper script to check all skills in ./skills/
# Runs the health check and outputs results to repo root

SKILLS_DIR="./skills"
STARTUP_CHECK="$SKILLS_DIR/system-prompt-sync/startup-check.sh"

if [ ! -f "$STARTUP_CHECK" ]; then
  echo "Error: startup-check.sh not found at $STARTUP_CHECK"
  exit 1
fi

bash "$STARTUP_CHECK"

# Display results from repo root
if [ -f "skill-health.json" ]; then
  echo ""
  echo "=== Skill Health Report ==="
  cat skill-health.json | python3 -m json.tool 2>/dev/null || cat skill-health.json
fi

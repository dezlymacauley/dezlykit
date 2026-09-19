#!/usr/bin/env bash
#MISE description="🚥 Check the status of the Ollama CLI and daemon"
#MISE quiet=true

#______________________________________________________________________________

# Check if the Ollama CLI is installed
if command -v ollama &>/dev/null; then
    printf "\n✅ The Ollama CLI is installed\n\n"
else
    printf "\n❌ The Ollama CLI is not installed\n\n"
    exit 1
fi

#______________________________________________________________________________

# Stop the script if systemctl is not available
if ! command -v systemctl &>/dev/null; then
    printf "\n❌ systemctl is not available on this system\n\n"
    exit 1
fi

#______________________________________________________________________________

# Check if the Ollama daemon is active
if systemctl is-active --quiet ollama; then
    printf "✅ The Ollama daemon is active\n\n"
else
    printf "⬛ The Ollama daemon is inactive\n\n"
fi

#______________________________________________________________________________

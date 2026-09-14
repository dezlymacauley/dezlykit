#!/usr/bin/env bash
#MISE description="🔁 Toggle the state of the Ollama daemon"
#MISE quiet=true

#______________________________________________________________________________

# Check if the Ollama CLI is installed
if ! command -v ollama &>/dev/null; then
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

# Toggle the state of the Ollama daemon
if systemctl is-active --quiet ollama; then
    sudo systemctl stop ollama.service
    printf "\n⬛ Ollama daemon deactivated\n\n"
else
    sudo systemctl start ollama.service
    printf "\n✅ Ollama daemon activated\n\n"
fi

#______________________________________________________________________________

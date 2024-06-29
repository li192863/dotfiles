#!/bin/bash

# Script Name: set-tmux.sh
# Description: Start a session and enter it.
# Usage: source ~/scripts/set-tmux.sh # .rc files
# Author: Chestnut

# Start a session and enter it automatically
if [ -z "$TMUX" ]; then
  # Start a session, enter in it, and replace process to tmux.
  exec tmux new-session -A -s main
fi

#!bin/bash

# Script Name: set-tmux.sh
# Description: Start a session, enter it or not.
# Usage: source ~/scripts/set-tmux.sh [auto-enter] # .rc files
# Author: Chestnut

if [ ! -z "$1" ] && [ "$1" = "auto-enter" ]; then
  # Start a session and enter it automatically
  if [ -z "$TMUX" ]; then
    # Start a session, enter in it, and replace process to tmux.
    exec tmux new-session -A -s main
  fi
else
  # Start a session and do NOT enter it.
  session_count=$(tmux ls 2>/dev/null | wc -l)
  if [ "$session_count" -eq 0 ]; then
    tmux new-session -d -s main
  fi
  unset session_count
fi

# Set alias
alias ws='tmux new-session -A -s main'

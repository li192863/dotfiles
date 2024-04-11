#!/bin/bash

# Script Name: start-tmux.sh
# Description: Enter tmux with named 'workspace' session in .rc files.
# Author: Chestnut

# Check if 'main' session exists
if [ -z "$TMUX" ]; then
    exec tmux new-session -A -s main
fi


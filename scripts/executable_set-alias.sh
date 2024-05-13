#!/bin/bash

# Script Name: set-alias.sh
# Description: Set alias.
# Usage: source ~/scripts/set-alias.sh # .rc files
# Author: Chestnut

# apt
alias au='sudo apt-get update'
alias ai='sudo apt-get update && sudo apt-get install'

# cat
alias c='cat'

# conda
alias ca='conda activate'

# echo
alias e='echo'

# python
alias p='ipython'

# tail
alias tf='tail -f'

# nvim
alias v='nvim'

# workspace
alias ws='tmux attach-session -t main'

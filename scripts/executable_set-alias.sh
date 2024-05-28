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
alias ce='conda env list'
alias ci='conda install'

# echo
alias e='echo'

# node
alias ni='npm install'
alias nig='npm install -g'

# python
alias p='ipython'
alias pi='pip install'

# tail
alias tf='tail -f'

# nvim
alias v='nvim'

# workspace
alias ws='tmux new-session -A -s main'

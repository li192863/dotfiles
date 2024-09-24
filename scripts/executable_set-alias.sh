#!/bin/bash

# Script Name: set-alias.sh
# Description: Set alias.
# Usage: source ~/scripts/set-alias.sh # .rc files
# Author: Chestnut

# apt
alias au='sudo apt-get update'
alias ai='sudo apt-get update && sudo apt-get install'

# clear
alias c='clear'

# conda
alias ca='conda activate'
alias ce='conda deactivate' # conda exit
alias cel='conda env list'
alias ci='conda install'

# echo
alias e='echo'

# node
alias nl='npm list'
alias ni='npm install'

# python, ipython
if command -v ipython >/dev/null 2>&1; then
  alias p='ipython'
elif command -v python3 >/dev/null 2>&1; then
  alias p='python3'
fi

# python
alias pa='python3 -m venv venv && . venv/bin/activate'
alias pe='deactivate' # python-venv exit
alias pl='pip3 list'
alias pi='pip3 install'

# tar
alias tc='tar czf'
alias tx='tar xf'

# tail
alias t='tail'

# nvim, vim, vi
if command -v nvim >/dev/null 2>&1; then
  alias v='nvim'
elif command -v vim >/dev/null 2>&1; then
  alias v='vim'
else
  alias v='vi'
fi

# workspace
alias ws='tmux new-session -A -s main'

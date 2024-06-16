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
alias ce='conda deactivate' # conda exit
alias cel='conda env list'
alias ci='conda install'

# echo
alias e='echo'

# node
alias nl='npm list'
alias ni='npm install'

# ipython
alias p='python'

# python
alias pa='python -m venv venv && . venv/bin/activate'
alias pe='deactivate' # python-venv exit
alias pl='pip list'
alias pi='pip install'

# tar
alias tc='tar czf'
alias tx='tar xf'

# tail
alias t='tail'

# nvim
alias v='nvim'

# workspace
alias ws='tmux new-session -A -s main'

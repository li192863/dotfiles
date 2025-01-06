#!/bin/bash

# Script Name: set-env.sh
# Description: Set env.
# Usage: source ~/scripts/set-env.sh
# Author: Chestnut

# EDITOR
if command -v nvim >/dev/null 2>&1; then
  export EDITOR='nvim'
elif command -v vim >/dev/null 2>&1; then
  export EDITOR='vim'
else
  export EDITOR='vi'
fi

# ~/.local/bin
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
  export PATH="$HOME/.local/bin:$PATH"
fi

# CUDA https://developer.nvidia.com/cuda-toolkit
if [ -z "$CUDA_HOME" ]; then
  export CUDA_HOME=$(find /usr/local -maxdepth 1 -type d -name '*cuda*' | head -n 1)
  if [ -n "$CUDA_HOME" ]; then
    export PATH=${CUDA_HOME}/bin:${PATH}
    export LD_LIBRARY_PATH=${CUDA_HOME}/lib64:${LD_LIBRARY_PATH}
  fi
fi

# Maven
if [ -z "$M2_HOME" ]; then
  export M2_HOME=$(find /opt -maxdepth 1 -type d -name '*maven*' | head -n 1)
  if [ -n "$M2_HOME" ]; then
    export PATH=${M2_HOME}/bin:${PATH}
  fi
fi

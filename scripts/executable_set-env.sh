#!/bin/bash

# Script Name: set-env.sh
# Description: Set env.
# Usage: source ~/scripts/set-env.sh # .profile files
# Author: Chestnut

# EDITOR
if command -v nvim >/dev/null 2>&1; then
  export EDITOR='nvim'
elif command -v vim >/dev/null 2>&1; then
  export EDITOR='vim'
fi

# CUDA https://developer.nvidia.com/cuda-toolkit
export CUDA_HOME=$(find /usr/local -maxdepth 1 -type d -name '*cuda*' | head -n 1)
if ! [ -z "$CUDA_HOME" ]; then
  export PATH=${CUDA_HOME}/bin:${PATH}
  export LD_LIBRARY_PATH=${CUDA_HOME}/lib64:${LD_LIBRARY_PATH}
fi

# Maven
export MAVEN_HOME=$(find /home/chestnut/apps -maxdepth 1 -type d -name '*maven*' | head -n 1)
if ! [ -z "$MAVEN_HOME" ]; then
  export PATH=${MAVEN_HOME}/bin:${PATH}
fi

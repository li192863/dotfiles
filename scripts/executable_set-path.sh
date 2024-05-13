#!/bin/bash

# Script Name: set-path.sh
# Description: Set path.
# Usage: source ~/scripts/set-path.sh # .profile files
# Author: Chestnut

# CUDA https://developer.nvidia.com/cuda-toolkit
CUDA_HOME='/usr/local/cuda-12.4'
export PATH=${CUDA_HOME}/bin:${PATH}
export LD_LIBRARY_PATH=${CUDA_HOME}/lib64:${LD_LIBRARY_PATH}

# Maven
MAVEN_HOME='/home/chestnut/apps/apache-maven-3.9.6'
export PATH=${MAVEN_HOME}/bin:${PATH}

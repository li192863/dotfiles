#!/bin/bash

# Script Name: set-path.sh
# Description: Set path.
# Usage: source ~/scripts/set-path.sh # .profile files
# Author: Chestnut

# Maven
MAVEN_HOME='/home/chestnut/apps/apache-maven-3.9.6'
export PATH=${MAVEN_HOME}/bin:${PATH}

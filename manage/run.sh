#!/bin/bash
source "${BASH_SOURCE%/*}/export_variables.sh"
#Build
cd $projectName
sam build

#Run
sam local start-api
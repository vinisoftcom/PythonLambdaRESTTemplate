#!/bin/bash
source "${BASH_SOURCE%/*}/export_variables.sh"
#Destroy stack
aws cloudformation delete-stack --stack-name $projectName --region $region

#!/bin/bash
source "${BASH_SOURCE%/*}/export_variables.sh"
#List
aws cloudformation describe-stacks --stack-name $projectName --region $region --query "Stacks[].Outputs"

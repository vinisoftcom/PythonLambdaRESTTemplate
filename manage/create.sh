#!/bin/bash
source "${BASH_SOURCE%/*}/export_variables.sh"

#Create
aws s3 mb s3://$projectName --region $region
sam init --runtime python3.7 -n $projectName

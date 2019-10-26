#!/bin/bash
source "${BASH_SOURCE%/*}/export_variables.sh"
#Build
cd $projectName
sam build

#Package
sam package --output-template packaged.yaml --s3-bucket $projectName

#Deploy
sam deploy --template-file packaged.yaml --region $region --capabilities CAPABILITY_IAM --stack-name $projectName

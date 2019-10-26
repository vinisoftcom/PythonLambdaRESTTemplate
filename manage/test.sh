#!/bin/bash
source "${BASH_SOURCE%/*}/export_variables.sh"
#Test
cd $projectName
pip3 install pytest pytest-mock --user
python3 -m pytest tests/ -v
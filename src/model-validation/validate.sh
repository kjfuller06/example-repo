#!/bin/bash
echo 'Running validation...'

# Path to config file
CONFIG_FILE="config/config.yaml" # relative path is less than ideal here but I don't know an alternative
ROOT_PATH=$(pwd)

# Path to the python script (assumes it's named validate.py and located in root_path)
PYTHON3="$ROOT_PATH/src/model-validation/validate.py"
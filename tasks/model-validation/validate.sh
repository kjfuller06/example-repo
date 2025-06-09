#!/bin/bash
echo 'Running validation...'

# Path to config file
CONFIG_FILE="config/config.yaml" # relative path is less than ideal here but I don't know an alternative

# Extract root_path from YAML
ROOT_PATH=$(yq --raw-output '.paths.root_path' "$CONFIG_FILE")

# Path to the python script (assumes it's named validate.py and located in root_path)
PYTHON3="$ROOT_PATH/tasks/model-validation/validate.py"
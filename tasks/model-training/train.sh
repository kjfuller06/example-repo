#!/bin/bash
echo 'Training model...'

# Path to config file
CONFIG_FILE="config/config.yaml" # relative path is less than ideal here but I don't know an alternative

# Extract root_path from YAML
ROOT_PATH=$(yq --raw-output '.paths.root_path' "$CONFIG_FILE")

# Path to the R script (assumes it's named train.R and located in root_path)
R_SCRIPT="$ROOT_PATH/tasks/model-training/train.R"
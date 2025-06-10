#!/bin/bash
echo 'Training model...'

# Path to config file
ROOT_PATH=$(pwd)
CONFIG_FILE="$ROOT_PATH/config/config.yaml"

# Path to the R script (assumes it's named train.R and located in root_path)
R_SCRIPT="$ROOT_PATH/src/model-training/train.R"
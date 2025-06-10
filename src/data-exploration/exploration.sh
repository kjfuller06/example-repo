#!/bin/bash
# Load a config value from YAML using yq
RAW_DATA=$(yq --raw-output '.data.raw' config/config.yaml)
ROOT_PATH=$(pwd)

echo "Raw data path: $RAW_DATA"
head "$RAW_DATA"
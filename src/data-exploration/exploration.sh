#!/bin/bash
# Load a config value from YAML using yq
RAW_DATA=$(yq --raw-output '.data.raw' config/config.yaml)
ROOT_PATH=$(pwd)
DATA_MODE="${DATA_MODE:-real}"

# Extract path using yq
if [[ "$DATA_MODE" == "real" ]]; then
  DATA_PATH=$RAW_DATA
else
  DATA_PATH="$ROOT_PATH/test/sample.csv"
fi

echo "Running with DATA_MODE: $DATA_MODE"
echo "Raw data path: $DATA_PATH"
head "$DATA_PATH"
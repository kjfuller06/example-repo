#!/bin/bash
# Load a config value from YAML using yq
RAW_DATA=$(yq '.data.raw' config/config.yaml)
echo "Raw data path: $RAW"
head "$RAW_DATA"
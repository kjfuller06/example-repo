import yaml
from pathlib import Path
import pandas as pd
import yaml
import os

# Load config.yaml using pathlib and PyYAML
config_path = Path(__file__).resolve().parents[2] / "config" / "config.yaml"
config = yaml.safe_load(config_path.read_text())
config["paths"]["root_path"] = str(config_path.parents[2])
data_mode = os.getenv("DATA_MODE", "real")

if data_mode == "real":
    data_path = config["data"]["real"]
else:
    data_path = config["data"]["test"]

print("Running with DATA_MODE =", data_mode)
print("Raw data path:", data_path)

# Load the data
df = pd.read_csv(data_path)

# Display summary
print(df.describe())

import yaml
from pathlib import Path
import pandas as pd
import yaml

# Load config.yaml using pathlib and PyYAML
config_path = Path(__file__).resolve().parents[2] / "config" / "config.yaml"
config = yaml.safe_load(config_path.read_text())
config["paths"]["root_path"] = str(config_path.parents[2])

print("Raw data path:", config["data"]["raw"])

# Load the data
df = pd.read_csv(config["data"]["raw"])

# Display summary
print(df.describe())

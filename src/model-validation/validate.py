import pandas as pd
from sklearn.metrics import mean_squared_error
from pathlib import Path
import yaml
import os

config_path = Path(__file__).resolve().parents[2] / "config" / "config.yaml"
config = yaml.safe_load(config_path.read_text())
config["paths"]["root_path"] = str(config_path.parents[2])
data_mode = os.getenv("DATA_MODE", "real")

if data_mode == "real":
    data_path = config["data"]["raw"]
else:
    data_path = Path(__file__).resolve().parents[2] / "test" / "sample.csv"

print("Running with DATA_MODE =", data_mode)
print("Raw data path:", data_path)

df = pd.read_csv(data_path)
preds = df['x'] * 2
print('MSE:', mean_squared_error(df['y'], preds))

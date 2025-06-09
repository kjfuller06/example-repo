import pandas as pd
from sklearn.metrics import mean_squared_error
from pathlib import Path
import yaml

config_path = Path(__file__).resolve().parents[2] / "config" / "config.yaml"
config = yaml.safe_load(config_path.read_text())

print("Raw data path:", config["data"]["raw"])

df = pd.read_csv(config["data"]["raw"])
preds = df['x'] * 2
print('MSE:', mean_squared_error(df['y'], preds))

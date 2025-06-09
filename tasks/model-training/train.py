from sklearn.linear_model import LinearRegression
import pandas as pd

config_path = Path(__file__).resolve().parents[2] / "config" / "config.yaml"
config = yaml.safe_load(config_path.read_text())

print("Raw data path:", config["data"]["raw"])

df = pd.read_csv(config["data"]["raw"])
model = LinearRegression().fit(df[['x']], df['y'])
print('Trained model coef:', model.coef_)

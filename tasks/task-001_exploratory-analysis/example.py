import pandas as pd
import yaml
import os

with open(os.path.join(os.path.dirname(__file__), '../../config.yaml'), 'r') as f:
    config = yaml.safe_load(f)

# Mimic 'here' in Python
base_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '../../'))
data_path = os.path.join(base_dir, config['data']['raw'])
df = pd.read_csv(data_path)
print(df.describe())

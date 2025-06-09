import pandas as pd
from sklearn.metrics import mean_squared_error

df = pd.read_csv('../../data/sample.csv')
preds = df['x'] * 2
print('MSE:', mean_squared_error(df['y'], preds)))
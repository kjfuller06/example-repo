from sklearn.linear_model import LinearRegression
import pandas as pd

df = pd.read_csv('../../data/sample.csv')
model = LinearRegression().fit(df[['x']], df['y'])
print('Trained model coef:', model.coef_)
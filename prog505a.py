import pandas as pd

df = pd.read_csv("data/prog505a.txt", delim_whitespace=True,
                 names=['first', 'last', 'books'])
df['books'] = df['books'].astype(int)

for index, row in df.iterrows():
  print(row['first'], row['last'], row['books'])

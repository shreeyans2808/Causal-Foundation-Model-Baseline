import pandas as pd

df = pd.read_csv("data/sergio_8000.csv")
df = df[df["split"] == "test"]

df.to_csv("data/sergio_8000_test.csv", index=False)
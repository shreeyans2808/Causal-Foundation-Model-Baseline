import pandas as pd
from data.utils import run_fci
import numpy as np


csv_path = "/Users/shreeyansarora/Downloads/SEA_Reproduce_Github/Causal-Foundation-Model-Baseline/data/data.csv"

df = pd.read_csv(csv_path)
data = df.values 
print("Data shape:", data.shape)

predicted_graph = run_fci(data)

np.save("predicted_graph.npy", predicted_graph)
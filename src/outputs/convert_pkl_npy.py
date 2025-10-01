import pickle
import numpy as np

# Paths
pkl_file = "src/outputs/results_fci_sergio_reproduce.pkl"  # your pickle file
npy_file = "src/outputs/results_fci_sergio_reproduce.npy"  # output npy file

# Load the pickle
with open(pkl_file, "rb") as f:
    data = pickle.load(f)

# Convert to numpy array if not already
# If it's a dict or list of arrays, you may need to handle it differently
# Example if it's a list of arrays:
if isinstance(data, dict):
    np.save(npy_file, data)  # saves dict as npy (numpy can store objects)
else:
    data_array = np.array(data)
    np.save(npy_file, data_array)

print(f"Saved {npy_file}")

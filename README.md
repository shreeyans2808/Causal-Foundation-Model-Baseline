# Trials By Me

First I tried using the baseline model in `inference.sh`, changing the tag to baseline, and checkpoint path to FCI, and then i went to the baseline config yaml file (as it doesnt require any training to run) to change the data path to the one given by you, followed by changing the `inference.py` from pkl to npy.
But the file always showed error related to file["type"], after which I looked into the other data files where the csv file format was fp_data, fp_graph, fp_regime and type, where i added the fp_data as the npy file of the csv file (data.csv), left rest empty and the type as test.
showed the error that the graph was not present.

Then I read the code in inference.py, which led me to the code in data/dataset.py and samplers.py related to baselinedataset and baselinedatamodule, where I figured out that the predictions could be extracted on the dataset directly by using the fci.predict function, written in `get_run_alg()`.

The final npy file is `predicted_graph.npy`, and the code I used to generae is in `src/try.py`.

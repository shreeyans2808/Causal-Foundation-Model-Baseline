# Trials By Me

I used the graph.npy and nodes.npy files in the hepar2 folder to create the CSV file, which was of a similar format to that required by the original pipeline, after which a predictions file was created in pkl, but later I changed the config to create a npy file, also I had to make changes in config regarding the number of workers to 0, and create a split in the dataset for test. Changes were made in config according to the required code, and also in `data.py` and `dataset.py` to incorporate te format of the npy.

Another issue I faced was to run the code over dataset.py due to difference in oritentation of file path structure in mac and windows, because of which I had to make the code dynamic and acceptable to all. 
After the creation of the predictions.npy file, I used the `evaluate_predictions.py` code from the other repository, which also required changes in the format a little, and run the code to get the final json file of all metrics. I then used the original file and the new made json file and compared each value in it by the accuracy formula 
```
accuracy = 1- (original-new)/original
```
and most of them were same, majorly due to usiage of same dataset, and same pretrained model pth, and saved it as `evaluation_comparison.json`


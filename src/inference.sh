# main script for inference

######### inference params
CUDA=0

######### data params

# NOTE: name of YAML file and run save folder
# see ./config for more options
#TAG="aggregator_tf_fci"
<<<<<<< HEAD
TAG="aggregator_tf_gies"
TAG="baseline"  
=======
#TAG="aggregator_tf_fci_sergio"
#TAG="baseline"  # baseline never requires training
>>>>>>> 3e011a2 (Shreeyans changes)
CONFIG="config/${TAG}.yaml"

PATH_GIES="checkpoints/gies_synthetic/model_best_epoch=535_auprc=0.849.ckpt"
PATH_FCI="checkpoints/fci_synthetic/model_best_epoch=373_auprc=0.842.ckpt"
PATH_SERGIO="checkpoints/fci_sergio/model_best_epoch=341_auprc=0.646.ckpt"

echo $NAME

# set the appropriate --checkpoint_path variable
# that MATCHES with $TAG
python src/inference.py \
    --config_file $CONFIG \
    --run_name $TAG \
    --gpu $CUDA \
<<<<<<< HEAD
    --checkpoint_path $PATH_FCI
=======
    --data_file $DATA_FILE\
    --save_path $SAVE_PATH \
    --results_file $RESULTS_FILE \
    --checkpoint_path $PATH_GIES
>>>>>>> 3e011a2 (Shreeyans changes)


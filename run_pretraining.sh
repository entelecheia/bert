python3 run_pretraining.py \
    --input_file=gs://ekonbert-biz/pretrain_tfrecords_2/*.tfrecord \
    --output_dir=gs://ekonbert-biz/models/ \
    --do_train=True \
    --do_eval=True \
    --bert_config_file=config/base_config.json \
    --train_batch_size=64 \
    --max_seq_length=512 \
    --max_predictions_per_seq=20 \
    --num_train_steps=3000000 \
    --num_warmup_steps=10000 \
    --save_checkpoints_steps=25000 \
    --keep_checkpoint_max=30 \
    --learning_rate=5e-5 \
    --use_tpu=True \
    --num_tpu_cores=8 \
    --tpu_zone=europe-west4-a \
    --tpu_name=ekonbert-vm
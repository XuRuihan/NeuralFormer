BASE_DIR="."

python $BASE_DIR/main.py \
    --do_train \
    --device 0 \
    --dataset nasbench101 \
    --data_path "$BASE_DIR/data/nasbench101/all_nasbench101.pt" \
    --percent 4236 \
    --batch_size 128 \
    --graph_d_model 192 \
    --d_model 192 \
    --graph_d_ff 768 \
    --graph_n_head 6 \
    --depths 6 1 1 1 \
    --epochs 4000 \
    --model_ema \
    --lr 1e-4 \
    --lambda_diff 0.2 \
    --test_freq 5 \
    --save_path "output/nasbench101/neuralformer_1%_origin" \
    --embed_type "nape" \
    --use_extra_token \
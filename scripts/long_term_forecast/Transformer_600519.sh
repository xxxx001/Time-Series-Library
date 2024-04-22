export CUDA_VISIBLE_DEVICES=0

model_name=Transformer
#------------------------------------300397 600519--48p---5m-----------
#5m 48POINT
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/600519/ \
  --data_path 600519-5m.csv \
  --model_id 600519_96_48 \
  --model Informer \
  --data 600519 \
  --features MS \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 48 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 5 \
  --dec_in 5 \
  --c_out 1 \
  --freq t \
  --des 'Exp' \
  --itr 1
#1m 240point
#5m 48POINT
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/300397/ \
  --data_path 300397-5m.csv \
  --model_id 300397_96_48 \
  --model Informer \
  --data 300397 \
  --features MS \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 48 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 5 \
  --dec_in 5 \
  --c_out 1 \
  --freq t \
  --des 'Exp' \
  --itr 1
#------------------------------------240p----1m-----------------------------------------------  
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/600519/ \
  --data_path 600519-1m.csv \
  --model_id 600519_1m-720_240 \
  --model $model_name \
  --data 600519 \
  --features MS \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 240 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 5 \
  --dec_in 5 \
  --c_out 1 \
  --freq t \
  --des 'Exp' \
  --itr 1

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/300397/ \
  --data_path 300397-1m.csv \
  --model_id 300397_1m-720_240 \
  --model Transformer \
  --data 300397 \
  --features MS \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 240 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 5 \
  --dec_in 5 \
  --c_out 1 \
  --freq t \
  --des 'Exp' \
  --itr 1
  
#--------------------------------240 1week----5m---------------------------------------------  

#5m 48POINT
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/600519/ \
  --data_path 600519-5m.csv \
  --model_id 600519_5m-720_240 \
  --model Transformer \
  --data 600519 \
  --features MS \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 240 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 5 \
  --dec_in 5 \
  --c_out 1 \
  --freq t \
  --des 'Exp' \
  --itr 1
#1m 240point
#5m 48POINT
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/300397/ \
  --data_path 300397-5m.csv \
  --model_id 300397_5m-720_240 \
  --model Transformer \
  --data 300397 \
  --features MS \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 240 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 5 \
  --dec_in 5 \
  --c_out 1 \
  --freq t \
  --des 'Exp' \
  --itr 1
  
  
#--------------------------------240 3d----1m--------720-------------------------------------  

#5m 48POINT
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/600519/ \
  --data_path 600519-1m.csv \
  --model_id 600519_720_720 \
  --model Transformer \
  --data 600519 \
  --features MS \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 5 \
  --dec_in 5 \
  --c_out 1 \
  --freq t \
  --des 'Exp' \
  --itr 1
#1m 240point
#5m 48POINT
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/300397/ \
  --data_path 300397-1m.csv \
  --model_id 300397_720_720 \
  --model Transformer \
  --data 300397 \
  --features MS \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 5 \
  --dec_in 5 \
  --c_out 1 \
  --freq t \
  --des 'Exp' \
  --itr 1  
master_port=18765
split=forget10
model=phi
lr=2e-5
CUDA_VISIBLE_DEVICES=0,1,2,3 torchrun --nproc_per_node=4 --master_port=$master_port forget.py --config-name=forget.yaml split=${split} batch_size=8 gradient_accumulation_steps=4 model_family=${model} lr=${lr}

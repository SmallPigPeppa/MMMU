#export HF_HOME=/ppio_net0/huggingface
#CUDA_VISIBLE_DEVICES=0 python run_llava.py \
#--output_path example_outputs/llava1.5_7b_val.json \
#--model_path liuhaotian/llava-v1.5-7b \
#--config_path configs/llava1.5.yaml


#/ppio_net0/code/LLaVA/checkpoints/llava-v1.5-7b-lora-merged
export HF_HOME=/ppio_net0/huggingface
CUDA_VISIBLE_DEVICES=0 python run_llava.py \
--output_path example_outputsllava-v1.5-7b-lora-val.json \
--model_path /ppio_net0/code/LLaVA/checkpoints/llava-v1.5-7b-lora-merged \
--config_path configs/llava1.5.yaml
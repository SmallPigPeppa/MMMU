#!/bin/bash

# 设置环境变量
export HF_HOME="/ppio_net0/huggingface"
export CUDA_VISIBLE_DEVICES="0"

# 运行第一个任务 - OCR
echo "Running task OCR..."
python run_llava.py --output_path example_outputs/llava-v1.5c-7b-lora-task-ocr-val.json --model_path /ppio_net0/code/LLaVA/continual-ckpt/llava-c/llava-v1.5c-7b-lora-task-ocr-merged --config_path configs/llava1.5.yaml

# 运行第二个任务 - TextVQA
echo "Running task TextVQA..."
python run_llava.py --output_path example_outputs/llava-v1.5c-7b-lora-task-textvqa-val.json --model_path /ppio_net0/code/LLaVA/continual-ckpt/llava-c/llava-v1.5c-7b-lora-task-textvqa-merged --config_path configs/llava1.5.yaml

# 运行第三个任务 - GQA
echo "Running task GQA..."
python run_llava.py --output_path example_outputs/llava-v1.5c-7b-lora-task-gqa-val.json --model_path /ppio_net0/code/LLaVA/continual-ckpt/llava-c/llava-v1.5c-7b-lora-task-gqa-merged --config_path configs/llava1.5.yaml

# 运行第四个任务 - Others
echo "Running task Others..."
python run_llava.py --output_path example_outputs/llava-v1.5-7b-lora-task-others-val.json --model_path /ppio_net0/code/LLaVA/continual-ckpt/domain-merged/llava-v1.5-7b-lora-task-others-merged --config_path configs/llava1.5.yaml

# 运行第五个任务 - COCO
echo "Running task COCO..."
python run_llava.py --output_path example_outputs/llava-v1.5-7b-lora-task-coco-val.json --model_path /ppio_net0/code/LLaVA/continual-ckpt/domain-merged/llava-v1.5-7b-lora-task-coco-merged --config_path configs/llava1.5.yaml

# 运行第六个任务 - OCR_VQA
echo "Running task OCR_VQA..."
python run_llava.py --output_path example_outputs/llava-v1.5-7b-lora-task-ocr_vqa-val.json --model_path /ppio_net0/code/LLaVA/continual-ckpt/domain-merged/llava-v1.5-7b-lora-task-ocr_vqa-merged --config_path configs/llava1.5.yaml

# 运行第七个任务 - TextVQA_merged
echo "Running task TextVQA_merged..."
python run_llava.py --output_path example_outputs/llava-v1.5-7b-lora-task-textvqa-merged-val.json --model_path /ppio_net0/code/LLaVA/continual-ckpt/domain-merged/llava-v1.5-7b-lora-task-textvqa-merged --config_path configs/llava1.5.yaml

# 运行第八个任务 - GQA_merged
echo "Running task GQA_merged..."
python run_llava.py --output_path example_outputs/llava-v1.5-7b-lora-task-gqa-merged-val.json --model_path /ppio_net0/code/LLaVA/continual-ckpt/domain-merged/llava-v1.5-7b-lora-task-gqa-merged --config_path configs/llava1.5.yaml

# 运行第九个任务 - VG
echo "Running task VG..."
python run_llava.py --output_path example_outputs/llava-v1.5-7b-lora-task-vg-val.json --model_path /ppio_net0/code/LLaVA/continual-ckpt/domain-merged/llava-v1.5-7b-lora-task-vg-merged --config_path configs/llava1.5.yaml

echo "All tasks completed!"

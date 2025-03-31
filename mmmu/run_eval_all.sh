#!/bin/bash

# 定义需要依次运行的 JSON 文件列表
files=(
    "llava-v1.5-7b-lora-task-coco-val.json"
    "llava-v1.5c-7b-lora-task-ocr-val.json"
    "llava-v1.5c-7b-lora-task-textvqa-val.json"
    "llava-v1.5c-7b-lora-task-gqa-val.json"
)

# 遍历列表，依次运行每个文件
for file in "${files[@]}"; do
    echo "正在运行: example_outputs/$file"
    python main_eval_only.py --output_path "example_outputs/$file"
done



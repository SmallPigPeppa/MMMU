
#python main_eval_only.py --output_path example_outputs/llava1.5_7b_val.json
#python main_eval_only.py --output_path example_outputs/llava-v1.5-7b-lora-val.json
python main_eval_only.py --output_path example_outputs/llava-v1.5-7b-c-val.json

#python main_parse_and_eval.py --path ./example_outputs/llava1.5_7b_val.json --subject ALL # all subject
#
#python print_results.py --path ./example_outputs/llava1.5_7b_val.json

# OR you can specify one subject for the evaluation

#python main_parse_and_eval.py --path ./example_outputs/llava1.5_13b --subject elec # short name for Electronics. use --help for all short names

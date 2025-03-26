
python main_eval_only.py --output_path ./example_outputs/llava1.5_7b/total_val_output.json --answer_path example_outputs/llava1.5_7b_val.json

#python main_parse_and_eval.py --path ./example_outputs/llava1.5_7b_val.json --subject ALL # all subject
#
#python print_results.py --path ./example_outputs/llava1.5_7b_val.json

# OR you can specify one subject for the evaluation

#python main_parse_and_eval.py --path ./example_outputs/llava1.5_13b --subject elec # short name for Electronics. use --help for all short names

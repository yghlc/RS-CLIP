
#model=ViT-L/14
model=RN50

### UCM
# round 1
# $(which python) generate_pseudo.py --dataset ucm --vis-model ${model} --pseudo-version 1 --topk 20
#$(which python) generate_pseudo.py --dataset ucm --vis-model ${model} --pseudo-version 1 --topk 30

#$(which python) train_zero.py --dataset ucm --vis-model ${model} --n-shot 30 --work-dir work_dir_ucm_ViTL_pseudo_k30 --pseudo-version 1
# $(which python) train_zero.py --dataset ucm --vis-model ${model} --n-shot 20 --work-dir work_dir_ucm_ViTL_pseudo_k30 --pseudo-version 1


# # round 2
# $(which python) generate_pseudo.py --dataset ucm --vis-model ${model} --pseudo-version 2 --load-from work_dir_ucm_ViTL_pseudo_k20/batch_300.ckpt --topk 30

# $(which python) train_zero.py --dataset ucm --vis-model ${model} --n-shot 40 --work-dir work_dir_ucm_ViTL_pseudo_k40 --load-from work_dir_ucm_ViTL_pseudo_k20/batch_300.ckpt --pseudo-version 2

# # round 3
# $(which python) generate_pseudo.py --dataset ucm --vis-model ${model} --pseudo-version 3 --load-from work_dir_ucm_ViTL_pseudo_k40/batch_300.ckpt --topk 60

# $(which python) train_zero.py --dataset ucm --vis-model ${model} --n-shot 70 --work-dir work_dir_ucm_ViTL_pseudo_k70 --load-from work_dir_ucm_ViTL_pseudo_k40/batch_300.ckpt --pseudo-version 3



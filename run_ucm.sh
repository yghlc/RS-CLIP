
#model=ViT-L/14
model=RN50

dataset=ucm

## UCM
# round 1
k=20
wdir1=work_dir_ucm_ViTL_pseudo_k${k}
python generate_pseudo.py --dataset ${dataset} --vis-model ${model} --pseudo-version 1 --topk ${k}
python train_zero.py --dataset ${dataset} --vis-model ${model} --n-shot ${k} --work-dir ${wdir1} --pseudo-version 1


 # round 2
k=40
python generate_pseudo.py --dataset ${dataset} --vis-model ${model} --pseudo-version 2 --load-from ${wdir1}/batch_300.ckpt --topk ${k}
wdir2=work_dir_ucm_ViTL_pseudo_k${k}
python train_zero.py --dataset ${dataset} --vis-model ${model} --n-shot ${k} --work-dir ${wdir2} --load-from ${wdir1}/batch_300.ckpt --pseudo-version 2

 # round 3
k=60
python generate_pseudo.py --dataset ${dataset} --vis-model ${model} --pseudo-version 3 --load-from ${wdir2}/batch_300.ckpt --topk 60
wdir3=work_dir_ucm_ViTL_pseudo_k${k}
python train_zero.py --dataset ${dataset} --vis-model ${model} --n-shot ${k} --work-dir ${wdir3} --load-from ${wdir2}/batch_300.ckpt --pseudo-version 3



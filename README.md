# policy learning 
Our MBRL-based code is bulit upon the PyTorch implementation of [Mastering Diverse Domains through World Models](https://arxiv.org/abs/2301.04104v1), 
which is the baseline for APE, and can be found at https://github.com/NM512/dreamerv3-torch

## Instructions

Get dependencies with python 3.9:
```
pip install -r requirements.txt
```
Change the 'ckpt.tar' to the path of the pretrained encoder.
A pretrained encoder is provided at https://huggingface.co/datasets/Yuhan2022/ckpt/resolve/main/ckpt.tar.
```
Run training on DMC Vision:
```
python3 dreamer.py --configs dmc_vision --task dmc_walker_walk --logdir ./logdir/dmc_walker_walk

Monitor results:
```
tensorboard --logdir ./logdir
```

Run code in 'analysis' for the following low-dimensional analysis.

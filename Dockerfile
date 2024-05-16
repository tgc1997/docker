FROM pytorch/pytorch:2.1.2-cuda11.8-cudnn8-devel

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip -i https://mirrors.aliyun.com/pypi/simple/ && \
    python -m pip --no-cache-dir install --user -i https://mirrors.aliyun.com/pypi/simple/ \
        timm==0.4.12 \
        chardet \
        yacs \
        tensorboardX \
        fvcore==0.1.5.post20221221 \
        seaborn \
        apex \
        av \
        decord \
        deepspeed==0.13.1 \
        einops==0.7.0 \
        ftfy==6.1.3 \
        imageio \
        lm_eval==0.4.1 \
        numpy \
        omegaconf==2.3.0 \
        opencv-python-headless \
        packaging \
        h5py \
        pandas \
        Pillow==10.1.0 \
        pytest==8.1.1 \
        PyYAML==6.0.1 \
        regex==2023.10.3 \
        Requests==2.31.0 \
        scipy==1.12.0 \
        setuptools==68.2.2 \
        scikit-image \
        submitit==1.5.1 \
        termcolor==2.4.0 \
        tqdm \
        transformers==4.36.1 \
        wandb==0.16.2 \
        wheel==0.42.0 \
        addict \
        pyvista && \
    pip install -e causal-conv1d && \
    pip install -e mamba
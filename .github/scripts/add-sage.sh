#!/usr/bin/env bash

wget -O Miniforge3.sh "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"

bash Miniforge3.sh -b -p "/conda"

echo PATH="/conda/bin:$PATH" >> ~/.bashrc

source ~/.bashrc

conda --version

mamba create --yes -n sage sage python=3.12

conda config --set auto_activate_base false

conda init

echo 'conda activate sage' >> ~/.bashrc

conda activate sage

pip install pretext[homepage,prefigure] --only-binary {greenlet}

pip install -r requirements.txt

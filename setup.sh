
#!/bin/sh

# Install conda
bash Anaconda3-5.0.1-Linux-x86_64.sh -yes
export PATH="/home/khalid18/anaconda3/bin"
source ~/.bashrc

# Create a virtual environment
conda create -n "venv-capsnet" python=3.6
source activate venv-capsnet

# Setup nvidia and cuda scripts
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install python-dev python3-dev python-virtualenv
sudo apt-get install nvidia-384
wget https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda_8.0.61_375.26_linux-run
sudo ./cuda_8.0.61_375.26_linux-run
export PATH=/usr/local/cuda-8.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# Remember to reboot computer after completion!


#!/bin/sh

# # Install conda
# bash Anaconda3-5.0.1-Linux-x86_64.sh -yes
# export PATH="/home/%USER_NAME%/anaconda3/bin":$PATH # Where %USER_NAME% is your user name! 
# source ~/.bashrc

# # Create a virtual environment
# conda create -n "venv" python=3.6 # Where "venv" is your virtual environment
# source activate venv # Where "venv" is your virtual environment

# Setup nvidia and cuda scripts
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install python-dev python3-dev python-virtualenv
sudo apt-get install nvidia-384
# wget 'https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda_9.0.176_384.81_linux-run'
# sudo ./cuda_9.0.176_384.81_linux-run
# export PATH=/usr/local/cuda-9.0/bin${PATH:+:${PATH}}
# export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# Download CUDA and CUDAnn
wget http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64/libcudnn7_7.1.1.5-1+cuda9.0_amd64.deb
sudo dpkg -i libcudnn7_7.1.1.5-1+cuda9.0_amd64.deb
sudo apt-get update
sudo apt-get install cuda=9.0.176-1
sudo apt-get install libcudnn7=7.1.1.5-1

# Add folders to PATH
export PATH=/usr/local/cuda-9.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# Note: Remember to reboot computer after completion!

# Note: Add lines beginning with export to ~/.bashrc file 

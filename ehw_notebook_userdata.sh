#!/bin/bash

yum -y install python36
wget https://s3.amazonaws.com/ehw-pub/Anaconda3-5.0.1-Linux-x86_64.sh -O ./anaconda.sh
bash ./anaconda.sh -b -p /usr/local/anaconda
export PATH="/usr/local/anaconda/bin:$PATH"
source /usr/local/anaconda/bin/activate
jupyter notebook --ip=0.0.0.0 --port80 --no-browser


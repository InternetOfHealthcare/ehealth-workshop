#!/bin/bash

yum -y install python36
wget https://s3.amazonaws.com/ehw-pub/Anaconda3-5.0.1-Linux-x86_64.sh -O ./anaconda.sh
bash ./anaconda.sh -b -p /usr/local/anaconda
export PATH="/usr/local/anaconda/bin:$PATH"
source /usr/local/anaconda/bin/activate
mkdir /home/ec2-user/.jupyter
cp jupyter_notebook_config.py /home/ec2-user/.jupyter/jupyter_notebook_config.py
chown -R ec2-user /home/ec2-user/.jupyter
sudo -H -u ec2-user bash -c '/usr/local/anaconda/bin/jupyter notebook' 


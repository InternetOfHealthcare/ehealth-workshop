#!/bin/bash

echo "Setup Anaconda"
wget https://s3.amazonaws.com/ehw-pub/Anaconda3-5.0.1-Linux-x86_64.sh -O ./anaconda.sh --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 5 --quiet
bash ./anaconda.sh -b -p /usr/local/anaconda
export PATH="/usr/local/anaconda/bin:$PATH"
source /usr/local/anaconda/bin/activate

echo "Setup AWS SDK for Python (Boto3)"
pip install AWSIoTPythonSDK

echo "Setup Jupyter"
mkdir /home/ec2-user/.jupyter
cp jupyter_notebook_config.py /home/ec2-user/.jupyter/jupyter_notebook_config.py
chown -R ec2-user /home/ec2-user/.jupyter
iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 8080
cd "/usr/src/ehealth-workshop/ehw-notebook"
sudo -H -u ec2-user bash -c '/usr/local/anaconda/bin/jupyter notebook &'

echo "Notebook userdata finished" 

#!/bin/bash

echo "Setup Pi"
# sudo nano /etc/lightdm/lightdm.conf
# Add the following lines to the [SeatDefaults] section:
# xserver-command=X -s 0 dpms
#
# sudo nano /etc/dhcpcd.conf
# interface wlan0
# static ip_address=192.168.1.101/24
# static routers=192.168.1.1
# static domain_name_servers=192.168.1.1

echo "Setup Miniconda"
wget http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-armv7l.sh -O ./miniconda.sh --retry-connrefused --waitretry=1 --read-timeout=20 --timeout=15 -t 5
bash ./miniconda.sh -b -p /usr/local/miniconda
export PATH="/usr/local/miniconda/bin:$PATH"
source activate root

echo "Setup AWS SDKs"
pip install boto3
pip install AWSIoTPythonSDK
pip install awscli

echo "Setup Jupyter"
echo "Clone repo"
cd /usr/src
git clone https://github.com/InternetOfHealthcare/ehealth-workshop.git
mkdir $HOME/.jupyter
cp jupyter_notebook_config.py $HOME/.jupyter/jupyter_notebook_config.py

cd /usr/src
git clone https://github.com/kleinee/jns
cd jns
./prep.sh

# as pi?
pip3 install pip==9.0.0
pip3 install -U pip
# ./inst_stack.sh
# chown -R pi /home/pi/.jupyter
# sudo -H -u pi bash -c '/usr/local/anaconda/bin/jupyter notebook &'

echo "Pi userdata finished" 












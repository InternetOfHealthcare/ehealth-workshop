cd
rm -rf jns
git clone https://github.com/kleinee/jns
cd jns
sudo ./prep.sh
./inst_stack.sh

source /home/pi/.venv/jns/bin/activate

cd
pip install boto3
pip install AWSIoTPythonSDK
pip install awscli

cd
rm -rf ehealth-workshop
git clone https://github.com/InternetOfHealthcare/ehealth-workshop.git
cd ehealth-workshop
rm -rf /home/pi/.jupyter
mkdir -p /home/pi/.jupyter
cp jupyter_notebook_config.py /home/pi/.jupyter/jupyter_notebook_config.py
crontab pi_crontab


echo "Pi ready"

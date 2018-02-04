cd
git clone https://github.com/kleinee/jns
cd jns
sudo ./prep.sh
./inst_stack.sh
source /home/pi/.venv/jns/bin/activate

pip install boto3
pip install AWSIoTPythonSDK
pip install awscli

cd
git clone https://github.com/InternetOfHealthcare/ehealth-workshop.git
cd ehealth-workshop
mkdir -p /home/pi/.jupyter
cp jupyter_notebook_config.py /home/pi/.jupyter/jupyter_notebook_config.py

cd ehw-notebook/
#cd /home/pi/ehealth-workshop/ehw-notebook; source /home/pi/.venv/jns/bin/activate; /home/pi/.venv/jns/bin/jupyter notebook


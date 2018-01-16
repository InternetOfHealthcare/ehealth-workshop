#!/bin/bash

yum -y install python36
pip-3.6 install jupyter
jupyter notebook --ip=0.0.0.0 --port=80
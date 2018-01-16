#!/bin/bash

aws cloudformation deploy --template-file ehw_cfn.yaml --capabilities CAPABILITY_IAM --stack-name ehw-stack 
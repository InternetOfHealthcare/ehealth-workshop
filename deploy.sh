#!/bin/bash

export UNIQUE=$(date '+%H%M%S')

aws cloudformation deploy --template-file template.yml \
    --capabilities CAPABILITY_IAM \
    --stack-name ehw-stack-$UNIQUE
# Building e-health IoT solutions with AWS

Welcome! In this workshop we'll explore two key technology enablers for e-health: cloud and IoT. 

This is a self paced workshop, just hop in, all you need is:
  * A couple friends: You could do it alone, but what's the fun in that? Grab 2-3 friends and hop in.
  * Your computer. The one that you are reading this is ok.
  * Around 3 hours of undisturbed, dedicated time.
  * A Raspbery Pi. Components and hats you'd like to plug in are welcome!
  * An AWS Account. We'll be frugal but this may incur costs.

Ready? Let's go!

## Task 0: Lab Setup [00:05]
If you are attending in person you can skip this step, as an AWS Account with the workshop stack and a raspbery pi were already provisioned to your group. If you're not with us in person, we'll miss you, but here is how to set things up!

### Prepare your AWS Account
Just create this CloudFormation stack:

<a href="https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create/review?filter=active&templateURL=https:%2F%2Fs3.amazonaws.com%2Fehw-pub%2Fehw_cfn.yaml&stackName=ehw-stack"><img src="https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png"/></a>

This will launch the workshop resources withing that AWS Account. 
When the stack is in CREATE_COMPLETE state, follow the link in the "NotebookURL" output, in the Outputs tab of the CloudFormation console. That points for the jupyter notebook with this workshop!
# Building e-health IoT solutions with AWS

Welcome to the e-health workshop! It was designed to help you build e-health devices and applications using the best of AWS cloud services.

This is a self paced workshop, just hop in, all you need is:
  * A couple friends! You can surely do it alone, but what's the fun in that?
  * Any computer with a web browser and a SSH client. How about a Raspbery Pi?
  * An AWS Account. We'll be frugal but this may incur costs.
  * A couple hours of undisturbed, dedicated time.

Ready? Let's go!

# Disclaimer


### Prepare your AWS EC2 / Account
Just create this CloudFormation stack:

<a href="https://console.aws.amazon.com/cloudformation/home?#/stacks/create/review?filter=active&templateURL=https:%2F%2Fs3.amazonaws.com%2Fehw-artifacts%2Ftemplate.yml&stackName=ehealth-workshop"><img src="https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png"/></a>

This will launch an SageMaker notebook instance, declared as a CloudFormation Template, with the configuration and code required for this workshop. When prompted to validate the Stack creation, please acknoledge that AWS CloudFormation may create an IAM Role on your behalf.  ** This role is extremely open to allow all management operations to be demonstrated. Only create this stack on an account dedicated for educational purposes.**

![Create Workshop Stack](/image/create-stack.png?raw=true "Create Workshop Stack")

https://console.aws.amazon.com/cloudformation/home

Refer to the "Outputs" tab of the CloudFormation stack execution in the CloudFormation console whenever the stack is in CREATE_COMPLETE state.

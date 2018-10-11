# Building e-health IoT solutions with AWS

Welcome to the e-health workshop! It was designed to help you build e-health devices and applications using the best of AWS cloud services.

This is a self paced workshop, just hop in, all you need is:
  * A couple friends! You can surely do it alone, but what's the fun in that?
  * Any computer with a web browser and a SSH client. How about a Raspbery Pi?
  * An AWS Account. We'll be frugal but this may incur costs.
  * A couple hours of undisturbed, dedicated time.

Ready? Let's go!

# Disclaimer
This lab does not reflect AWS opinion or best practices, it is the sole work of their rogue authors.

This lab can cost money. Should be a few cents at most, but clean up afterwards.

This lab has very open security settings for easier demonstrations, avoid running it on production accounts.

### Prepare your AWS EC2 / Account
Just create this CloudFormation stack:

<a href="https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create/review?filter=active&templateURL=https:%2F%2Fs3.amazonaws.com%2Fehw-artifacts%2Ftemplate.yml&stackName=ehealth-workshop"><img src="https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png"/></a>

This will launch the workshop resources withing that AWS Account. 
You can find the resource names and values in the outputs section of the cloudformation console:

Refer to the "Outputs" tab of the CloudFormation stack execution in the CloudFormation console whenever the stack is in CREATE_COMPLETE state. There you will have some information, being these the most relevant:

- "NotebookURL", which points for the jupyter notebook with this workshop.
- Jupyter Password: BuildOnAWS
- "EC2KeyPairURL", an URL to download the private key used within the created EC2 instance in case you need to connect via SSH.
- Use ssh -i file.pem ec2-user@ipaddress

# Building e-health IoT solutions with AWS

Welcome to the e-health workshop! It was designed to help you build e-health devices and applications using the best of AWS cloud services.

This is a self paced workshop, just hop in, all you need is:
  * A couple friends! You can surely do it alone, but what's the fun in that?
  * Any computer with a web browser and a SSH client. How about a Raspbery Pi?
  * An AWS Account. We'll be frugal but this may incur costs.
  * Around 3 hours of undisturbed, dedicated time.

Ready? Let's go!

# Disclaimer
This lab does not reflect AWS opinion or best practices, it is the sole work of their rogue authors.

This lab can cost money. Should be a few cents at most, but clean up afterwards.

This lab has very open security settings for easier demonstrations, avoid running it on production accounts.

# Setup your lab
If you are attending in person you can skip this step, as an AWS Account with the workshop stack and a raspbery pi were already provisioned to you. 

If you're not with us in person, we'll miss you, but here is how to set things up!
### ![Login AWS Qwik Lab](http://aws.qwiklab.com/)
### User faermanj+labXX@amazon.com
### Password BuildOnAWS

### Prepare your AWS Account
Just create this CloudFormation stack:

<a href="https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create/review?filter=active&templateURL=https:%2F%2Fs3.amazonaws.com%2Fehw-pub%2Fehw_cfn.yaml&stackName=ehw-stack"><img src="https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png"/></a>

This will launch the workshop resources withing that AWS Account. 
You can find the resource names and values in the outputs section of the cloudformation console:

When the stack is in CREATE_COMPLETE state, follow the link in the "NotebookURL" output, in the Outputs tab of the CloudFormation console. That points for the jupyter notebook with this workshop!


## Lab Setup - Using Raspberry PI 

To setup our Raspberry Pi we need to create access keys and then configure awscli.

### Step #1: Open IAM Console to create an access key
![screen](/images/raspberry-config/01.png) 

### Step #2: Click in your AWS user
![screen](/images/raspberry-config/02.png) 

### Step #3: Click "Security Credentials"
![screen](/images/raspberry-config/03.png) 

### Step #4: Click "Create Access Key" 
![screen](/images/raspberry-config/04.png) 

### Step #5: Copy the Access Key ID and Secret Access

You can also download a CSV file with your keys!
![screen](/images/raspberry-config/05.png) 

### Step #6: Access your Raspberry Pi using SSH and configure awscli

* Open ssh: ssh pi@RASP-IP-ADDRESSS
* Type: aws configure
* Enter your keys
* Choose us-east-1 as region
* Choose json as output

![screen](/images/raspberry-config/06.png) 

### Step #7: Return to IAM Console and select your user  
![screen](/images/raspberry-config/07.png) 

### Step #8: Click "Add permissions"
![screen](/images/raspberry-config/08.png) 

### Step #9: Click "Attach existing policies directly"
![screen](/images/raspberry-config/09.png) 

### Step #10: Choose "AdministratorAccess"  
![screen](/images/raspberry-config/10.png) 

### Step #11: Choose "AmazonDynamoDBFullAccess"
![screen](/images/raspberry-config/11.png) 

### Step #12: Choose "AWSGreengrassFullAccess"
![screen](/images/raspberry-config/12.png) 

### Step #13: Choose "AWSIoTFullAccess" and click "Next Review"
![screen](/images/raspberry-config/13.png) 

### Step #14: Click "Add permissions" and done!
![screen](/images/raspberry-config/14.png) 

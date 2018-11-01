# Building e-health IoT solutions with AWS

Welcome to the e-health workshop! It was designed to help you build e-health devices and applications using Amazon Web Services.

This is a self paced workshop, just hop in, all you need is:
  * A couple friends! You can surely do it alone, but what's the fun in that?
  * Any computer with a web browser- How about a Raspbery Pi?
  * An AWS Account. We'll be frugal but this may incur costs.
  * A couple hours of undisturbed, dedicated time.

Ready? Let's go!

# Disclaimers

This workshop creates AWS resources that may incur in costs, but do not worry. Even if you go above the 500.000 messages included in the free tier, another million messages would cost about one dollar. Just remember to delete the CloudFormation stack when you are done.

The security settings in this workshop are extremely open so that management operations at any level can be demonstrated. Do not share your notebook instance. Only run this workshop on accounts prepared for educational or personal purposes.

This project is not sponsored or supported by Amazon or its affiliates. The text, code and opinions in this open-source respository are exclusive from its contributors.

### Create your workshop resources
The notebook instance used for this workshop and its respective configuration can be setup by creating an AWS CloudFormation stack:

<a href="https://console.aws.amazon.com/cloudformation/home?#/stacks/create/review?filter=active&templateURL=https:%2F%2Fs3.amazonaws.com%2Fehw-artifacts%2Ftemplate.yml&stackName=ehealth-YOURNAME"><img src="https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png" target="_blank"/></a>
 
This will launch an SageMaker notebook instance, declared as a CloudFormation Template, with the configuration and code required for this workshop. When prompted to validate the Stack creation, please acknoledge that AWS CloudFormation may create an IAM Role on your behalf.  ** This role is extremely open to allow all management operations to be demonstrated. Only create this stack on an account dedicated for educational purposes.**

![Create Workshop Stack](https://raw.githubusercontent.com/InternetOfHealthcare/ehealth-workshop/master/images/create-stack.png)

The link to your notebook instance containing the instructions and code for this workshop will be available as soon as the stack reaches the state "CREATE COMPLETE". 

![Notebook Link](https://raw.githubusercontent.com/InternetOfHealthcare/ehealth-workshop/master/images/output-link.png)

Each cell in the Jupyter notebook will contain either a shor explanation or code snippet. Run the cells sequentially and mind any errors, as each cell builds for the next.

![Jupyter](https://raw.githubusercontent.com/InternetOfHealthcare/ehealth-workshop/master/images/index.png)

We hope you enjoy the lab and feel free to submit improvements, issues, suggestions and comments.

# Infrastructure as Code

## The setup
In this setup, we will create 2 subnets (one for public access and another private). We have Elastic Load Balancer in the public subnet to handle the traffic to our web servers. Our web servers will be on the private subnet and it will only be accessible through the Load Balancer. This mean that we won’t have direct access to make connections (for example, SSH) on the server. In order to access via SSH an instance on a private subnet, you’ll need a bastion host and connect to the web server through it. Thus, we will create the bastion host on the public subnet.

Our modules folder contains all the shared code to create the pieces of the infrastructure (web servers, app servers, databases, vpc, etc). Each folder inside the modules folder is related to a specific module.

## The Tool

Terraform will provide us with some commands. Some of them are:

**init** : Initialize a Terraform working directory

**get** : Download and install modules for the configuration

**plan** : Displays all the changes that Terraform makes on our infrastructure

**apply** : Executes all the changes to the infrastructure

**destroy** : Destroys everything that was created with Terraform

When you run Terraform inside a directory, it loads ALL .tf files from the directory and execute them (will not load on subfolders). Terraform will first create a graph of the resources to apply only in the final phase, so you don’t need to specify the resources in any specific order. The graph will determine the relations between the resources and ensure that Terraform creates they in the right order.

## Modules



variable "web_instance_count" {
  description = "The total of web instances to run"
}

variable "region" {
  description = "The region to launch the instances"
}

variable "amis" {
  default = {
    "us-east-1" = "ami-f652979b"
    "us-east-2" = "ami-fcc19b99"
    "us-west-1" = "ami-16efb076"
  }
}

variable "instance_type" {
  description = "The instance type to launch"
}

variable "private_subnets_id" {
  description = "The id of the private subnet to launch the instances"
}

variable "public_subnets_id" {
  description = "The id of the public subnet to launch the load balancer"
}

variable "vpc_sg_id" {
  description = "The default security group from the vpc"
}

variable "vpc_cidr_block" {
  description = "The CIDR block from the VPC"
}

variable "key_name" {
  description = "The keypair to use on the instances"
}

variable "environment" {
  description = "The environment for the instance"
}

variable "env" {
  description = "The environment for the instance"
  default = "staging"
}

variable "vpc_id" {
  description = "The id of the vpc"
}


variable "webserver-ami" {
    default = "ami-0ce71448843cb18a1"
}


/*
# Define variables to be used
variable "region" {
  default     = "eu-west-1"
  description = "Defining the region where everything will run"
}

variable "availability_zone" {
  default = "eu-west-1a"
}

variable "env" {
  default = ""
}

variable "aws_profile" {
  default     = "default"
  description = "the aws profile to be used"
}

variable "key_name" {
  default     = "myaws"
  description = "the ssh key to use in the EC2 machines"
}

variable "credentialsfile" {
  default     = "/Users/thieryl/.aws/credentials" #replace your home directory
  description = "where your access and secret_key are stored, you create the file when you run the aws config"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnets_cidr" {
  default = "10.0.1.0/24"
}

variable "private_subnets_cidr" {
  default = "10.0.4.0/24"
}

variable "webserver_ami" {
    default = "ami-0ce71448843cb18a1"
}

variable "bastion_ami" {
  default = "ami-0ce71448843cb18a1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "http_port" {
  default = "80"
}
*/
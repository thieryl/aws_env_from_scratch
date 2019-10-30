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

variable "azs" {
  type    = list(string)
  default = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}

variable "webserver-ami" {
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


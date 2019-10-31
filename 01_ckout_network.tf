provider "aws" {
  region  = "eu-west-1"

}
module "network" {
  source              = "./modules/network"
  env         = var.env
  vpc_cidr            = var.vpc_cidr
  public_subnets_cidr  = var.public_subnets_cidr
  private_subnets_cidr = var.private_subnets_cidr
  availability_zone   = var.availability_zone
  key_name            = var.key_name
  region = "eu-west-1"
}

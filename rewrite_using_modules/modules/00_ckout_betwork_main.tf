resource "aws_vpc" "vkout_vpc" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support = true

  default = true

  tags = {
      Name = "${var.env-vpc}"
      Environment = "${var.env-vpc}
  }
}

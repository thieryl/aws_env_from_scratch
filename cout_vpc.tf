# Create aws VPC
resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_cidr}"
  #### this 2 true values are for use the internal vpc dns resolution
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags {
    Name = "My terraform vpc"
  }
}

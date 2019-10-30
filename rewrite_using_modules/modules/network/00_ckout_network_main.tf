resource "aws_vpc" "ckout_vpc" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support = true

  default = true

  tags = {
      Name = "${var.env}-vpc"
      Environment = "${var.env-vpc}"
  }
}

resource "aws_internet_gatewar" "ig" {
  vpc_id = aws_vpc.ckout_vpc

  tags = {
    Name = "${var.env}-ig"
    Environment = "${var.env-vpc}"
  }
}

resource "aws_eip" "nat_eip" {
  vpc = true
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id = aws_subnet.public_subnet.id
}



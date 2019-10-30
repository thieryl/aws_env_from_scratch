resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.ckout_vpc.id
  cidr_block              = var.public_subnets_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name        = "${var.env}-public-subnet"
    Environment = var.env
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id                  = aws_vpc.ckout_vpc.id
  cidr_block              = var.private_subnets_cidr
  map_public_ip_on_launch = false
  availability_zone       = var.availability_zone

  tags = {
    Name        = "${var.env}-private-subnet"
    Environment = var.env
  }
}
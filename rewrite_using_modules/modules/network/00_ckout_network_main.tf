resource "aws_vpc" "ckout_vpc" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
      Name = "${var.env}-vpc"
      Environment = "${var.env}"
  }
}

resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.ckout_vpc.id

  tags = {
    Name = "${var.env}-ig"
    Environment = "${var.env}"
  }
}

resource "aws_eip" "nat_eip" {
  vpc = true
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id = aws_subnet.public_subnet.id
}

resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.ckout_vpc.id}"

  tags = {
    Name        = "${var.env}-public-route-table"
    Environment = "${var.env}"
  }
}

resource "aws_route_table" "private" {
  vpc_id = "${aws_vpc.ckout_vpc.id}"

  tags = {
    Name        = "${var.env}-private-route-table"
    Environment = var.env
  }
}
resource "aws_route" "public_internet_gateway" {
  route_table_id         = "${aws_route_table.public.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.ig.id}"
}

resource "aws_route" "private_nat_gateway" {
  route_table_id         = "${aws_route_table.private.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.nat.id}"
}

resource "aws_route_table_association" "public" {
  subnet_id      = "${aws_subnet.public_subnet.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "private" {
  subnet_id       = "${aws_subnet.private_subnet.id}"
  route_table_id  = "${aws_route_table.private.id}"
}


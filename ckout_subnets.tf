resource "aws_subnet" "PublicAZA" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.public_subnets_cidr}"
  tags {
    Name = "PublicAZA"
  }
  availability_zone = ["${var.azs.id}"]
}
resource "aws_route_table_association" "PublicAZA" {
  subnet_id      = "${aws_subnet.PublicAZA.id}"
  route_table_id = "${aws_route_table.public.id}"
}
resource "aws_subnet" "PrivateAZA" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.private_subnets_cidr}"
  tags {
    Name = "PublicAZB"
  }
  availability_zone = ["${var.aws_availability_zones}"]
}
resource "aws_route_table_association" "PrivateAZA" {
  subnet_id      = "${aws_subnet.PrivateAZA.id}"
  route_table_id = "${aws_route_table.private.id}"
}

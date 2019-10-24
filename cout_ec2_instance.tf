# create ec2 instances
resource "aws_instance" "webserver" {
  count         = "${length(var.public_subnets_cidr)}"
  ami           = "${var.webserver-ami}"
  instance_type = "${var.instance_type}"

  tags {
    Name = "webServer-${count.index}"
  }
}

output "public_ip" {
  value = "${aws_instance.webserver.*.private_ip}"
}

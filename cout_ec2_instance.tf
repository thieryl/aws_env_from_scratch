# create ec2 instances
resource "aws_instance" "webserver" {
  ami_id        = "${var.webserver-ami}"
  instance_type = "${var.instance_type}"

  tag {
    Name = "webServer-${count.index}"
  }
}

resource "aws_instance" "web" {
  count             = "${var.web_instance_count}"
  ami               = "${lookup(var.amis, var.region)}"
  instance_type     = var.instance_type
  subnet_id         = var.private_subnet_id
  vpc_security_group_ids = [
    aws_security_group.web_server_sg.id
  ]
  key_name          = var.key_name
  user_data         = "${file("${path.module}/files/user_data.sh")}"
  tags = {
    Name        = "${var.env}-web-${count.index+1}"
    Environment = var.env
  }
}
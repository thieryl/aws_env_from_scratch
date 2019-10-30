resource "aws_elb" "web" {
  name            = "${var.env}-web-lb"
  subnets         = [var.public_subnet_id]
  security_groups = [aws_security_group.web_inbound_sg.id]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
  instances = ["${aws_instance.web.*.id}"]

  tags {
    Environment = var.env
  }
}
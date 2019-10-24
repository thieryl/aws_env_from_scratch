# Create launch Configuration
resource "aws_launch_configuration" "cout_launch_config" {
  image_id        = "${var.webserver-ami}"
  instance_type   = "${var.instance_type}"
  security_groups = ["${aws_security_group.webservers.id}"]
  user_data       = <<-EOF
   #!/bin/sh
   echo "Welcome to Tricky-bit" >>index.html
   nohup httpd -f -d "${var.http_port}" &
  EOF

  lifecycle {
    create_before_destroy = true
  }

}

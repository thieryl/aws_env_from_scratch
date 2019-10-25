# Create launch Configuration
resource "aws_launch_configuration" "cout_launch_config" {
  image_id        = var.webserver-ami
  instance_type   = var.instance_type
  security_groups = [aws_security_group.webservers.id]
  key_name        = var.key_name
  user_data       = <<-EOF
   #!/bin/sh
   yum install -y httpd
   echo "Welcome to Tricky-bit" >>/var/www/html/index.html
   service httpd start
EOF


  lifecycle {
    create_before_destroy = true
  }
}


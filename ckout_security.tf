# Create security groups
# ELB SG
resource "aws_security_group" "ckout_elb" {
  name = "Ckout-ELB"
  vpc_id = aws_vpc.main.id

  ingress {
    from_port   = var.http_port
    to_port     = var.http_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "webservers" {
  name        = "ckout_allow_http"
  description = "Allow http inbound traffic"
<<<<<<< HEAD

  vpc_id      = "${aws_vpc.main.id}"
=======
  vpc_id      = aws_vpc.main.id
>>>>>>> 5fd07bb0ca8a51d2963f5edc5e57b6b202b2fd74

  ingress {
    from_port   = var.http_port
    to_port     = var.http_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_security_group" "database" {
  name        = "allow_mysql"
  description = "Allow mysql inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  lifecycle {
    create_before_destroy = true
  }
<<<<<<< HEAD
}

# ELB SG
resource "aws_security_group" "ckout_elb" {
  name = "Ckout-ELB"

  vpc_id = "${aws_vpc.main.id}"

  ingress {
    from_port   = var.http_port
    to_port     = var.http_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

=======
}
>>>>>>> 5fd07bb0ca8a51d2963f5edc5e57b6b202b2fd74

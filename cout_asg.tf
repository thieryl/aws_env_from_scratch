# Create Auto Scaling Group
resource "aws_autoscaling_group" "cout_asg" {
  launch_configuration = "${aws_launch_configuration.cout_launch_config.id}"
  availability_zones   = ["${var.azs}"]

  min_size = 2
  max_size = 10

  tag {
    key                 = "Name"
    value               = "cout-asg"
    propagate_at_launch = true
  }

}


# Create Auto Scaling Group
resource "aws_autoscaling_group" "cout_asg" {
  launch_configuration = "${aws_launch_configuration.cout_launch_config.id}"
  availability_zones   = ["${var.azs}"]



  load_balancers    = ["${aws_elb.ckout_elb.name}"]
  health_check_type = "ELB"

  min_size = 2
  max_size = 5


  tag {
    key                 = "Name"
    value               = "cout-asg"
    propagate_at_launch = true
  }

}

output "elb_dns_name" {
  value = "${aws_elb.ckout_elb.dns_name}"
}


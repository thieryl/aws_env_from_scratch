output "elb_hostname" {
  value = "${aws_elb.web.dns_name}"
}
output "web_elb_id" {
  description = "The name of the ELB"
  value       = concat(aws_elb.web.*.id, [""])[0]
}

output "web_elb_arn" {
  description = "The ARN of the ELB"
  value       = concat(aws_elb.web.*.arn, [""])[0]
}

output "web_elb_name" {
  description = "The name of the ELB"
  value       = concat(aws_elb.web.*.name, [""])[0]
}

output "web_elb_dns_name" {
  description = "The DNS name of the ELB"
  value       = concat(aws_elb.web.*.dns_name, [""])[0]
}

output "web_elb_instances" {
  description = "The list of instances in the ELB"
  value       = flatten(aws_elb.web.*.instances)
}

output "web_elb_source_security_group" {
  description = "The name of the security group that you can use as part of your inbound rules for your load balancer's back-end application instances. Use web for Classic or Default VPC only."
  value       = concat(aws_elb.web.*.source_security_group, [""])[0]
}

output "web_elb_source_security_group_id" {
  description = "The ID of the security group that you can use as part of your inbound rules for your load balancer's back-end application instances. Only available on ELBs launched in a VPC."
  value       = concat(aws_elb.web.*.source_security_group_id, [""])[0]
}

output "web_elb_zone_id" {
  description = "The canonical hosted zone ID of the ELB (to be used in a Route 53 Alias record)"
  value       = concat(aws_elb.web.*.zone_id, [""])[0]
}
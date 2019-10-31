output "vpc_id" {
  value = aws_vpc.ckout_vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.public_subnets.id
}

output "private_subnet_id" {
  value = aws_subnet.private_subnets.id
}

output "default_sg_id" {
  value = aws_security_group.default.id
}

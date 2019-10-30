resource "aws_instance" "bastion" {
  ami = "${lookup(var.bastion_ami, var.region)}"
  instance_type = var.instance_type
  key_name = var.key_name
  monitoring = true
  vpc_security_group_ids = [aws_security_group.bastion.id]
  subnet_id = aws_subnet.public_subnet.id
  associate_public_ip_address = true

  tags {
    Name        = "${var.environment}-bastion"
    Environment = "${var.environment}"
  }
}
resource "aws_instance" "bastion" {
  ami = var.bastion_ami
  instance_type = var.instance_type
  key_name = var.key_name
  monitoring = true
  vpc_security_group_ids = [aws_security_group.bastion.id]
  subnet_id = aws_subnet.public_subnet.id
  associate_public_ip_address = true

  tags = {
    Name        = "${var.env}-bastion"
    Environment = var.env
  }
}
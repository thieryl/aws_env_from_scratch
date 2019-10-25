# Create an internet Gateway
# Internet Gateway
resource "aws_internet_gateway" "ckout_igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "main"
  }
}


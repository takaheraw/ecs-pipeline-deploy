resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
 
  tags = {
    Name = "igw-ecs-pipeline-deploy"
  }
}

resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.natgw.id
  subnet_id     = aws_subnet.public_1a.id

  tags = {
    Name = "natgw-ecs-pipeline-deploy"
  }

  depends_on = [aws_internet_gateway.igw]
}
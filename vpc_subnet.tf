resource "aws_subnet" "public_1a" {
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = "${var.region}a"
  cidr_block              = "10.0.10.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet-ecs-pipeline-deploy-public-1a"
  }
}

resource "aws_subnet" "public_1c" {
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = "${var.region}c"
  cidr_block              = "10.0.11.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet-ecs-pipeline-deploy-public-1c"
  }
}

resource "aws_subnet" "dmz_1a" {
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = "${var.region}a"
  cidr_block              = "10.0.20.0/24"
  map_public_ip_on_launch = true
 
  tags = {
    Name = "subnet-ecs-pipeline-deploy-dmz-1a"
  }
}

resource "aws_subnet" "dmz_1c" {
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = "${var.region}c"
  cidr_block              = "10.0.21.0/24"
  map_public_ip_on_launch = true
 
  tags = {
    Name = "subnet-ecs-pipeline-deploy-dmz-1c"
  }
}

resource "aws_subnet" "private_1a" {
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = "${var.region}a"
  cidr_block              = "10.0.30.0/24"
  map_public_ip_on_launch = true
 
  tags = {
    Name = "subnet-ecs-pipeline-deploy-private-1a"
  }
}

resource "aws_subnet" "private_1c" {
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = "${var.region}c"
  cidr_block              = "10.0.31.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet-ecs-pipeline-deploy-private-1c"
  }
}
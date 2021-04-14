resource "aws_eip" "natgw" {
  vpc = true

  tags = {
    Name = "natgw-ecs-pipeline-deploy"
  }
}
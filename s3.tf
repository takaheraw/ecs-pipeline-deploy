resource "aws_s3_bucket" "pipeline" {
  bucket = "s3-ecs-pipeline-deploy"
  acl    = "private"
}
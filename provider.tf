provider "aws" {
  region     = var.region
}

provider "github" {
  token = aws_ssm_parameter.github_personal_access_token.value
}
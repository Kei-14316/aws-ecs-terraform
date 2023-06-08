terraform {
  # Assumes s3 bucket and dynamo DB table already set up
  backend "s3" {
    bucket         = "aws-ecs-terraform-tfstate-529553035495"
    key            = "terraform.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "aws-ecs-terraform-tfstate-locking"
    encrypt        = true
  }
}
terraform {
  required_version = ">= 1.5.0"
  backend "s3" {
    bucket         = "amit-9992202700"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "dynamo-db2700"
  }
}
terraform {
  backend "s3" {
    bucket         = "terraform_state" # change this
    key            = "terraform/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

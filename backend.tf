terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  #   backend "s3" {
  #     bucket         = "terraform-state-bucket"
  #     key            = "terraform.tfstate"
  #     region         = "eu-central-1"
  #     dynamodb_table = "terraform-state-lock"
  #     profile        = "ssp"
  #   }
}
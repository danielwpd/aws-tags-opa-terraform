

provider "aws" {
  region = "us-west-2"
}


# Setting Up Remote State
terraform {
  # Terraform version at the time of writing this post
  required_version = ">= 0.14.0"

  backend "s3" {
    bucket = "52e9ed58-8d1c-431f-ba48-bf8165bc6db7"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}

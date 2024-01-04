terraform {
  backend "remote" {
   // hostname     = "https://app.terraform.io/app/FOTA"
    organization = "FOTA"

    workspaces {
      name = "Terraform-dev"
    }
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }  
}
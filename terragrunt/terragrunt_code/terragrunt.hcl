# Indicate what region to deploy the resources into
generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
 terraform {
   required_providers {
     aws = {
       source  = "hashicorp/aws"
       version = "~> 4.0"
     }
   }
 }
provider "aws" {
  region = "us-east-1"
 }
 EOF
}

# Backend Bucket
generate "backend" {
  path = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  backend "s3" {
    bucket         = "demo-terraform-backend1"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
  }
}
 EOF
} 
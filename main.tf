terraform {
  required_providers {
    aws = {

      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1" # region of the user account
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

variable "aws_access_key" {
  type        = string
  description = "Access key for AWS account"
}

variable "aws_secret_key" {
  type        = string
  description = "Secret key for AWS account"
}


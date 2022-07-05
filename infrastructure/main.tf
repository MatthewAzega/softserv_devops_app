#Provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">=1.2.0"
}

#Block to configure specifed provider <AWS> plugin
provider "aws" {
  region = "us-east-1"
}

#Virtual private cloud
resource "aws_vpc" "dev-vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true #for database
  enable_dns_hostnames = true #for database

  tags = {
    name = "VPC"
  }
}
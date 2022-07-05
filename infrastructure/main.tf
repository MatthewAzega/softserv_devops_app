#ECS
#EC2 cluster 
#Application load balancer
#Internet gateway
#private + public subnet
#Security group 80 443 ports open

#Required provider plugin (for download from source)
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


/*
#get resource ec2 instance
resource "aws_instance" "app_node" {
  ami           = "ami-09d56f8956ab235b3"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  key_name = "matikey"
  network_interface {
    device_index = 0
    network_interface_id = aws_network_interface.web-server-nic.id
  }

  tags = {
    Name = "web-server"
  }

  user_data = <<-EOF
            #!/bin/bash
            sudo apt update -y
            sudo apt install apache2 -y
            sudo systemctl start apache2
            sudo bash -c 'echo jaci zabijaci valorant dzis pograci > /var/www/html/index.html'
            EOF
}*/
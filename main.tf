provider "aws" {
  region = "us-east-1"
    
}

#VPC
resource "aws_VPC" "Demo_vpc" {
  cidr_block          = "10.0.0.0/16"
  enable_dns_support  = "true"
  enable_dns_hostnames = "true"
  
  tags = {

    Name = "MYVPC"
  }
}
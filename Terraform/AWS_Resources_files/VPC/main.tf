provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "web" {
  ami = "ami-0cd59ecaf368e5ccf"
  instance_type = "t2.micro"
 tags = {
   Name = "Hello-World"
   Team = "DevOps"
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc

resource "aws_vpc" "Demo-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Demo-VPC"
   }
}

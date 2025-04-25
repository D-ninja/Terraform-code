provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket  = "atlantis010"
    key     = "atlantis/terraform.tfstate"
    region  = "us-east-1"
    profile = "default"
  }
}
resource "aws_instance" "my_ec2" {
  ami="ami-0ac4dfaf1c5c0cce9"
  instance_type = "t2.micro"
  tags = {
    Name = "My_ec2ter"
    env = "dev"
  }
}

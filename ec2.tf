provider "aws" {
    region = "us-east-1"
  
}

resource "aws_ec2_instance" "example" {
    ami = "ami-0c1fe732b5494dc14"
    instance_type = "t2.micro"
  
}
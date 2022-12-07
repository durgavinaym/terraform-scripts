provider "aws" {
  region = "us-east-2"
  access_key = "enter the access_key here"
  secret_key = "enter the secret_key here"
}
resource "aws_vpc" "myvpc"{
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "my_vpc"
  }
}
resource "aws_subnet" "mysubnet" {
  cidr_block = "10.0.0.0/25"
  vpc_id     = aws_vpc.myvpc.id
  tags = {
    Name = "my_subnet"
  }

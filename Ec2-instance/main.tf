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
  availability_zone = "us-east-2a"
  tags = {
    Name = "mysubnet"
  }
}
resource "aws_internet_gateway" "my_gateway" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = "mygateway"
  }
}
resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.myvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_gateway.id
  }
  tags = {
    Name = "myroutetable"
  }
}
resource "aws_security_group" "my_security" {
  vpc_id = aws_vpc.myvpc.id
  ingress {
    from_port = 0
    protocol  = "-1"
    to_port   = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    protocol  = "-1"
    to_port   = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "new_security"
  }
}
resource "aws_route_table_association" "my_association" {
  route_table_id = aws_route_table.my_route_table.id
  subnet_id = aws_subnet.mysubnet.id
}
resource "aws_instance" "my_instance" {
  ami = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
  availability_zone = "us-east-2a"
  subnet_id = aws_subnet.mysubnet.id
  vpc_security_group_ids =  [aws_security_group.my_security.id]
  associate_public_ip_address = true
  key_name = " enter key=pair here"
  tags = {
    Name = "myinstance"
  }
}

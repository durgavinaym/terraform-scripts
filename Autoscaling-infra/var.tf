variable "aws_region" {
  description = "AWS region to create resources"
  default     = "give the region here (eg:us-east-2)"
}
variable "access_key" {
    description = "Iam access key"
    default = "give here the access-key"
}
variable "secret_key" {
    description = "Iam secret key"
    default = "give here the secret-key"
}
variable "key_name" {
  description = "Key name for SSHing into EC2"
  default = "terraform"
}
variable "availability_zones" {
   description = "availability zone"
   default = "give here the avaliability-zone eg:us-east-2a"
}
variable "ami" {
  description = "Base AMI to launch the instances"
  default = " ami-097a2df4ac947655f" give here the ami-id 
  }

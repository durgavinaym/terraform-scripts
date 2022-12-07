variable "aws_region" {
  description = "AWS region to create resources"
  default     = " specify the region (for eg:us-east-2)"
}
variable "access_key" {
    description = "Iam access key"
    default = "this is access_key"
}
variable "secret_key" {
    description = "Iam secret key"
    default = "this is secret_key"
}

variable "instance_type" {
  description = "instance-type"
  default = "t2.micro"
}
variable "key_name" {
  description = "key-pair"
  default = "key_pair name "
}

variable "cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
  default     = "10.0.0.0/16"
}
variable "instance_tenancy" {
  description = "A tenancy option for instances launched into the VPC"
  type        = string
  default     = "default"
}

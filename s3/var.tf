variable "aws_region" {
  description = "AWS region to create resources"
  default     = "us-east-2( give the region here)"
}
variable "access_key" {
    description = "Iam access key"
    default = "give the access key here"
}
variable "secret_key" {
    description = "Iam secret key"
    default = "give the secret key here"
}

variable "bucket" {
    description = "bucket name"
    default     = "newsawsbucket"
}

variable "acl_value" {
    description = "network values"
    default = "private"
}

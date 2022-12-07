provider "aws" {
  region      = var.aws_region
  access_key  = var.access_key
  secret_key  = var.secret_key
}

# create a resource s3
resource "aws_s3_bucket" "demos" {
    bucket = var.bucket
    acl    = var.acl_value
}


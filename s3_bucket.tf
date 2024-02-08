provider "aws" {
  region = "ap-south-1"  # Update with your desired region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-bucket-name"
  acl    = "private"  # Update with your desired ACL
}

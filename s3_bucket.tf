provider "aws" {
  region = "your_region"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "your_bucket_name"
  acl    = "private"
}

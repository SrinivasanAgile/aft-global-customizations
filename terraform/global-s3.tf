resource "aws_s3_bucket" "mybucket" {
  bucket = "global-mybucket-${random_id.suffix.dec}"
  acl    = "private"

  tags = {
    Name        = "My Global bucket"
    Environment = "Dev"
  }
}

resource "random_id" "suffix" {
  byte_length = 4
}
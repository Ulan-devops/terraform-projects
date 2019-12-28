resource "random_id" "dev_id" {
  byte_length               = 4
}
resource "aws_s3_bucket" "dev_bucket1" {
  bucket                = "${var.dev_bucket_name}-${random_id.dev_id.dec}"
  acl                   = "private"
  tags = {
      Name              = "devbucket1"
      env               = "dev"
  }
}


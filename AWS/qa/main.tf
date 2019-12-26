resource "random_id" "qa_id" {
  byte_length               = 4
}

resource "aws_s3_bucket" "qa_bucket1" {
  bucket                = "${var.qa_bucket_name}-${random_id.qa_id.dec}"
  acl                   = "private"

  tags = {
      name              = "qa-bucket"
      env               = "qa"
  }
}


resource "random_id" "bucket_id" {
  byte_length               = 4
}


resource "aws_s3_bucket" "storage_bucket" {
  bucket                    = "${var.storage_bucket_name}-${random_id.bucket_id.dec}"
  acl                       = "private"

  tags = {
      Name                  = "storage-bucket"
      env                   = "dev"
  }
}

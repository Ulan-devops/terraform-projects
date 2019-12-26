resource "random_id" "talant_bucket_id" {
  byte_length               = 4
}

resource "aws_s3_bucket" "talant_bucket" {
    bucket              =  "${var.talant_bucket_name}-${random_id.talant_bucket_id.dec}"
}


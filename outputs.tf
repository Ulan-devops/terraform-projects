output "region" {
  value = var.aws_region
}

output "bucketname" {
  value = storage.aws_s3_bucket.storage_bucket.id
}


output "region" {
  value = var.aws_region
}

output "bucketname" {
  value = module.storage.storage_bucket
}


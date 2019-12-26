# ----root/outputs.tf---

# -----storage-outputs
output "Bucket_name" {
  value = module.storage.bucketname
}

output "qa_bucket" {
  value = module.qa.qabucket
}


# ----root/outputs.tf---

# -----storage-outputs
output "Bucket name" {
  value = "${module.storage.bucketname}"
}

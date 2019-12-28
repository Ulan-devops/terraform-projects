provider "aws" {
  region                = var.aws_region
}
module "storage" {
  source                = "./storage" 
  storage_bucket_name   = var.storage_bucket_name
}

module "dev" {
  source = "./dev"
  dev_bucket_name       =var.dev_bucket_name
}


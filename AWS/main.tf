provider "aws" {
  region                = var.aws_region
}

module "storage" {
  source                = "./storage"
  project_name          = var.project_name
  
}

module "qa" {
  source = "./qa"
  qa_bucket_name        = var.qa_bucket_name
  
}

module "talant" {
  source = "./talant"
  talant_bucket_name    = var.talant_bucket_name

  
}




provider "aws" {
  region                = var.aws_region
}
module "storage" {
  source                = "./storage" 
}

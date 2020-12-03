provider "aws" {
  profile = var.profile
  region = var.region
}

module "s3-webapp" {
  source  = "app.terraform.io/Storm-Reply/s3-webapp/aws"
  name        = var.name
  region = var.region
  prefix = var.prefix
  version = "1.0.0"
}

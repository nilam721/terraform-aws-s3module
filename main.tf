provider "aws" {
  region = "eu-west-1"
}

module "website_s3_bucket" {
  source = "./modules/aws-s3-static-website-bucket"

  bucket_name = "nilam-bucket-17may"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

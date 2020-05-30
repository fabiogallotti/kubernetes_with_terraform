terraform {
  backend "s3" {
    bucket  = "terraform-kubernetes-fabiogallopolimi"
    region  = "us-east-1"
    key     = "global/s3/terraform.tfstate"
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}
resource "aws_s3_bucket" "bucket_states" {
  bucket = "terraform-kubernetes-fabiogallopolimi1"

  force_destroy = true

  versioning {
      enabled = true
  }
}
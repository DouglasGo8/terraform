provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "manage_state_bucket" {
  bucket = "management-state-tool-bucket"

  versioning {
    enabled = true
  }

  lifecycle {
      prevent_destroy = true
  }
}

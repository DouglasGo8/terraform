terraform {
  backend "s3" {
    bucket  = "management-state-tool-bucket"
    key     = "terraform.state"
    region  = "us-east-1"
    encrypt = true
  }
}

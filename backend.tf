terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket"
    key    = "three-tier/terraform.tfstate"
    region = "ap-south-1"
  }
}

terraform {
  backend "s3" {
    bucket = "bucket-1410"
    key    = "vm.tfstate"
    region = "us-east-1"
  }
}
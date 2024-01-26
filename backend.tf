terraform {
  backend "s3" {
    bucket         = var.bucketname
    key            = "state/terraform.tfstate"
    region         = var.region
    dynamodb_table = var.dynamodb_table_name
    encrypt        = true
  }
}

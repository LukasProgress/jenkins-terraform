variable "region" {
    type = string
    default = "eu-central-1"
}

variable "ami" {
  type = string
  default = "ami-09024b009ae9e7adf"
}

variable "bucketname" {
  type = string
  default = "jenkins-bucket-lukas-26-01"
}

variable "dynamodb_table_name" {
  type = string
  default = "dynamodb-terraform-lock"
}
variable "vpc_cidr" {
    default ="10.0.0.0/16"   
}

variable "vpc_tags" {
  type = map
}

variable "subnet_tags" {
  type = map
}

variable "vpcid" {}

variable "subnet_cidr" {
  default = "10.0.0.0/24"
}


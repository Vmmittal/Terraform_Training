resource "aws_vpc" "vpc" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"
  tags = "${var.vpc_tags}"
}

resource "aws_subnet" "subnet1" {
  vpc_id     = "${var.vpcid}"
  cidr_block = "${var.subnet_cidr}"
  availability_zone = "us-east-1a"
  tags = "${var.subnet_tags}"
}



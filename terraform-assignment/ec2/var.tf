

variable "ami_id" {}

variable "subnet1_id" {}

variable "inst_type" {
    default = "t2.micro"
}

variable "ec2_tags" {
    type = map 
}
 variable "count_ec2" {
    type = number
    default = 1
 }
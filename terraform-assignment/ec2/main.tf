resource "aws_instance" "ec2_inst" {
    count = "${var.count_ec2}"
    ami = "${var.ami_id}"
    instance_type = "${var.inst_type}"
    subnet_id= "${var.subnet1_id}"
      
    tags = "${var.ec2_tags}"
    volume_tags = "${var.ec2_tags}"
}



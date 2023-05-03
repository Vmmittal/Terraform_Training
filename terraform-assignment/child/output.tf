output "output_vpc_id" {
    value = module.module-Vpc.my-vpc-id 
}

output "output_sub_id" {
    value = module.module-Vpc.my-subnet-id 
}

output "output_ec2_id" {
    value = module.module-ec2.ec2_id 
}

output "output-all-s3" {
    value = module.module-s3.All-buckets
  
}
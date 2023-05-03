
module "module-Vpc" {
    source = "../network"
    vpcid = "${module.module-Vpc.my-vpc-id}"
    vpc_tags = {
        Name="my-vpc"
       "owner":"vipul.kumar@cloudeq.com"
       "purpose":"Trainig" 
    }
     subnet_tags = {
       "owner":"vipul.kumar@cloudeq.com"
       "purpose":"Trainig"
        Name="my-subnet-1"
    }  
}


module "module-ec2" {
    source = "../ec2"
    count_ec2 = 1
    depends_on = [ module.module-Vpc ]
    subnet1_id = module.module-Vpc.my-subnet-id
    ami_id = "ami-02396cdd13e9a1257"
    inst_type = "t2.micro"
    ec2_tags = {
      Name="My-Ec2"
      "owner":"vipl.kuamr@cludeq.com"
      "purpose":"Trainign"
    }
}


module "module-s3" {
  source = "../s3"
  bucket_names = {
     "1":"buck-1"
     "2":"buck-2"
  }
  s3_tags = {
     "owner":"vipl.kuamr@cludeq.com"
    "purpose":"Trainign"
  }
}





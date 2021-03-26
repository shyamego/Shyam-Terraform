terraform {
	required_version 	= ">=0.12"
}

provider "aws" { 
  region 	= "us-east-2"
 }

module "my_vpc" {
       source  = "./MODULES/vpc"
       vpc_id = module.my_vpc.vpc_id
}

module "security_group" {
        source  = "./MODULES/security_groups"
        sg_vpc_id = module.my_vpc.vpc_id
}

module "my_ec2" {
	source 	= "./MODULES/ec2"
        ec2_subnet_id = module.my_vpc.subnet_id
}

module "my_s3" {
        source  = "./MODULES/s3"
}






#module "Provisioners" {
#       source  = "./MODULES/ec2_Provisioners"
#}


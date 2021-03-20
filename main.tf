terraform {
	required_version 	= ">=0.12"
}

provider "aws" {
	region 	= "us-east-2"
}

# module "my_vpc" {
#        source  = "./MODULES/vpc"
#}

# module "my_ec2" {
#	source 	= "./MODULES/ec2"
# }


module "my_s3" {
        source  = "./MODULES/s3"
}

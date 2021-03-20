resource "aws_vpc" "dsk_vpc" {
  cidr_block       = var.cidr_range
  instance_tenancy = var.ten_name

  tags = {
    Name = "main"
  }
}


resource "aws_subnet" "dsk_subnet" {
  vpc_id            = aws_vpc.dsk_vpc.id
  cidr_block        = "10.0.0.0/24"
#  availability_zone = "us-east-2"

  tags = {
    Name = "tf-example"
  }
}



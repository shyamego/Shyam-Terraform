resource "aws_vpc" "dsk_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.ten_name
  tags = {
    Name = "dsk-vpc2"
  }
}


resource "aws_subnet" "dsk_subnet" {
  vpc_id            = aws_vpc.dsk_vpc.id
  cidr_block        = var.subnet_cidr
  tags = {
    Name = "dsk-subnet"
  }
}

output "vpc_id"{
value = aws_vpc.dsk_vpc.id
}

output "subnet_id"{
value=aws_subnet.dsk_subnet.id
}

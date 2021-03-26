
resource "aws_instance" "shyam" {
  ami           = var.ami
  instance_type = var.instance_type
  count		= var.ins_count
  subnet_id	= var.ec2_subnet_id
  tags = {
    Name = "dsk-instance"
  }
}




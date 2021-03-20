resource "aws_instance" "shyam" {
  ami           = var.ami
  instance_type = var.instance_type
  count		= var.ins_count

  tags = {
    Name = "Hell"
  }
}


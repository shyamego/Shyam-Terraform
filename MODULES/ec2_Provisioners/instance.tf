
resource "aws_instance" "shyam" {
  ami           = var.ami
  instance_type = var.instance_type
  count		= var.ins_count

  connection {
  type		= "ssh"
  host		= self.public_ip
  user		= "ec2-user"
  private_key	= file("/etc/TERRAFORM/vspdskkey.pem")

  }

  tags = {
    Name = "dsk-ec2-provision"
  }

  provisioner "local-exec" {
  command = " echo ${self.public_ip} >> dasari-pro.txt"
  }

  provisioner "file" {
  content = "HaiShyam"
  destination = "/tmp/dasari.txt"
  }

}


output "ec2provision" {

value	= aws_instance.shyam.id

}

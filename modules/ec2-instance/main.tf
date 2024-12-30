variable "sg" {}




resource "aws_instance" "my-ins" {
  ami             = "ami-0e86e20dae9224db8"
  instance_type   = "t2.micro"
  key_name = "my_virginia_455"
  vpc_security_group_ids = var.sg
  count = 1
  tags = {
    Name = "server-${count.index+1}"
  }
}

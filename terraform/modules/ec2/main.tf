resource "aws_instance" "web" {
  count         = 1
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = element(var.subnets, count.index)
  security_groups = [aws_security_group.web-sg.id]

  user_data = file("${path.module}/user-data.sh")
}
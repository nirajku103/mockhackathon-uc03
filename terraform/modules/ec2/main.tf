data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]
 
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}
 
resource "aws_instance" "web" {
  count                  = length(var.public_subnets)
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  subnet_id              = var.public_subnets[count.index]
  vpc_security_group_ids = var.security_groups
  user_data = file("${path.module}/user-data.sh")
 
  tags = {
    Name = "web-server-${count.index + 1}"
  }
}

resource "aws_db_subnet_group" "db" {
  name       = "db-subnet-group"
  subnet_ids = var.private_subnets
}
 
resource "aws_db_instance" "mysql" {
  identifier             = "mysql-db"
  engine                = "mysql"
  engine_version        = "5.7"
  instance_class        = var.db_instance_class
  allocated_storage     = 20
  storage_type          = "gp2"
  username              = var.db_username
  password              = var.db_password
  db_name               = var.db_name
  db_subnet_group_name = aws_db_subnet_group.db.name
  vpc_security_group_ids = var.security_groups
  skip_final_snapshot   = true
  multi_az              = true
}
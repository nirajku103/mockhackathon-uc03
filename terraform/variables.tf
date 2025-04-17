variable "aws_region" {
  description = "AWS region"
  default     = "eu-north-1"
}
 
variable "vpc_cidr" {
  description = "CIDR block for VPC"
default = "10.0.0.0/16"
}
 
variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
default = ["10.0.1.0/24", "10.0.2.0/24"]
}
 
variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
default = ["10.0.3.0/24", "10.0.4.0/24"]
}
 
variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["eu-north-1a", "eu-north-1b"]
}
 
variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}
 
variable "db_instance_class" {
  description = "RDS instance class"
  default     = "db.t2.micro"
}
 
variable "db_name" {
  description = "Database name"
  default     = "mydb"
}
 
variable "db_username" {
  description = "Database username"
  default     = "admin"
}
 
variable "db_password" {
  description = "Database password"
  sensitive   = true
}
variable "ami" {
  description = "The AMI ID for the EC2 instances"
  type        = string
}
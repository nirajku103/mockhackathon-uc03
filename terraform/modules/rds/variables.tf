variable "private_subnets" {
  description = "List of private subnet IDs"
  type        = list(string)
}
 
variable "security_groups" {
  description = "List of security group IDs"
  type        = list(string)
}
 
variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
}
 
variable "db_name" {
  description = "Database name"
  type        = string
}
 
variable "db_username" {
  description = "Database username"
  type        = string
}
 
variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
}
```
 
##### modules/rds/outputs.tf
```hcl
output "rds_endpoint" {
  description = "RDS endpoint"
  value       = aws_db_instance.mysql.endpoint
}
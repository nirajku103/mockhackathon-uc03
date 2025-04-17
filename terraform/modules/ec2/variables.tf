variable "public_subnets" {
  description = "List of public subnet IDs"
  type        = list(string)
}
 
variable "security_groups" {
  description = "List of security group IDs"
  type        = list(string)
}
 
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}
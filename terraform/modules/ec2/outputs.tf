output "instance_public_ips" {
  description = "List of public IP addresses of EC2 instances"
  value       = aws_instance.web[*].public_ip
}
output "web_server_public_ips" {
  description = "List of public IP addresses of the web servers"
  value       = module.web_servers.instance_public_ips
}
 
output "rds_endpoint" {
  description = "The endpoint of the RDS instance"
  value       = module.database.rds_endpoint
  sensitive   = true
}
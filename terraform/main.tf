module "vpc" {
  source               = "./modules/vpc"
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
}
 
module "security_groups" {
  source = "./modules/security-groups"
  vpc_id = module.vpc.vpc_id
}
 
module "web_servers" {
  source          = "./modules/ec2"
  public_subnets  = module.vpc.public_subnet_ids
  security_groups = [module.security_groups.web_sg_id]
  instance_type   = var.instance_type
}
 
module "database" {
  source            = "./modules/rds"
  private_subnets   = module.vpc.private_subnet_ids
  security_groups   = [module.security_groups.db_sg_id]
  db_instance_class = var.db_instance_class
  db_name           = var.db_name
  db_username       = var.db_username
  db_password       = var.db_password
}
[command]/home/runner/work/_temp/fc877f51-3c17-44fe-bf76-7021c8ec39c3/terraform-bin show -no-color tfplan

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create
  ~ update in-place

Terraform will perform the following actions:

  # module.ec2.aws_instance.web[0] will be created
  + resource "aws_instance" "web" {
      + ami                                  = "ami-0274f4b62b6ae3bd5"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = true
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + enable_primary_ipv6                  = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t3.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "WebServer-0"
        }
      + tags_all                             = {
          + "Name" = "WebServer-0"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + instance_market_options (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device (known after apply)
    }

  # module.ec2.aws_instance.web[1] will be created
  + resource "aws_instance" "web" {
      + ami                                  = "ami-0274f4b62b6ae3bd5"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = true
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + enable_primary_ipv6                  = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t3.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "WebServer-1"
        }
      + tags_all                             = {
          + "Name" = "WebServer-1"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + instance_market_options (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device (known after apply)
    }

  # module.rds.aws_db_instance.default will be updated in-place
  ~ resource "aws_db_instance" "default" {
        id                                    = "db-CN5S5DTAJ3NY7KUA3XJNKEF3NY"
        tags                                  = {}
      ~ vpc_security_group_ids                = [
          - "sg-0f55e4dee760b6738",
            # (1 unchanged element hidden)
        ]
        # (71 unchanged attributes hidden)
    }

  # module.sg.aws_security_group.web_sg will be created
  + resource "aws_security_group" "web_sg" {
      + arn                    = (known after apply)
      + description            = "Security group for web servers"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
                # (1 unchanged attribute hidden)
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
                # (1 unchanged attribute hidden)
            },
        ]
      + name                   = "web-sg"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags_all               = (known after apply)
      + vpc_id                 = "vpc-01435138256dc17a8"
    }

  # module.vpc.aws_internet_gateway.igw will be created
  + resource "aws_internet_gateway" "igw" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags_all = (known after apply)
      + vpc_id   = "vpc-01435138256dc17a8"
    }

  # module.vpc.aws_route_table.private will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags_all         = (known after apply)
      + vpc_id           = "vpc-01435138256dc17a8"
    }

  # module.vpc.aws_route_table.public will be created
  + resource "aws_route_table" "public" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + cidr_block                 = "0.0.0.0/0"
              + gateway_id                 = (known after apply)
                # (11 unchanged attributes hidden)
            },
        ]
      + tags_all         = (known after apply)
      + vpc_id           = "vpc-01435138256dc17a8"
    }

  # module.vpc.aws_route_table_association.private[0] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = "subnet-0e1a8de12ce029901"
    }

  # module.vpc.aws_route_table_association.private[1] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = "subnet-03231a2c94cf13fae"
    }

  # module.vpc.aws_route_table_association.public[0] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[1] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_subnet.public[0] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "eu-north-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags_all                                       = (known after apply)
      + vpc_id                                         = "vpc-01435138256dc17a8"
    }

  # module.vpc.aws_subnet.public[1] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "eu-north-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags_all                                       = (known after apply)
      + vpc_id                                         = "vpc-01435138256dc17a8"
    }

Plan: 12 to add, 1 to change, 0 to destroy.
::debug::Terraform exited with code 0.
::debug::stdout: %0ATerraform used the selected providers to generate the following execution%0Aplan. Resource actions are indicated with the following symbols:%0A  + create%0A  ~ update in-place%0A%0ATerraform will perform the following actions:%0A%0A  # module.ec2.aws_instance.web[0] will be created%0A  + resource "aws_instance" "web" {%0A      + ami                                  = "ami-0274f4b62b6ae3bd5"%0A      + arn                                  = (known after apply)%0A      + associate_public_ip_address          = true%0A      + availability_zone                    = (known after apply)%0A      + cpu_core_count                       = (known after apply)%0A      + cpu_threads_per_core                 = (known after apply)%0A      + disable_api_stop                     = (known after apply)%0A      + disable_api_termination              = (known after apply)%0A      + ebs_optimized                        = (known after apply)%0A      + enable_primary_ipv6                  = (known after apply)%0A      + get_password_data                    = false%0A      + host_id                              = (known after apply)%0A      + host_resource_group_arn              = (known after apply)%0A      + iam_instance_profile                 = (known after apply)%0A      + id                                   = (known after apply)%0A      + instance_initiated_shutdown_behavior = (known after apply)%0A      + instance_lifecycle                   = (known after apply)%0A      + instance_state                       = (known after apply)%0A      + instance_type                        = "t3.micro"%0A      + ipv6_address_count                   = (known after apply)%0A      + ipv6_addresses                       = (known after apply)%0A      + key_name                             = (known after apply)%0A      + monitoring                           = (known after apply)%0A      + outpost_arn                          = (known after apply)%0A      + password_data                        = (known after apply)%0A      + placement_group                      = (known after apply)%0A      + placement_partition_number           = (known after apply)%0A      + primary_network_interface_id         = (known after apply)%0A      + private_dns                          = (known after apply)%0A      + private_ip                           = (known after apply)%0A      + public_dns                           = (known after apply)%0A      + public_ip                            = (known after apply)%0A      + secondary_private_ips                = (known after apply)%0A      + security_groups                      = (known after apply)%0A      + source_dest_check                    = true%0A      + spot_instance_request_id             = (known after apply)%0A      + subnet_id                            = (known after apply)%0A      + tags                                 = {%0A          + "Name" = "WebServer-0"%0A        }%0A      + tags_all                             = {%0A          + "Name" = "WebServer-0"%0A        }%0A      + tenancy                              = (known after apply)%0A      + user_data                            = (known after apply)%0A      + user_data_base64                     = (known after apply)%0A      + user_data_replace_on_change          = false%0A      + vpc_security_group_ids               = (known after apply)%0A%0A      + capacity_reservation_specification (known after apply)%0A%0A      + cpu_options (known after apply)%0A%0A      + ebs_block_device (known after apply)%0A%0A      + enclave_options (known after apply)%0A%0A      + ephemeral_block_device (known after apply)%0A%0A      + instance_market_options (known after apply)%0A%0A      + maintenance_options (known after apply)%0A%0A      + metadata_options (known after apply)%0A%0A      + network_interface (known after apply)%0A%0A      + private_dns_name_options (known after apply)%0A%0A      + root_block_device (known after apply)%0A    }%0A%0A  # module.ec2.aws_instance.web[1] will be created%0A  + resource "aws_instance" "web" {%0A      + ami                                  = "ami-0274f4b62b6ae3bd5"%0A      + arn                                  = (known after apply)%0A      + associate_public_ip_address          = true%0A      + availability_zone                    = (known after apply)%0A      + cpu_core_count                       = (known after apply)%0A      + cpu_threads_per_core                 = (known after apply)%0A      + disable_api_stop                     = (known after apply)%0A      + disable_api_termination              = (known after apply)%0A      + ebs_optimized                        = (known after apply)%0A      + enable_primary_ipv6                  = (known after apply)%0A      + get_password_data                    = false%0A      + host_id                              = (known after apply)%0A      + host_resource_group_arn              = (known after apply)%0A      + iam_instance_profile                 = (known after apply)%0A      + id                                   = (known after apply)%0A      + instance_initiated_shutdown_behavior = (known after apply)%0A      + instance_lifecycle                   = (known after apply)%0A      + instance_state                       = (known after apply)%0A      + instance_type                        = "t3.micro"%0A      + ipv6_address_count                   = (known after apply)%0A      + ipv6_addresses                       = (known after apply)%0A      + key_name                             = (known after apply)%0A      + monitoring                           = (known after apply)%0A      + outpost_arn                          = (known after apply)%0A      + password_data                        = (known after apply)%0A      + placement_group                      = (known after apply)%0A      + placement_partition_number           = (known after apply)%0A      + primary_network_interface_id         = (known after apply)%0A      + private_dns                          = (known after apply)%0A      + private_ip                           = (known after apply)%0A      + public_dns                           = (known after apply)%0A      + public_ip                            = (known after apply)%0A      + secondary_private_ips                = (known after apply)%0A      + security_groups                      = (known after apply)%0A      + source_dest_check                    = true%0A      + spot_instance_request_id             = (known after apply)%0A      + subnet_id                            = (known after apply)%0A      + tags                                 = {%0A          + "Name" = "WebServer-1"%0A        }%0A      + tags_all                             = {%0A          + "Name" = "WebServer-1"%0A        }%0A      + tenancy                              = (known after apply)%0A      + user_data                            = (known after apply)%0A      + user_data_base64                     = (known after apply)%0A      + user_data_replace_on_change          = false%0A      + vpc_security_group_ids               = (known after apply)%0A%0A      + capacity_reservation_specification (known after apply)%0A%0A      + cpu_options (known after apply)%0A%0A      + ebs_block_device (known after apply)%0A%0A      + enclave_options (known after apply)%0A%0A      + ephemeral_block_device (known after apply)%0A%0A      + instance_market_options (known after apply)%0A%0A      + maintenance_options (known after apply)%0A%0A      + metadata_options (known after apply)%0A%0A      + network_interface (known after apply)%0A%0A      + private_dns_name_options (known after apply)%0A%0A      + root_block_device (known after apply)%0A    }%0A%0A  # module.rds.aws_db_instance.default will be updated in-place%0A  ~ resource "aws_db_instance" "default" {%0A        id                                    = "db-CN5S5DTAJ3NY7KUA3XJNKEF3NY"%0A        tags                                  = {}%0A      ~ vpc_security_group_ids                = [%0A          - "sg-0f55e4dee760b6738",%0A            # (1 unchanged element hidden)%0A        ]%0A        # (71 unchanged attributes hidden)%0A    }%0A%0A  # module.sg.aws_security_group.web_sg will be created%0A  + resource "aws_security_group" "web_sg" {%0A      + arn                    = (known after apply)%0A      + description            = "Security group for web servers"%0A      + egress                 = [%0A          + {%0A              + cidr_blocks      = [%0A                  + "0.0.0.0/0",%0A                ]%0A              + from_port        = 0%0A              + ipv6_cidr_blocks = []%0A              + prefix_list_ids  = []%0A              + protocol         = "-1"%0A              + security_groups  = []%0A              + self             = false%0A              + to_port          = 0%0A                # (1 unchanged attribute hidden)%0A            },%0A        ]%0A      + id                     = (known after apply)%0A      + ingress                = [%0A          + {%0A              + cidr_blocks      = [%0A                  + "0.0.0.0/0",%0A                ]%0A              + from_port        = 80%0A              + ipv6_cidr_blocks = []%0A              + prefix_list_ids  = []%0A              + protocol         = "tcp"%0A              + security_groups  = []%0A              + self             = false%0A              + to_port          = 80%0A                # (1 unchanged attribute hidden)%0A            },%0A        ]%0A      + name                   = "web-sg"%0A      + name_prefix            = (known after apply)%0A      + owner_id               = (known after apply)%0A      + revoke_rules_on_delete = false%0A      + tags_all               = (known after apply)%0A      + vpc_id                 = "vpc-01435138256dc17a8"%0A    }%0A%0A  # module.vpc.aws_internet_gateway.igw will be created%0A  + resource "aws_internet_gateway" "igw" {%0A      + arn      = (known after apply)%0A      + id       = (known after apply)%0A      + owner_id = (known after apply)%0A      + tags_all = (known after apply)%0A      + vpc_id   = "vpc-01435138256dc17a8"%0A    }%0A%0A  # module.vpc.aws_route_table.private will be created%0A  + resource "aws_route_table" "private" {%0A      + arn              = (known after apply)%0A      + id               = (known after apply)%0A      + owner_id         = (known after apply)%0A      + propagating_vgws = (known after apply)%0A      + route            = (known after apply)%0A      + tags_all         = (known after apply)%0A      + vpc_id           = "vpc-01435138256dc17a8"%0A    }%0A%0A  # module.vpc.aws_route_table.public will be created%0A  + resource "aws_route_table" "public" {%0A      + arn              = (known after apply)%0A      + id               = (known after apply)%0A      + owner_id         = (known after apply)%0A      + propagating_vgws = (known after apply)%0A      + route            = [%0A          + {%0A              + cidr_block                 = "0.0.0.0/0"%0A              + gateway_id                 = (known after apply)%0A                # (11 unchanged attributes hidden)%0A            },%0A        ]%0A      + tags_all         = (known after apply)%0A      + vpc_id           = "vpc-01435138256dc17a8"%0A    }%0A%0A  # module.vpc.aws_route_table_association.private[0] will be created%0A  + resource "aws_route_table_association" "private" {%0A      + id             = (known after apply)%0A      + route_table_id = (known after apply)%0A      + subnet_id      = "subnet-0e1a8de12ce029901"%0A    }%0A%0A  # module.vpc.aws_route_table_association.private[1] will be created%0A  + resource "aws_route_table_association" "private" {%0A      + id             = (known after apply)%0A      + route_table_id = (known after apply)%0A      + subnet_id      = "subnet-03231a2c94cf13fae"%0A    }%0A%0A  # module.vpc.aws_route_table_association.public[0] will be created%0A  + resource "aws_route_table_association" "public" {%0A      + id             = (known after apply)%0A      + route_table_id = (known after apply)%0A      + subnet_id      = (known after apply)%0A    }%0A%0A  # module.vpc.aws_route_table_association.public[1] will be created%0A  + resource "aws_route_table_association" "public" {%0A      + id             = (known after apply)%0A      + route_table_id = (known after apply)%0A      + subnet_id      = (known after apply)%0A    }%0A%0A  # module.vpc.aws_subnet.public[0] will be created%0A  + resource "aws_subnet" "public" {%0A      + arn                                            = (known after apply)%0A      + assign_ipv6_address_on_creation                = false%0A      + availability_zone                              = "eu-north-1a"%0A      + availability_zone_id                           = (known after apply)%0A      + cidr_block                                     = "10.0.1.0/24"%0A      + enable_dns64                                   = false%0A      + enable_resource_name_dns_a_record_on_launch    = false%0A      + enable_resource_name_dns_aaaa_record_on_launch = false%0A      + id                                             = (known after apply)%0A      + ipv6_cidr_block_association_id                 = (known after apply)%0A      + ipv6_native                                    = false%0A      + map_public_ip_on_launch                        = true%0A      + owner_id                                       = (known after apply)%0A      + private_dns_hostname_type_on_launch            = (known after apply)%0A      + tags_all                                       = (known after apply)%0A      + vpc_id                                         = "vpc-01435138256dc17a8"%0A    }%0A%0A  # module.vpc.aws_subnet.public[1] will be created%0A  + resource "aws_subnet" "public" {%0A      + arn                                            = (known after apply)%0A      + assign_ipv6_address_on_creation                = false%0A      + availability_zone                              = "eu-north-1b"%0A      + availability_zone_id                           = (known after apply)%0A      + cidr_block                                     = "10.0.2.0/24"%0A      + enable_dns64                                   = false%0A      + enable_resource_name_dns_a_record_on_launch    = false%0A      + enable_resource_name_dns_aaaa_record_on_launch = false%0A      + id                                             = (known after apply)%0A      + ipv6_cidr_block_association_id                 = (known after apply)%0A      + ipv6_native                                    = false%0A      + map_public_ip_on_launch                        = true%0A      + owner_id                                       = (known after apply)%0A      + private_dns_hostname_type_on_launch            = (known after apply)%0A      + tags_all                                       = (known after apply)%0A      + vpc_id                                         = "vpc-01435138256dc17a8"%0A    }%0A%0APlan: 12 to add, 1 to change, 0 to destroy.%0A
::debug::stderr: 
::debug::exitcode: 0

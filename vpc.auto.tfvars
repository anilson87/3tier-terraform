# VPC Variables
vpc_name = "terraform-vpc"
vpc_cidr_block = "30.0.0.0/16"
vpc_availability_zones = ["us-east-1a", "us-east-1b"]
vpc_public_subnets = ["30.0.101.0/24", "30.0.102.0/24"]
vpc_private_subnets = ["30.0.1.0/24", "30.0.2.0/24"]
vpc_database_subnets= ["30.0.151.0/24", "30.0.152.0/24"]
vpc_create_database_subnet_group = true 
vpc_create_database_subnet_route_table = true   

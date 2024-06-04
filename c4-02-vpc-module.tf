module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"


    # VPC details
    name            = "${local.name}-${var.vpc_name}"
    cidr            = var.vpc_cidr_block
    azs             = var.vpc_availability_zones
    public_subnets  = var.vpc_public_subnets
    private_subnets = var.vpc_private_subnets  

    # Database subnets
    database_subnets = var.vpc_database_subnets
    create_database_subnet_group = var.vpc_create_database_subnet_group
    create_database_subnet_route_table = var.vpc_create_database_subnet_route_table

    # NAT gateway
    enable_nat_gateway = true
    single_nat_gateway = true

    # DNS Parameters
    enable_dns_hostnames = true
    enable_dns_support   = true

    public_subnet_tags = {
        Name = "public-subnets"
    }

    private_subnet_tags = {
        Name = "private-subnets"
    }

    database_subnet_tags = {
        Name = "database-subnets"
    }

    tags = {
        Owner = "Anil"
        Terraform = "true"
        Environment = "dev"
    }

    vpc_tags = {
        Name = "vpc-dev"
    }
}
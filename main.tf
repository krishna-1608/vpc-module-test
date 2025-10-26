module "vpc" {
    source = "../terraform-aws-vpc"
    # vpc-cidr = "10.0.0.0/16"
    # project_name = "roboshop"
    # environment = "dev" 

    vpc-cidr = var.vpc_cider
    project_name = var.project_name
    environment = var.environment
    vpc_tags = var.vpc_tags

    #public subnets 
    public_subnet_cidrs = var.public_subnet_cidrs

    #private subnets 
    private_subnet_cidrs = var.private_subnet_cidrs

    #database subnets 
    database_subnet_cidrs = var.database_subnet_cidrs
}
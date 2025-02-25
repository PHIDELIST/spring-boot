provider "aws" {
  region = var.region
}

# VPC 
module "vpc" {
  source             = "./modules/vpc"
  cidr_block           = var.cidr_block
  availability_zones = var.availability_zones
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs

}

# ALB 
module "alb" {
  source           = "./modules/alb"
  subnets          = module.vpc.public_subnets
  security_groups  = [module.vpc.alb_security_group_id]
  vpc_id           = module.vpc.vpc_id
}


# Secrets Manager 
module "secrets_manager" {
  source       = "./modules/secrets-manager"
}

# CloudWatch 
module "cloudwatch" {
  source = "./modules/cloudwatch"
}

# ECS
module "ecs" {
  source           = "./modules/ecs"
  cluster_name     = "spring-boot-env-ecs-cluster"
  task_family      = "spring-boot-env-task-family"
  container_name   = "spring-boot-env-container"
  container_image  = "576997243977.dkr.ecr.eu-west-1.amazonaws.com/spring-env"
  container_port   = 8080
  subnets          = module.vpc.public_subnets
  security_group   = module.vpc.ecs_security_group_id
  desired_count    = 1
  target_group_arn = module.alb.target_group_arn 
  region           = var.region
  secret_manager_arn = module.secrets_manager.spring-boot-env_secrets_arn
}

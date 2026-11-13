module "vpc" {
  source = "../../modules/vpc"

  name                 = "dev"
  vpc_cidr             = "10.0.0.0/16"
  azs                  = ["ap-south-1a", "ap-south-1b"]
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
}

module "ecr" {
  source = "../../modules/ecr"

  name = "ecs-eks-demo"
}

module "ecs" {
  source = "../../modules/ecs"

  name              = "ecs-eks-demo"
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  alb_sg_id         = module.vpc.alb_sg_id
  app_sg_id         = module.vpc.app_sg_id
  image             = "${module.ecr.repository_url}:1.0.0"
}
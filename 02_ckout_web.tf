module "webserver" {
  source              = "./modules/webserver"
  web_instance_count  = var.web_instance_count
  region              = var.region
  instance_type       = "t2.micro"
  private_subnets_id   = module.network.private_subnet_id
  public_subnets_id    = module.network.public_subnet_id
  vpc_sg_id           = module.network.default_sg_id
  key_name            = var.key_name
  environment         = var.env
  vpc_id              = module.network.vpc_id
  vpc_cidr_block      = var.vpc_cidr
}

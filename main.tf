module "s3-bucket" {
  source = "./modules/s3-bucket"
}

module "security-groups" {
  source = "./modules/security-groups"
}

module "ec2-instance" {
  source = "./modules/ec2-instance"
 sg = [module.security-groups.]
}

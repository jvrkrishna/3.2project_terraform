############## make a source module reference in terraform#########
#module "instances" {
#  for_each = var.component
#  source = "git::https://github.com/jvrkrishna/project_module.git"
#  component = each.key
#  env = var.env
#  tags = each.value["tags"]
#}

module "vpc" {
  source = "git::https://github.com/jvrkrishna/project_module_vpc.git"
  for_each = var.vpc
  cidr_block = each.value["cidr_block"]
}

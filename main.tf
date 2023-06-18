############## make a source module reference in terraform#########
module "instances" {
  for_each = var.component
  source = "git::https://github.com/jvrkrishna/project_module.git"
  component = each.key
  env = var.env
}
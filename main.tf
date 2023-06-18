############## make a source module reference in terraform#########
module "instances" {
  source = "git::https://github.com/jvrkrishna/project_module.git"
  component = length(var.component)
  env = var.env
}
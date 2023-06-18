module "instances" {
  source = "git::https://github.com/jvrkrishna/project_module.git"
  component = var.component
  env = var.env
}
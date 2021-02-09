
module "container_registry" {
  source = "./../../../module/gcp/container_registry"

  project_id = var.project_id
}

output "container_registry" {
  value = module.container_registry.container_registry
}
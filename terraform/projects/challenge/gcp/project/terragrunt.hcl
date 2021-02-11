locals {
  vars = read_terragrunt_config(find_in_parent_folders("vars.hcl"))

  project_id = local.vars.locals.project_id
}

terraform {
  source = "./../../../../module/gcp/project"
}

include {
  path = find_in_parent_folders()
}

inputs = merge({
  new_project_id    = "${local.project_id}"
  new_project_name  = "${local.project_id}"
})

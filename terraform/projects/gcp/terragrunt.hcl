locals {
  # Automatically load account-level variables
  vars = read_terragrunt_config(find_in_parent_folders("vars.hcl"))

  # Extract the variables we need for easy access
  project_id = local.vars.locals.project_id
  region = local.vars.locals.region
  zone = local.vars.locals.zone
}

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "google" {
  project = "${local.project_id}"
  region  = "${local.region}"
  zone    = "${local.zone}"
}
EOF
}

remote_state {
  backend = "gcs"
  config = {
    bucket  = "terraform-tfstate-storage-bucket"
    prefix  = "pipeline/${path_relative_to_include()}/terraform.tfstate"
  }
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}

inputs = merge(
  local.vars.locals
)
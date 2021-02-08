inputs = merge(yamldecode(file("./../vars.yaml")), {})

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}
EOF
}
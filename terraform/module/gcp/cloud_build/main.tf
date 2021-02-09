resource "google_cloudbuild_trigger" "default" {

  trigger_template {
    branch_name = var.git_branch_name
    repo_name   = var.git_repo_name
  }

  description = var.description
  name = var.name

  filename = var.fileName
  included_files = var.included_files
}
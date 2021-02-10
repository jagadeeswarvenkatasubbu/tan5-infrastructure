module "28dc" {
  source = "./../../../module/gcp/cloud_build"

  name            = "28dc"
  description     = "Build job to deploy the 28dc application"
  git_branch_name = "main"
  git_repo_name   = "github_jagadeeswarvenkatasubbu_28dc"
  fileName        = "cloudbuild.yaml"
}

module "48dc" {
  source = "./../../../module/gcp/cloud_build"

  name            = "48dc"
  description     = "Build job to deploy the 28dc application"
  git_branch_name = "main"
  git_repo_name   = "github_jagadeeswarvenkatasubbu_28dc"
  fileName        = "cloudbuild.yaml"
}

module "38dc" {
  source = "./../../../module/gcp/cloud_build"

  name            = "38dc"
  description     = "Build job to deploy the 28dc application"
  git_branch_name = "main"
  git_repo_name   = "github_jagadeeswarvenkatasubbu_28dc"
  fileName        = "cloudbuild.yaml"
}
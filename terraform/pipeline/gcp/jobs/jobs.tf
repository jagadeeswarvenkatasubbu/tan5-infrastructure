module "twentyeightdc" {
  source = "./../../../module/gcp/cloud_build"

  name            = "28dc"
  description     = "Build job to deploy the 28dc application"
  git_branch_name = "main"
  git_repo_name   = "github_jagadeeswarvenkatasubbu_28dc"
  fileName        = "cloudbuild.yaml"
}

module "fortyeightdc" {
  source = "./../../../module/gcp/cloud_build"

  name            = "fortyeightdc"
  description     = "Build job to deploy the 28dc application"
  git_branch_name = "main"
  git_repo_name   = "github_jagadeeswarvenkatasubbu_28dc"
  fileName        = "cloudbuild.yaml"
}

module "thirtyeightdc" {
  source = "./../../../module/gcp/cloud_build"

  name            = "thirtyeightdc"
  description     = "Build job to deploy the 28dc application"
  git_branch_name = "main"
  git_repo_name   = "github_jagadeeswarvenkatasubbu_28dc"
  fileName        = "cloudbuild.yaml"
}
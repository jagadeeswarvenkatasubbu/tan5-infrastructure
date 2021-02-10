module "twentyeightdc" {
  source = "./../../../module/gcp/cloud_build"

  name            = "twentyeightdc"
  description     = "Build job to deploy the 28dc application"
  git_branch_name = "main"
  git_repo_name   = "github_jagadeeswarvenkatasubbu_28dc"
  fileName        = "cloudbuild.yaml"
}

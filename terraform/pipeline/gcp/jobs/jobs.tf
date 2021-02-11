module "twentyeightdc" {
  source = "./../../../module/gcp/cloud_build"

  name            = "twentyeightdc"
  description     = "Build job to deploy the 28dc application"
  git_branch_name = "main"
  git_repo_name   = "github_jagadeeswarvenkatasubbu_28dc"
  fileName        = "cloudbuild.yaml"
}

module "challengeproject" {
  source = "./../../../module/gcp/cloud_build"

  name            = "challengeproject"
  description     = "Build job to deploy the challenge project environment"
  git_branch_name = "main"
  git_repo_name   = "github_jagadeeswarvenkatasubbu_tan5-infrastructure"
  fileName        = "terraform/projects/challenge/cloudbuild.yaml"
  included_files  = [
    "terraform/projects/challenge/**"
  ]
}

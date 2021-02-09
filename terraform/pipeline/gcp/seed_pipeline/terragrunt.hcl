terraform {
  source = "./../../../module/gcp/cloud_build"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  description     = "Seed job to build further jobs"
  fileName        = "terraform/pipeline/gcp/seed_pipeline/cloudbuild.yaml"
  git_branch_name = "main"
  git_repo_name   = "github_jagadeeswarvenkatasubbu_tan5-infrastructure"
  name            = "seedjob"
  included_files  = ["terraform/pipeline/gcp/seed_pipeline/**"]
}

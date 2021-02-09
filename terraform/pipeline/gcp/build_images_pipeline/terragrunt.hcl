terraform {
  source = "./../../../module/gcp/cloud_build"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  description     = "Job to build docker images"
  fileName        = "terraform/pipeline/gcp/build_images_pipeline/cloudbuild.yaml"
  git_branch_name = "main"
  git_repo_name   = "github_jagadeeswarvenkatasubbu_tan5-infrastructure"
  name            = "buildimagesjob"
  included_files  = ["terraform/pipeline/gcp/build_images_pipeline/**"]
}

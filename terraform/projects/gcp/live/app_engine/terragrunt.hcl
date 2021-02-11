terraform {
  source = "./../../../module/gcp/cloud_build"
}

include {
  path = find_in_parent_folders()
}

inputs = {}

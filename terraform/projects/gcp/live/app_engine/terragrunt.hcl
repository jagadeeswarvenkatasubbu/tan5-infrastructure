terraform {
  source = "./../../../../module/gcp/app_engine"
}

include {
  path = find_in_parent_folders()
}

inputs = {}

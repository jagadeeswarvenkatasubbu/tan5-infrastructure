terraform {
  source = "./../../../module/gcp/project"
}

include {
  path = find_in_parent_folders()
}

inputs = merge({
  new_project_id    = "${local.project_id}"
  new_project_name  = "${local.project_id}"
})

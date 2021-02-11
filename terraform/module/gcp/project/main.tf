resource "google_project" "default" {
  name       = var.new_project_name
  project_id = var.new_project_id
}
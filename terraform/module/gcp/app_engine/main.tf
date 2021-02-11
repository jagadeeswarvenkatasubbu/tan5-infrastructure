resource "google_app_engine_application" "default" {
  project     = var.project_id
  location_id = var.location
}

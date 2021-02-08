resource "google_storage_bucket" "default" {
  name          = var.bucket_name
  location      = var.location
  project       = var.project_id
  storage_class = var.storage_class

  versioning {
    enabled = var.versioning_enabled
  }

}

variable "bucket_name" {}
variable "project_id" {}
variable "versioning_enabled" {
  default = true
}
variable "storage_class" {
  default = "STANDARD"
}
variable "location" {
  default = "AUSTRALIA-SOUTHEAST1"
}
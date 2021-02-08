
module "storage_account" {
  source = "./../../../module/gcp/storage_bucket"
  bucket_name = "terraform-tfstate-storage-bucket"
  project_id = var.project_id
}

output "storage_account" {
  value = module.storage_account.storage_account
}
variable "git_branch_name" {}
variable "git_repo_name" {}
variable "description" {}
variable "name" {}
variable "fileName" {}
variable "included_files" {
  default = []
  type = list(string)
}
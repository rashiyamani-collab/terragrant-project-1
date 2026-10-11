include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../../../modules/static-site"
}

inputs = {
  bucket_name   = "my-react-app-prod-site-unique123"
  force_destroy = false
  tags = {
    Environment = "prod"
    ManagedBy   = "OpenTofu-Terragrunt"
  }
}

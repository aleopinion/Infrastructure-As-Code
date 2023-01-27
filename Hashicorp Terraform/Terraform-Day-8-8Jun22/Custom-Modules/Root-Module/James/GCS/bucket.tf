# Developer James Root Module
module "developer_bucket" {
  source        = "../../../child-module/gcs"
  bucket_name   = var.bucket_name
  location      = var.location
  force_destroy = var.force_destroy
  storage_class = var.storage_class
  project_id    = var.project_id

}


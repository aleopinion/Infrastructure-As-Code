# Developer James Root Module - GCE Instance

module "developer_vm" {
  source              = "../../../child-module/gce"
  name                = var.name
  machine_type        = var.machine_type
  zone                = var.zone
  image               = var.image
  network             = var.network 
}

/*
  name         = "opinion-dev"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  image        = "debian-cloud/debian-9"
  network      = "default"
  */
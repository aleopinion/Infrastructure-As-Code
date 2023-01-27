resource "google_compute_instance" "opinion-dev" {
  name         = var.dev-gce-Instance-name["dr"]
  machine_type = var.dev-gce-instance-machine-type["e2medium"]
  zone         = var.dev-gce-instance-az["usc1f"]

  boot_disk {
    initialize_params {
      image = var.dev-gce-instance-machine-image["debian11"]
    }
  }

  network_interface {
    network = var.dev-gce-instnace-network["default"]

    access_config {
      // Ephemeral public IP
    }
  }
  labels = local.dev_labels
}

resource "google_compute_instance" "opinion-uat" {
  name         = var.dev-gce-Instance-name["uat"]
  machine_type = var.dev-gce-instance-machine-type["e2medium"]
  zone         = var.dev-gce-instance-az["usc1a"]

  boot_disk {
    initialize_params {
      image = var.dev-gce-instance-machine-image["centos7"]
    }
  }

  network_interface {
    network = var.dev-gce-instnace-network["default"]

    access_config {
      // Ephemeral public IP
    }
  }
  labels = local.uat_labels
}


/*
  name         = "opinion-dev"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  image        = "debian-cloud/debian-9"
  network      = "default"
  */
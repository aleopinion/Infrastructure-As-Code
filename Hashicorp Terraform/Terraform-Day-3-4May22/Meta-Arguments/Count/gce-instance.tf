resource "google_compute_instance" "opinion-dev" {
  name         = "opinion-dev-${count.index}"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  count        = "4"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}
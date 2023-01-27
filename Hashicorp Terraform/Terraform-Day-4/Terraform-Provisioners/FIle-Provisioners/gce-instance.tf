resource "google_compute_instance" "opinion-dev" {
  name         = "opinion-dev"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
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

  # Remote-exec provisioner (Creation-Time Provisioner - Triggered during Resource creation)
  connection {
    type        = "ssh"
    user        = "aleop"
    password    = ""
    host        = self.network_interface[0].access_config[0].nat_ip
    private_key = file("terraform-private-ssh-key")
  }

  # Copy the file to /tmp/
  provisioner "file" {
    content     = "C:/Users/aleop/Documents/id_rsa"
    destination = "/tmp/file.log"
  }

  /*# Copies the file-copy.html file to /tmp/
  provisioner "file" {
    content     = "C:/Users/aleop/Documents/opi"
    destination = "/tmp"
  }*/
}
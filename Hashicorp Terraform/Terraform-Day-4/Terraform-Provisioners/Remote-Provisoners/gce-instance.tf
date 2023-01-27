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
  connection {
    type     = "ssh"   #SSH for Linux, winrm for Windows
    user     = "aleop"  #The user that was used to create the rsa keys
    password = ""      #No password since we are making use of our private rsa key; the public key is given to meta-data as project wide key
    host     = self.network_interface[0].access_config[0].nat_ip #The nat_ip is what gives you the physical value of the external IP that Terraform will use to gain access
    private_key = "${file("terraform-private-ssh-key")}"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install apache2 -y",
      "sudo systemctl start apache2"
    ]
  }
}
resource "google_compute_instance" "opinion-dev" {
  name         = var.dev-gce-Instance-name
  machine_type = var.dev-gce-instance-machine-type
  zone         = var.dev-gce-instance-az
  boot_disk {
    initialize_params {
      image = var.dev-gce-instance-machine-image
    }
  }
  network_interface {
    network = var.dev-gce-instnace-network

    access_config {
      // Ephemeral public IP
    }
  }
}





/*Variables are used to remove hard-coded values in the resource configuration file so 
  that we can simplify and bring some flexibility to the deployment process*/

#Resource Argyuments and their values that we are creating our variables around 
/*  
    name         = "opinion-dev"
    machine_type = "e2-medium"
    zone         = "us-central1-a"
    image        = "debian-cloud/debian-11"
    network      = "default"               
*/
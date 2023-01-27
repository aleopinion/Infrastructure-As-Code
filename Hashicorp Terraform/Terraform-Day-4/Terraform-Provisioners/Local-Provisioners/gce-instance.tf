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
   # local-exec provisioner (Creation-Time Provisioner - Triggered during Create Resource)
	provisioner "local-exec" {
	  command = "echo ${google_compute_instance.opinion-dev.network_interface[0].access_config[0].nat_ip} >> creation-time-ip-info.txt"
	  working_dir = "local-exec-output-files/" #The directory to store the outputf files
  # on_failure = continue
	}
	
	# local-exec provisioner - (Destroy-Time Provisioner - Triggered during Destroy Resource)
  provisioner "local-exec" {
	  when    = destroy
	  command = "echo Destroy-time provisioner Instanace Destroyed at `date` >> destroy-time.txt"
	  working_dir = "local-exec-output-files/"  #The directory to store the outputf files
	} 
}
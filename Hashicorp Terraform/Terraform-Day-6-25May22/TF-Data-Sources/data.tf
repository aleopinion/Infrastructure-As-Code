#VPC Data Block
data "google_compute_network" "custom-vpc-data-source" {
  name = "custom-vpc"
}

#Web Server Subnet Block
data "google_compute_subnetwork" "web-server-sn-data-source" {
  name = "web-server-sn"
  region = "us-central1"
}
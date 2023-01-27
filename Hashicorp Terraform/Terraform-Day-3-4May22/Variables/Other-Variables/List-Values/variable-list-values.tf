#  List of Dev Engineers Virtual Machine Names
variable "dev-gce-Instance-name" {
  type = list(string)
  default = [ "opinion-dev-vm", "clara-dev-vm", "john-dev-vm", "mike-dev-vm", "ben-dev-vm" ]
}
#  List of Machine Types
variable "dev-gce-instance-machine-type" {
  type = list(string)
  default = [ "e2-small", "e2-medium", "e2-micro", "e2-standard-2", "n2-standard-2" ]
}
#  List of Availability Zones
variable "dev-gce-instance-az" {
  type = list(string)
  default = [ "us-central1-a", "us-central1-b", "us-central1-c", "us-central1-f" ]
}
#  List of Machine Image
variable "dev-gce-instance-machine-image" {
  type = list(string)
  default = [ "debian-cloud/debian-11", "centos-cloud/centos-7", "fedora-cloud/fedora-35" ]
}
#  List of VPC Network
variable "dev-gce-instnace-network" {
  type = list(string)
  default = [ "default" ]
}

/*
  name         = "opinion-dev"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  image        = "debian-cloud/debian-9"
  network      = "default"
  */
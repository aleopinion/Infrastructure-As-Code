# List Environments For Map values
variable "dev-gce-Instance-name" {
  type = map(string)
  default = {
    dev     = "opinion-dev-vm"
    uat     = "opinion-uat-vm"
    preprod = "opinion-pre-prod-vm"
    prod    = "opinion-prod-vm"
    dr      = "opinion-dr-vm"
  }
}
# List of Matchine Types for map values
variable "dev-gce-instance-machine-type" {
  type = map(string)
  default = {
    e2small  = "e2-small"
    e2medium = "e2-medium"
    e2micro  = "e2-micro"
    e2std    = "e2-standard-2"
    n2std    = "n2-standard-2"
  }
}
# List of Availability Zones for map values
variable "dev-gce-instance-az" {
  type = map(string)

  default = {
    usc1a = "us-central1-a"
    usc1b = "us-central1-b"
    usc1c = "us-central1-c"
    usc1f = "us-central1-f"
  }
}
#  List of Machine Image for map values
variable "dev-gce-instance-machine-image" {
  type = map(string)

  default = {
    debian11 = "debian-cloud/debian-11"
    centos7 = "centos-cloud/centos-7"
  }
}

#  List of Network for map values
variable "dev-gce-instnace-network" {
  type = map(string)

  default = {
    default = "default"
  }

}




/*
  name         = "opinion-dev"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  image        = "debian-cloud/debian-9"
  network      = "default"
  */


 
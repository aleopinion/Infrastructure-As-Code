# Dev Instance Name
variable "dev-gce-instance-name" {
  default = "opinion-dev"
}

# Dev Instance Machine Type
variable "dev-gce-instance-machine-type" {
  default = "e2-medium"
}

# Dev Instance Availability Zone - AZ
variable "dev-gce-instance-az" {
  default = "us-central1-f"
}

# Dev Instance Machine Image
variable "dev-gce-instance-machine-image" {
  default = "debian-cloud/debian-11"
}

#Dev Instance Network
variable "dev-gce-instnace-network" {
  default = "default"
}


/*Variables are used to remove hard-coded values in the resource configuration file so 
  that we can simplify and bring some flexibility to the deployment process*/

#Resource Argyuments and their values that we are creating our variables around 
/*  name         = "opinion-dev"
    machine_type = "e2-medium"
    zone         = "us-central1-a"
    image        = "debian-cloud/debian-11"
    network      = "default"
*/
#1 Dev Instance Name
variable "name" {  
    type = string
    default = "james-vm"
}

#2 Dev Instance Machine Type
variable "machine_type" {  
    type = string
    default = "e2-medium"
}

#3 Dev Instance Availability Zone - AZ
variable "zone" {
    type = string
    default = "us-central1-a"
}

#4 Dev Instance Machine Image
variable "image" {
    type = string  
    default = "debian-cloud/debian-11"
}

#5 Dev Instance Network
variable "network" { 
    type = string
    default = "default" 
}

#6 Bucket Project ID
variable "project_id" {
        description = "Provide development bucket project id"
        type        = string
        default     = "inductive-vista-369105"
}

#7 Developer Bucket Region
variable "region" {
        description = "Provide development bucket region"
        type        = string
        default     = "us-central1"
}

/*
  name         = "opinion-dev"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  image        = "debian-cloud/debian-9"
  network      = "default"
  */
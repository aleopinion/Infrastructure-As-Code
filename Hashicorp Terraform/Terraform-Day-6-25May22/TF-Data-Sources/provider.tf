#Declaring the Provider Block / configuration
provider "google" {
  project     = "inductive-vista-369105"
  region      = "us-central1"            #Region where you want to create the reources
}


/*terraform {
  required_version = "1.3.6"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.46.0"
    }
  }
}

provider "google" {
  project     = "my-project-id"
  region      = "us-central1"
}*/